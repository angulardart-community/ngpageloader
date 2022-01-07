// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.9

part of 'finders.dart';

// **************************************************************************
// PageObjectGenerator
// **************************************************************************

// ignore_for_file: unused_field, non_constant_identifier_names
// ignore_for_file: overridden_fields, annotate_overrides
// ignore_for_file: prefer_final_locals, deprecated_member_use_from_same_package

mixin $$Finders on Finders {
  /*late*/ PageLoaderElement $__root__;
  PageLoaderElement get $root => $__root__;
  Map<String, String> testCreatorGettersInFinders() {
    return {};
  }

  Map<String, List<Map<String, String /*?*/ >>> testCreatorMethodsInFinders() {
    return {};
  }

  dynamic testCreatorInvokeMethodInFinders(
      String methodName, List<dynamic> positionalArguments,
      [Map<Symbol, dynamic> /*?*/ namedArguments]) {
    if (methodName == 'element') {
      return element;
    }
    if (methodName == 'filtered') {
      return filtered;
    }
    if (methodName == 'checkTagPO') {
      return checkTagPO;
    }
    throw 'METHOD NOT FOUND. This method'
        ' failed to be generated during test creator codegen.';
  }

  Map<int, String Function(List<String>) /*?*/ > findChainInFinders(
      List<String> internalIds,
      [String action = 'default']) {
    var closestIndex = internalIds.length;
    String Function(List<String>) /*?*/ closestValue;
    try {
      var secretIndex = internalIds.indexOf(this.secret.id);
      if (secretIndex >= 0 && secretIndex < closestIndex) {
        closestIndex = secretIndex;
        closestValue = (_) =>
            'secret.${PageObject.defaultCode[action] ?? PageObject.defaultCode['default']}';
      }
    } catch (_) {
      // Ignored.
    }
    try {
      var checkTagPOElement = this.checkTagPO as dynamic;
      var checkTagPOIndex =
          internalIds.indexOf(checkTagPOElement.$__root__.id as String);
      if (checkTagPOIndex >= 0 && checkTagPOIndex < closestIndex) {
        closestIndex = checkTagPOIndex;
        closestValue = (ids) =>
            'checkTagPO.${checkTagPOElement.findChain(ids, action)}'
                .replaceAll(RegExp('\\.\$'), '');
      }
    } catch (_) {
      // Ignored.
    }
    try {
      var _secretIndex = internalIds.indexOf(this._secret.id);
      if (_secretIndex >= 0 && _secretIndex < closestIndex) {
        closestIndex = _secretIndex;
        closestValue = (_) =>
            '_secret.${PageObject.defaultCode[action] ?? PageObject.defaultCode['default']}';
      }
    } catch (_) {
      // Ignored.
    }
    try {
      var elementIndex = internalIds.indexOf(this.element.id);
      if (elementIndex >= 0 && elementIndex < closestIndex) {
        closestIndex = elementIndex;
        closestValue = (_) =>
            'element.${PageObject.defaultCode[action] ?? PageObject.defaultCode['default']}';
      }
    } catch (_) {
      // Ignored.
    }
    try {
      var filteredIndex = internalIds.indexOf(this.filtered.id);
      if (filteredIndex >= 0 && filteredIndex < closestIndex) {
        closestIndex = filteredIndex;
        closestValue = (_) =>
            'filtered.${PageObject.defaultCode[action] ?? PageObject.defaultCode['default']}';
      }
    } catch (_) {
      // Ignored.
    }
    return {closestIndex: closestValue};
  }

  PageLoaderElement get _secret {
    for (final __listener in $__root__.listeners) {
      __listener.startPageObjectMethod('Finders', '_secret');
    }
    final element = $__root__.createElement(ByCss('secret'), [], []);
    final returnMe = element;
    for (final __listener in $__root__.listeners) {
      __listener.endPageObjectMethod('Finders', '_secret');
    }
    return returnMe;
  }

  PageLoaderElement get element {
    for (final __listener in $__root__.listeners) {
      __listener.startPageObjectMethod('Finders', 'element');
    }
    final element = $__root__.createElement(ByCss('some-class'), [], []);
    final returnMe = element;
    for (final __listener in $__root__.listeners) {
      __listener.endPageObjectMethod('Finders', 'element');
    }
    return returnMe;
  }

  PageLoaderElement get filtered {
    for (final __listener in $__root__.listeners) {
      __listener.startPageObjectMethod('Finders', 'filtered');
    }
    final element = $__root__.createElement(ByCss('some-other-class'),
        [WithAttribute('also-with', 'this-attribute')], []);
    final returnMe = element;
    for (final __listener in $__root__.listeners) {
      __listener.endPageObjectMethod('Finders', 'filtered');
    }
    return returnMe;
  }

  CheckTagPO get checkTagPO {
    for (final __listener in $__root__.listeners) {
      __listener.startPageObjectMethod('Finders', 'checkTagPO');
    }
    final element = $__root__.createElement(ByTagName('check-tag-po'), [], []);
    final returnMe = CheckTagPO.create(element);
    for (final __listener in $__root__.listeners) {
      __listener.endPageObjectMethod('Finders', 'checkTagPO');
    }
    return returnMe;
  }
}

// ignore_for_file: unused_field, non_constant_identifier_names
// ignore_for_file: overridden_fields, annotate_overrides
// ignore_for_file: prefer_final_locals, deprecated_member_use_from_same_package

mixin $$CheckTagPO on CheckTagPO {
  /*late*/ PageLoaderElement $__root__;
  PageLoaderElement get $root => $__root__;
  Map<String, String> testCreatorGettersInCheckTagPO() {
    return {};
  }

  Map<String, List<Map<String, String /*?*/ >>>
      testCreatorMethodsInCheckTagPO() {
    return {};
  }

  dynamic testCreatorInvokeMethodInCheckTagPO(
      String methodName, List<dynamic> positionalArguments,
      [Map<Symbol, dynamic> /*?*/ namedArguments]) {
    if (methodName == 'toString') {
      return Function.apply(toString, positionalArguments, namedArguments);
    }
    throw 'METHOD NOT FOUND. This method'
        ' failed to be generated during test creator codegen.';
  }

  Map<int, String Function(List<String>) /*?*/ > findChainInCheckTagPO(
      List<String> internalIds,
      [String action = 'default']) {
    var closestIndex = internalIds.length;
    String Function(List<String>) /*?*/ closestValue;
    try {
      var _rootIndex = internalIds.indexOf(this._root.id);
      if (_rootIndex >= 0 && _rootIndex < closestIndex) {
        closestIndex = _rootIndex;
        closestValue = (_) =>
            '_root.${PageObject.defaultCode[action] ?? PageObject.defaultCode['default']}';
      }
    } catch (_) {
      // Ignored.
    }
    return {closestIndex: closestValue};
  }

  PageLoaderElement get _root {
    for (final __listener in $__root__.listeners) {
      __listener.startPageObjectMethod('CheckTagPO', '_root');
    }
    final element = $__root__;
    final returnMe = element;
    for (final __listener in $__root__.listeners) {
      __listener.endPageObjectMethod('CheckTagPO', '_root');
    }
    return returnMe;
  }
}

// ignore_for_file: unused_field, non_constant_identifier_names
// ignore_for_file: overridden_fields, annotate_overrides
// ignore_for_file: prefer_final_locals, deprecated_member_use_from_same_package

mixin $$FindersUsingMixin on FindersUsingMixin {
  /*late*/ PageLoaderElement $__root__;
  PageLoaderElement get $root => $__root__;
  Map<String, String> testCreatorGettersInFindersUsingMixin() {
    return {};
  }

  Map<String, List<Map<String, String /*?*/ >>>
      testCreatorMethodsInFindersUsingMixin() {
    return {};
  }

  dynamic testCreatorInvokeMethodInFindersUsingMixin(
      String methodName, List<dynamic> positionalArguments,
      [Map<Symbol, dynamic> /*?*/ namedArguments]) {
    throw 'METHOD NOT FOUND. This method'
        ' failed to be generated during test creator codegen.';
  }

  Map<int, String Function(List<String>) /*?*/ > findChainInFindersUsingMixin(
      List<String> internalIds,
      [String action = 'default']) {
    var closestIndex = internalIds.length;
    String Function(List<String>) /*?*/ closestValue;
    return {closestIndex: closestValue};
  }
}

// ignore_for_file: unused_field, non_constant_identifier_names
// ignore_for_file: overridden_fields, annotate_overrides
// ignore_for_file: prefer_final_locals, deprecated_member_use_from_same_package

mixin $$FindersMixin on FindersMixin {
  /*late*/ PageLoaderElement $__root__;
  PageLoaderElement get $root => $__root__;
  Map<String, String> testCreatorGettersInFindersMixin() {
    return {};
  }

  Map<String, List<Map<String, String /*?*/ >>>
      testCreatorMethodsInFindersMixin() {
    return {};
  }

  dynamic testCreatorInvokeMethodInFindersMixin(
      String methodName, List<dynamic> positionalArguments,
      [Map<Symbol, dynamic> /*?*/ namedArguments]) {
    if (methodName == 'element') {
      return element;
    }
    if (methodName == 'filtered') {
      return filtered;
    }
    if (methodName == 'checkTagPO') {
      return checkTagPO;
    }
    throw 'METHOD NOT FOUND. This method'
        ' failed to be generated during test creator codegen.';
  }

  Map<int, String Function(List<String>) /*?*/ > findChainInFindersMixin(
      List<String> internalIds,
      [String action = 'default']) {
    var closestIndex = internalIds.length;
    String Function(List<String>) /*?*/ closestValue;
    try {
      var secretIndex = internalIds.indexOf(this.secret.id);
      if (secretIndex >= 0 && secretIndex < closestIndex) {
        closestIndex = secretIndex;
        closestValue = (_) =>
            'secret.${PageObject.defaultCode[action] ?? PageObject.defaultCode['default']}';
      }
    } catch (_) {
      // Ignored.
    }
    try {
      var checkTagPOElement = this.checkTagPO as dynamic;
      var checkTagPOIndex =
          internalIds.indexOf(checkTagPOElement.$__root__.id as String);
      if (checkTagPOIndex >= 0 && checkTagPOIndex < closestIndex) {
        closestIndex = checkTagPOIndex;
        closestValue = (ids) =>
            'checkTagPO.${checkTagPOElement.findChain(ids, action)}'
                .replaceAll(RegExp('\\.\$'), '');
      }
    } catch (_) {
      // Ignored.
    }
    try {
      var _secretIndex = internalIds.indexOf(this._secret.id);
      if (_secretIndex >= 0 && _secretIndex < closestIndex) {
        closestIndex = _secretIndex;
        closestValue = (_) =>
            '_secret.${PageObject.defaultCode[action] ?? PageObject.defaultCode['default']}';
      }
    } catch (_) {
      // Ignored.
    }
    try {
      var elementIndex = internalIds.indexOf(this.element.id);
      if (elementIndex >= 0 && elementIndex < closestIndex) {
        closestIndex = elementIndex;
        closestValue = (_) =>
            'element.${PageObject.defaultCode[action] ?? PageObject.defaultCode['default']}';
      }
    } catch (_) {
      // Ignored.
    }
    try {
      var filteredIndex = internalIds.indexOf(this.filtered.id);
      if (filteredIndex >= 0 && filteredIndex < closestIndex) {
        closestIndex = filteredIndex;
        closestValue = (_) =>
            'filtered.${PageObject.defaultCode[action] ?? PageObject.defaultCode['default']}';
      }
    } catch (_) {
      // Ignored.
    }
    return {closestIndex: closestValue};
  }

  PageLoaderElement get _secret {
    for (final __listener in $__root__.listeners) {
      __listener.startPageObjectMethod('FindersMixin', '_secret');
    }
    final element = $__root__.createElement(ByCss('secret'), [], []);
    final returnMe = element;
    for (final __listener in $__root__.listeners) {
      __listener.endPageObjectMethod('FindersMixin', '_secret');
    }
    return returnMe;
  }

  PageLoaderElement get element {
    for (final __listener in $__root__.listeners) {
      __listener.startPageObjectMethod('FindersMixin', 'element');
    }
    final element = $__root__.createElement(ByCss('some-class'), [], []);
    final returnMe = element;
    for (final __listener in $__root__.listeners) {
      __listener.endPageObjectMethod('FindersMixin', 'element');
    }
    return returnMe;
  }

  PageLoaderElement get filtered {
    for (final __listener in $__root__.listeners) {
      __listener.startPageObjectMethod('FindersMixin', 'filtered');
    }
    final element = $__root__.createElement(ByCss('some-other-class'),
        [WithAttribute('also-with', 'this-attribute')], []);
    final returnMe = element;
    for (final __listener in $__root__.listeners) {
      __listener.endPageObjectMethod('FindersMixin', 'filtered');
    }
    return returnMe;
  }

  CheckTagPO get checkTagPO {
    for (final __listener in $__root__.listeners) {
      __listener.startPageObjectMethod('FindersMixin', 'checkTagPO');
    }
    final element = $__root__.createElement(ByTagName('check-tag-po'), [], []);
    final returnMe = CheckTagPO.create(element);
    for (final __listener in $__root__.listeners) {
      __listener.endPageObjectMethod('FindersMixin', 'checkTagPO');
    }
    return returnMe;
  }
}
