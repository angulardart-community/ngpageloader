// Copyright 2017 Google Inc. All rights reserved.
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'dart:math';

import 'package:ngpageloader/core.dart' as core;
import 'package:ngpageloader/pageloader.dart';
import 'package:webdriver/async_core.dart' as async_wd;
import 'package:webdriver/sync_core.dart' as sync_wd;

import 'webdriver_finder.dart';
import 'webdriver_iterators.dart';
import 'webdriver_page_utils.dart';

/// Implements [PageLoaderElement] for WebDriver test environments.
///
/// Internally, this operates using lazy semantics, resolving the underlying
/// [sync_wd.WebElement]s only when some DOM interaction is requested. Resolved
/// elements are cached until WebDriver indicates they are stale, at which point
/// an attempt to re-resolve the element(s) is made.
class WebDriverPageLoaderElement implements PageLoaderElement {
  final sync_wd.WebDriver _driver;
  late WebDriverPageUtils _utils;
  WebDriverPageLoaderElement? _parentElement;
  sync_wd.WebElement? _cachedElement;

  Finder? _finder;
  var _filters = <Filter>[];
  var _checkers = <Checker>[];
  var _listeners = <PageLoaderListener>[];

  @override
  String get id => _single.id;

  /// Constructs an element without context. Corresponds to the global context,
  /// i.e. the root HTML node.
  WebDriverPageLoaderElement(this._driver)
      : _utils = WebDriverPageUtils(_driver),
        _cachedElement = null,
        _finder = null,
        _parentElement = null {
    // assert(_driver != null);
  }

  /// Constructs an element from a [WebElement].
  WebDriverPageLoaderElement.createFromElement(sync_wd.WebElement element)
      : _driver = element.driver {
    _utils = WebDriverPageUtils(_driver);
    _parentElement = null;
    _cachedElement = element;
    _finder = WebElementFinder(element);
  }

  /// Creates a new element, using the current element as the parent context
  /// for the newly created element.
  @override
  WebDriverPageLoaderElement createElement(
      Finder finder, List<Filter> filters, List<Checker> checkers) {
    return WebDriverPageLoaderElement(_driver)
      .._finder = finder
      .._filters = filters
      .._checkers = checkers
      .._listeners = _listeners
      .._parentElement = this;
  }

  /// Creates a new iterable, using the current element as the parent context
  /// for the newly created iterable.
  @override
  WebDriverPageElementIterable createIterable(
          Finder finder, List<Filter> filters, List<Checker> checkers) =>
      WebDriverPageElementIterable(WebDriverPageLoaderElement(_driver)
        .._finder = finder
        .._filters = filters
        .._checkers = checkers
        .._listeners = _listeners
        .._parentElement = this);

  /// Create a new list using the current element as the parent context.
  @override
  List<PageLoaderElement> createList(
      Finder finder, List<Filter> filter, List<Checker> checkers) {
    final rootElement = createElement(finder, filter, checkers);
    final createdList = (rootElement.elements)
        .map((elem) => WebDriverPageLoaderElement.createFromElement(elem))
        .toList();
    createdList.forEach((elem) => elem.addListeners(_listeners));
    return createdList;
  }

  @override
  void addListeners(List<PageLoaderListener> x) {
    _listeners.addAll(x);
  }

  @override
  List<PageLoaderListener> get listeners => _listeners;

  // Quick cast from WebElement; useful for applying [Filter]s and [Checker]s.
  WebDriverPageLoaderElement._castFromElement(sync_wd.WebElement element)
      : _cachedElement = element,
        _driver = element.driver;

  @override
  void addCheckers(List<Checker> checkers) {
    _checkers.addAll(checkers);
  }

  @override
  WebDriverPageUtils get utils => _utils;

  sync_wd.WebDriver get driver => _driver;

  @override
  async_wd.SearchContext get context => contextSync.asyncContext;

  /// Needed to power mouse actions.
  @override
  sync_wd.SearchContext get contextSync => _single;

  /// Resolves the elements, throwing an exception if the # elements != 1.
  sync_wd.WebElement get _single {
    if (_cachedElement != null) {
      return _cachedElement!;
    }

    final elems = elements;
    if (elems.length != 1) {
      throw SinglePageObjectException(this, elems.length);
    }
    _cachedElement = elems[0];
    return _cachedElement!;
  }

  /// Returns all elements resolved.
  List<sync_wd.WebElement> get elements {
    sync_wd.WebElement base;
    if (_parentElement == null) {
      final root = _driver.findElements(sync_wd.By.tagName('html')).toList();
      if (root.isEmpty) {
        throw PageLoaderException('Could not find HTML tag at root');
      }
      if (root.length > 1) {
        throw PageLoaderException('Found multiple HTML tags');
      }
      base = root[0];
    } else {
      base = _parentElement!._single;
    }

    Iterable<sync_wd.WebElement> elements;
    if (_finder == null) {
      elements = [_cachedElement ?? base];
    } else if (_finder is ContextFinder) {
      elements = (_finder as ContextFinder)
          .findElements(_parentElement!)
          .map((p) => p.contextSync);
    } else if (_finder is WebElementFinder) {
      elements = [(_finder as WebElementFinder).element];
    } else if (_finder is CssFinder) {
      elements = base
          .findElements(
              sync_wd.By.cssSelector((_finder as CssFinder).cssSelector))
          .toList();
    } else {
      throw 'Unknown Finder type, ${_finder.runtimeType}';
    }

    // Filter/Checker API is based on PageLoaderElements; casting for this.
    final tempElements = elements
        .map((e) => WebDriverPageLoaderElement._castFromElement(e))
        .toList();
    final filteredElements =
        core.applyFiltersAndChecks(tempElements, _filters, _checkers);
    return filteredElements
        .map((e) => (e as WebDriverPageLoaderElement)._cachedElement!)
        .toList();
  }

  @override
  String toString() => _finder == null
      ? _parentElement.toString()
      : 'Element selected by $_finder,' +
          (_filters.isNotEmpty ? ' filtered by $_filters,' : '') +
          (_checkers.isNotEmpty ? ' checked with $_checkers,' : '') +
          ' in:\n${getOuterHtml(_parentElement ?? utils.root)}';

  @override
  String toStringDeep() =>
      "<$name>\n\nHTML:\n${properties['outerHTML']}\n\n$this";

  @override
  WebDriverPageLoaderElement get shadowRoot => throw 'not implemented';

  @override
  List<PageLoaderElement> get shadowRootChildren => throw 'not implemented';

  // We could incrementally clear until we find a web element that's still
  // good, but that's 50ms min for each check. Instead we clear the whole chain.
  void _clearCache() {
    WebDriverPageLoaderElement? elem = this;
    while (elem != null) {
      elem._cachedElement = null;
      elem = elem._parentElement;
    }
  }

  T _retryWhenStale<T>(core.MethodToRetry<T> method) =>
      core.staleElementWrapper(method, _clearCache, _isStaleElementException);

  @override
  String get innerText => _retryWhenStale(() =>
      (_driver.execute('return arguments[0].textContent;', [_single]) as String)
          .trim());

  @override
  String get visibleText {
    if (!displayed) {
      scrollIntoViewCentered();
    }

    return _retryWhenStale(() => _single.text);
  }

  @override
  String get name => _retryWhenStale(() => _single.name);

  @override
  PageLoaderAttributes get attributes =>
      _retryWhenStale(() => _ElementAttributes(_single));

  @override
  PageLoaderAttributes get seleniumAttributes => attributes;

  @override
  PageLoaderAttributes get properties =>
      _retryWhenStale(() => _ElementProperties(_single));

  @override
  PageLoaderAttributes get computedStyle =>
      _retryWhenStale(() => _ElementComputedStyle(_single));

  @override
  PageLoaderAttributes get style => _ElementStyle(this);

  @override
  bool get displayed => _retryWhenStale(() => _single.displayed);

  @override
  List<String> get classes {
    final classAttr = attributes['class'];
    if (classAttr != null && classAttr != '') {
      return classAttr.split(' ');
    }
    return <String>[];
  }

  @override
  bool get isFocused => _retryWhenStale(() => _single == _driver.activeElement);

  @override
  bool get exists {
    final count = elements.length;
    if (count == 1) {
      return true;
    } else if (count == 0) {
      return false;
    }
    throw PageLoaderException('Found $count elements on call to exists', this);
  }

  @override
  Rectangle get offset {
    final rect = _retryWhenStale<Map?>(() => _driver.execute('''return {
          left: arguments[0].offsetLeft,
          top: arguments[0].offsetTop,
          width: arguments[0].offsetWidth,
          height: arguments[0].offsetHeight
        }''', [_single]))!;
    return Rectangle<num>(
        rect['left'], rect['top'], rect['width'], rect['height']);
  }

  @override
  Rectangle getBoundingClientRect() {
    final rect = _retryWhenStale<Map?>(() => _driver
        .execute('return arguments[0].getBoundingClientRect();', [_single]))!;
    return Rectangle<num>(
        rect['left'], rect['top'], rect['width'], rect['height']);
  }

  @override
  List<WebDriverPageLoaderElement> getElementsByCss(String selector) =>
      _retryWhenStale(() => _single
          .findElements(sync_wd.By.cssSelector(selector))
          .map((elem) => WebDriverPageLoaderElement.createFromElement(elem))
          .map((elem) => elem..addListeners(listeners))
          .toList());

  @override
  WebDriverPageLoaderElement byTag(String tagName) =>
      getElementsByCss(tagName).single;

  /// WebDriver `clear` spec always performs a focus event and a blur event,
  /// which contradict with Pageloader `clear` API.
  /// Instead of using the `clear` API, we send a CTRL-A, then Backspace key and
  /// an empty string.
  @override
  Future<Null> clear({bool focusBefore = true, bool blurAfter = true}) async =>
      _retryWhenStale(() async {
        if (focusBefore) await focus();
        _single.driver.keyboard.sendChord([sync_wd.Keyboard.control, 'a']);
        _single.driver.keyboard.sendChord([sync_wd.Keyboard.backSpace]);

        // Some elements do not support `back space`, and some elements'
        // [innerText] is detached from themselves, so we send an empty string
        // in case the above method does not work.
        _single.driver.keyboard.sendChord([sync_wd.Keyboard.control, 'a']);
        _single.sendKeys('');
        if (blurAfter) await blur();
      });

  // WebDriver does not use [clickOption] at the moment
  @override
  Future<Null> click({ClickOption? clickOption}) async {
    if (clickOption != null) {
      throw UnsupportedError(
          'WebDriver click() does not support `clickOption` parameter.');
    }

    if (!displayed) {
      await scrollIntoViewCentered();
    }

    // If the click fails because of ElementClickInterceptedException, it may be
    // because the element is not within viewport.
    // So we can try again after moving the element into the center of page.
    try {
      _retryWhenStale<void>(() => _single.click());
    } catch (elementClickInterceptedException) {
      await scrollIntoViewCentered();
      _retryWhenStale<void>(() => _single.click());
    }
  }

  @override
  Future<void> clickOutside() async {
    if (!exists || !displayed) return;

    final rect = getBoundingClientRect();
    _retryWhenStale<void>(() {
      final bodyElement = _utils.byTag('body');
      final bodyRect = bodyElement.getBoundingClientRect();
      if (!rect.intersects(bodyRect)) {
        // No intersection. Just click the body which is outside of [_single].
        bodyElement.click();
        return;
      }

      // Find a [Point] that is not in the current element.
      final point = <Point<num>?>[
        bodyRect.topLeft,
        bodyRect.topRight,
        bodyRect.bottomLeft,
        bodyRect.bottomRight
      ].firstWhere((p) => !rect.containsPoint(p!), orElse: (() => null));

      if (point != null) {
        _utils.driver.mouse.moveTo(
            element: bodyElement.contextSync as sync_wd.WebElement?,
            xOffset: point.x.toInt() - (bodyRect.left as int),
            yOffset: point.y.toInt() - (bodyRect.top as int));
        _utils.driver.mouse.click();
      } else {
        throw PageLoaderException(
            'Could not click outside of the current element [$this].'
            ' It is because it covers the whole <body>.');
      }
    });
  }

  @override
  Future<void> scroll({int? x, int? y}) async =>
      _retryWhenStale(() => _driver.execute(
          'arguments[0].scrollLeft += ${x ?? 0};'
          'arguments[0].scrollTop += ${y ?? 0};'
          'arguments[0].dispatchEvent(new Event("scroll"));',
          [_single]));

  @override
  Future<void> scrollIntoView() async {
    try {
      await _retryWhenStale(() =>
          _driver.execute('arguments[0].scrollIntoViewIfNeeded()', [_single]));
    } on sync_wd.JavaScriptException {
      await _retryWhenStale(
          () => _driver.execute('arguments[0].scrollIntoView()', [_single]));
    }
  }

  Future<void> scrollIntoViewCentered() async {
    await _retryWhenStale(() => _driver
        .execute('arguments[0].scrollIntoView({block:"center"})', [_single]));
  }

  @override
  Future<Null> type(String keys,
          {bool focusBefore = true, bool blurAfter = true}) async =>
      _retryWhenStale(() async {
        if (focusBefore) await focus();
        _single.sendKeys(keys);
        if (blurAfter) await blur();
      });

  /// 'typeSequence' for Webdriver does not allow custom combination of
  /// 'keydown'/'keypress'/'keyup' events. Instead, all three are automatically
  /// sent in order for each keyboard button.
  ///
  /// If a user sends: ['a' keydown, 'a' keypress], this is translated to:
  /// ['a' keydown, 'a' keypress, 'a' keyup] x 2
  /// for each instance of 'a' keyX event, we send all three events.
  @override
  Future<void> typeSequence(PageLoaderKeyboard keys) async =>
      _retryWhenStale(() async => _typeSequence(keys));

  Future<void> _typeSequence(PageLoaderKeyboard keys) async {
    var text = '';
    for (var event in keys.uniqueEvents) {
      if (event.isSpecial) {
        text += _specialKeyToString[event.specialKey]!;
      } else {
        text += event.key;
      }
    }
    _single.sendKeys(text);
  }

  @override
  Future<Null> focus() async => _retryWhenStale(
      () => _driver.execute('arguments[0].focus();', [_single]));

  @override
  Future<Null> blur() async =>
      _retryWhenStale(() => _driver.execute('arguments[0].blur();', [_single]));

  @override
  Future<void> dispatchCustomEvent(String name, {Object? detail}) async =>
      _retryWhenStale(() => _driver.execute('''arguments[0].dispatchEvent(
            new CustomEvent(arguments[1], { detail: JSON.parse(arguments[2]) }));''',
          [_single, name, json.encode(detail)]));

  @override
  String testCreatorGetters() => json.encode({
        'innerText': 'String',
        'visibleText': 'String',
        'displayed': 'bool',
        'isFocused': 'bool',
        'exists': 'bool',
        'classes': 'List<String>'
      });

  @override
  String testCreatorMethods() => json.encode({
        'clear': [
          {'name': 'focusBefore', 'kind': 'named', 'type': 'bool'},
          {'name': 'blurAfter', 'kind': 'named', 'type': 'bool'}
        ],
        'click': [
          {'name': 'clickOption', 'kind': 'named', 'type': 'ClickOption'}
        ],
        'clickOutside': [],
        'scroll': [
          {'name': 'x', 'kind': 'named', 'type': 'int'},
          {'name': 'y', 'kind': 'named', 'type': 'int'}
        ],
        'scrollIntoView': [],
        'type': [
          {'name': 'keys', 'kind': 'required', 'type': 'String'},
          {'name': 'focusBefore', 'kind': 'named', 'type': 'bool'},
          {'name': 'blurAfter', 'kind': 'named', 'type': 'bool'}
        ],
        'focus': [],
        'blur': [],
        'dispatchCustomEvent': [
          {'name': 'name', 'kind': 'required', 'type': 'String'},
          {'name': 'detail', 'kind': 'named', 'type': 'Object'},
        ],
      });
}

// Hack to support JSON and W3c style exception handling.
bool _isStaleElementException(Object e) =>
    e.toString().contains('StaleElementReferenceException');

class _ElementAttributes extends PageLoaderAttributes {
  final sync_wd.WebElement _node;

  _ElementAttributes(this._node);

  @override
  String? operator [](String name) => _node.attributes[name];
}

class _ElementComputedStyle extends PageLoaderAttributes {
  final sync_wd.WebElement _node;

  _ElementComputedStyle(this._node);

  @override
  String? operator [](String name) => _node.cssProperties[name];
}

// Retrieves properties via Javascript.
class _ElementProperties extends PageLoaderAttributes {
  final sync_wd.WebElement _node;

  _ElementProperties(this._node);

  @override
  String? operator [](String name) => _node.properties[name];
}

// Retrieves style via JavaScript '.style'.
class _ElementStyle extends PageLoaderAttributes {
  final WebDriverPageLoaderElement _node;

  _ElementStyle(this._node);

  @override
  String? operator [](String name) => core.staleElementWrapper(
      () => _node._driver.execute(
          'return arguments[0].style.${_cssPropName(name)};', [_node._single]),
      _node._clearCache,
      _isStaleElementException);
}

/// Convert hyphenated-properties to camelCase.
String _cssPropName(String name) => name.splitMapJoin(RegExp(r'-(\w)'),
    onMatch: (m) => m.group(1)!.toUpperCase(), onNonMatch: (m) => m);

const _specialKeyToString = {
  PageLoaderSpecialKey.backSpace: sync_wd.Keyboard.backSpace,
  PageLoaderSpecialKey.tab: sync_wd.Keyboard.tab,
  PageLoaderSpecialKey.enter: sync_wd.Keyboard.enter,
  PageLoaderSpecialKey.shift: sync_wd.Keyboard.shift,
  PageLoaderSpecialKey.control: sync_wd.Keyboard.control,
  PageLoaderSpecialKey.alt: sync_wd.Keyboard.alt,
  PageLoaderSpecialKey.pause: sync_wd.Keyboard.pause,
  PageLoaderSpecialKey.escape: sync_wd.Keyboard.escape,
  PageLoaderSpecialKey.pageUp: sync_wd.Keyboard.pageUp,
  PageLoaderSpecialKey.pageDown: sync_wd.Keyboard.pageDown,
  PageLoaderSpecialKey.end: sync_wd.Keyboard.end,
  PageLoaderSpecialKey.home: sync_wd.Keyboard.home,
  PageLoaderSpecialKey.left: sync_wd.Keyboard.left,
  PageLoaderSpecialKey.up: sync_wd.Keyboard.up,
  PageLoaderSpecialKey.right: sync_wd.Keyboard.right,
  PageLoaderSpecialKey.down: sync_wd.Keyboard.down,
  PageLoaderSpecialKey.insert: sync_wd.Keyboard.insert,
  PageLoaderSpecialKey.delete: sync_wd.Keyboard.deleteChar,
  PageLoaderSpecialKey.f1: sync_wd.Keyboard.f1,
  PageLoaderSpecialKey.f2: sync_wd.Keyboard.f2,
  PageLoaderSpecialKey.f3: sync_wd.Keyboard.f3,
  PageLoaderSpecialKey.f4: sync_wd.Keyboard.f4,
  PageLoaderSpecialKey.f5: sync_wd.Keyboard.f5,
  PageLoaderSpecialKey.f6: sync_wd.Keyboard.f6,
  PageLoaderSpecialKey.f7: sync_wd.Keyboard.f7,
  PageLoaderSpecialKey.f8: sync_wd.Keyboard.f8,
  PageLoaderSpecialKey.f9: sync_wd.Keyboard.f9,
  PageLoaderSpecialKey.f10: sync_wd.Keyboard.f10,
  PageLoaderSpecialKey.f11: sync_wd.Keyboard.f11,
  PageLoaderSpecialKey.f12: sync_wd.Keyboard.f12,
  PageLoaderSpecialKey.meta: sync_wd.Keyboard.meta,
};
