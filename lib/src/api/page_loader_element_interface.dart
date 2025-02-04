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

library pageloader.api.page_loader_element_interface;

import 'dart:convert';
import 'dart:math';

import 'annotation_interfaces.dart';
import 'iterable_interfaces.dart';
import 'page_loader_click_option.dart';
import 'page_loader_keyboard.dart';
import 'page_loader_listener.dart';
import 'page_loader_source_interface.dart';
import 'page_utils_interface.dart';

/// Base class for interacting with raw DOM elements, e.g. buttons, input
/// fields, etc.
abstract class PageLoaderElement extends PageLoaderSource {
  /// Creates a new element based on the current context plus the passed
  /// [Finder], [Filter]s, and [Checker]s.
  PageLoaderElement createElement(
      Finder finder, List<Filter> filter, List<Checker> checkers);

  /// Creates a new iterable based on the current context plus the passed
  /// [Finder], [Filter]s, and [Checker]s.
  PageElementIterable createIterable(
      Finder finder, List<Filter> filter, List<Checker> checkers);

  /// Creates a new list based on the current context plus the passed
  /// [Finder], [Filter]s, and [Checker]s.
  List<PageLoaderElement> createList(
      Finder finder, List<Filter> filter, List<Checker> checkers);

  /// Adds additional [Checker]s to the list already maintained by the element.
  void addCheckers(List<Checker> checkers);

  /// Adds listeners to element.
  void addListeners(List<PageLoaderListener> listeners);

  /// Gets registered listeners.
  List<PageLoaderListener> get listeners;

  /// The context of this PageLoaderElement. This should only be used if
  /// this API does not provide desired functionality; otherwise usage should
  /// be avoided.
  ///
  /// This value should be casted. Casting should occur in test Dart files
  /// and should not be occur in PageObject files.
  dynamic get context;

  /// Synchronously returns the context of this PageLoaderElement. This should
  /// only be used if this API does not provide desired functionality;
  /// otherwise usage should be avoided.
  ///
  /// This value should be casted. Casting should occur in test Dart files
  /// and should not be occur in PageObject files.
  dynamic get contextSync;

  /// Returns an instance of [PageUtils].
  ///
  /// Note the instances returned may not be object equal across invocations.
  PageUtils get utils;

  /// The shadow root hosted by this element.
  PageLoaderElement get shadowRoot;

  /// The children of the shadow root hosted by this element.
  List<PageLoaderElement> get shadowRootChildren;

  /// Unique ID to identify the element.
  ///
  /// This is not related to the HTML id attribute.
  String get id;

  /// The inner content of this element.
  ///
  /// This should return the value of [`<element>.innerText`](
  /// https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/innerText),
  /// but behaviour may vary for the different pageloader implementations.
  String get innerText;

  /// Visible text within this element.
  ///
  /// This should return the value of webdriver's [`getText()`](
  /// http://seleniumhq.github.io/selenium/docs/api/java/org/openqa/selenium/WebElement.html#getText--),
  /// but behaviour may vary for the different pageloader implementations.
  String get visibleText;

  /// The tag name of the node represented by this element.
  String get name;

  /// Attributes associated with this element.
  PageLoaderAttributes get attributes;

  /// Attributes associated with this element.
  ///
  /// Deprecated: use [attributes].
  @Deprecated("Use the [attributes] getter.")
  PageLoaderAttributes get seleniumAttributes;

  /// Attributes associated with this element.
  PageLoaderAttributes get properties;

  /// CSS properties of this element after applying the active stylesheets and
  /// resolving any basic computation, such as converting a percentage into an
  /// absolute length.
  PageLoaderAttributes get computedStyle;

  /// This element's inline style attributes.
  PageLoaderAttributes get style;

  /// Whether this element is displayed based on "display" style.
  bool get displayed;

  /// CSS classes associated with this element.
  List<String> get classes;

  /// Whether this element is focused.
  bool get isFocused;

  /// Whether this element exists on the page.
  bool get exists;

  /// The offset of this element relative to its parent.
  Rectangle get offset;

  /// The smallest bounding rectangle that encompasses this element's padding,
  /// scrollbar, and border.
  ///
  /// WebDriver only.
  Rectangle getBoundingClientRect();

  /// Returns the elements within this element that match the given CSS
  /// selector.
  List<PageLoaderElement> getElementsByCss(String selector);

  /// Note: all elements below here should remain asynchronous to allow
  /// component tests to function properly.

  /// Clears the text of this element, if possible (e.g. for text fields).
  ///
  /// [focusBefore] indicates whether to focus this element before clearing.
  /// [blurAfter] indicates whether to blur this element after clearing.
  Future<void> clear({bool focusBefore = true, bool blurAfter = true});

  /// Clicks on the element with [clickOption].
  /// [clickOption] is only used for HTML.
  Future<void> click({ClickOption? clickOption});

  /// Clicks outside of the current element.
  ///
  /// If the current element does not exist or is not displayed, do nothing.
  Future<void> clickOutside();

  /// Scrolls this element in x and/or y direction by pixels.
  ///
  /// ScrollOptions is currently not supported.
  /// https://developer.mozilla.org/en-US/docs/Web/API/Element/scroll
  Future<void> scroll({int? x, int? y});

  /// Scrolls this element into view.
  Future<void> scrollIntoView();

  /// Types [keys] into this element, if possible (e.g. for an input element).
  ///
  /// [focusBefore] indicates whether to focus this element before typing.
  /// [blurAfter] indicates whether to blur this element after typing.
  Future<void> type(String keys,
      {bool focusBefore = true, bool blurAfter = true});

  /// Types sequence of keyboard [keys] into element, if possible.
  ///
  /// Provides finer control on sequence of keyboard events being sent. This
  /// does NOT automatically focus before and after. HTML and Webdriver
  /// implementation are not identical; refer to their individual doc comments
  /// for more details.
  Future<void> typeSequence(PageLoaderKeyboard keys);

  /// Focuses the element.
  Future<void> focus();

  /// Blurs the element (= lose focus).
  Future<void> blur();

  /// Dispatches the [eventName] custom event on this element.
  ///
  /// If provided, [detail] is copied into the event.
  Future<void> dispatchCustomEvent(String eventName, {Object? detail});

  /// Gives a full description of the element for debugger.
  String toStringDeep();

  /// Gives all getters that can be used by Test Creator.
  String testCreatorGetters();

  /// Gives all unannotated methods that can be used by Test Creator.
  String testCreatorMethods();
}

/// Generic attributes interface, allowing bracket notation referencing.
abstract class PageLoaderAttributes {
  /// Returns the value of attribute '[name]'.
  String? operator [](String name);
}

// Ensures that the length of the element's 'outerHTML' is not too large;
// limit is ~50 KB in utf-16.
String getOuterHtml(PageLoaderElement? element) {
  if (element == null) {
    return 'null';
  }
  final elementString = element.properties['outerHTML']!;
  final bytes = utf8.encode(elementString);
  if (bytes.length > 50000) {
    return "(Length of Element's HTML DOM (${bytes.length}) is too "
        'long (>50 KB) to display)';
  }
  return elementString;
}
