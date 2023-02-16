// GENERATED CODE - DO NOT MODIFY BY HAND

part of pageloader.single_finder_method;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SingleFinderMethod extends SingleFinderMethod {
  @override
  final String name;
  @override
  final String pageObjectType;
  @override
  final Optional<String> finderDeclaration;
  @override
  final String filterDeclarations;
  @override
  final String checkerDeclarations;
  @override
  final Optional<String> templateType;
  @override
  final bool isRoot;
  @override
  final bool isNullElement;

  factory _$SingleFinderMethod(
          [void Function(SingleFinderMethodBuilder)? updates]) =>
      (new SingleFinderMethodBuilder()..update(updates))._build();

  _$SingleFinderMethod._(
      {required this.name,
      required this.pageObjectType,
      required this.finderDeclaration,
      required this.filterDeclarations,
      required this.checkerDeclarations,
      required this.templateType,
      required this.isRoot,
      required this.isNullElement})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'SingleFinderMethod', 'name');
    BuiltValueNullFieldError.checkNotNull(
        pageObjectType, r'SingleFinderMethod', 'pageObjectType');
    BuiltValueNullFieldError.checkNotNull(
        finderDeclaration, r'SingleFinderMethod', 'finderDeclaration');
    BuiltValueNullFieldError.checkNotNull(
        filterDeclarations, r'SingleFinderMethod', 'filterDeclarations');
    BuiltValueNullFieldError.checkNotNull(
        checkerDeclarations, r'SingleFinderMethod', 'checkerDeclarations');
    BuiltValueNullFieldError.checkNotNull(
        templateType, r'SingleFinderMethod', 'templateType');
    BuiltValueNullFieldError.checkNotNull(
        isRoot, r'SingleFinderMethod', 'isRoot');
    BuiltValueNullFieldError.checkNotNull(
        isNullElement, r'SingleFinderMethod', 'isNullElement');
  }

  @override
  SingleFinderMethod rebuild(
          void Function(SingleFinderMethodBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SingleFinderMethodBuilder toBuilder() =>
      new SingleFinderMethodBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SingleFinderMethod &&
        name == other.name &&
        pageObjectType == other.pageObjectType &&
        finderDeclaration == other.finderDeclaration &&
        filterDeclarations == other.filterDeclarations &&
        checkerDeclarations == other.checkerDeclarations &&
        templateType == other.templateType &&
        isRoot == other.isRoot &&
        isNullElement == other.isNullElement;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, pageObjectType.hashCode);
    _$hash = $jc(_$hash, finderDeclaration.hashCode);
    _$hash = $jc(_$hash, filterDeclarations.hashCode);
    _$hash = $jc(_$hash, checkerDeclarations.hashCode);
    _$hash = $jc(_$hash, templateType.hashCode);
    _$hash = $jc(_$hash, isRoot.hashCode);
    _$hash = $jc(_$hash, isNullElement.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SingleFinderMethod')
          ..add('name', name)
          ..add('pageObjectType', pageObjectType)
          ..add('finderDeclaration', finderDeclaration)
          ..add('filterDeclarations', filterDeclarations)
          ..add('checkerDeclarations', checkerDeclarations)
          ..add('templateType', templateType)
          ..add('isRoot', isRoot)
          ..add('isNullElement', isNullElement))
        .toString();
  }
}

class SingleFinderMethodBuilder
    implements
        Builder<SingleFinderMethod, SingleFinderMethodBuilder>,
        SingleFinderMethodBaseBuilder {
  _$SingleFinderMethod? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(covariant String? name) => _$this._name = name;

  String? _pageObjectType;
  String? get pageObjectType => _$this._pageObjectType;
  set pageObjectType(covariant String? pageObjectType) =>
      _$this._pageObjectType = pageObjectType;

  Optional<String>? _finderDeclaration;
  Optional<String>? get finderDeclaration => _$this._finderDeclaration;
  set finderDeclaration(covariant Optional<String>? finderDeclaration) =>
      _$this._finderDeclaration = finderDeclaration;

  String? _filterDeclarations;
  String? get filterDeclarations => _$this._filterDeclarations;
  set filterDeclarations(covariant String? filterDeclarations) =>
      _$this._filterDeclarations = filterDeclarations;

  String? _checkerDeclarations;
  String? get checkerDeclarations => _$this._checkerDeclarations;
  set checkerDeclarations(covariant String? checkerDeclarations) =>
      _$this._checkerDeclarations = checkerDeclarations;

  Optional<String>? _templateType;
  Optional<String>? get templateType => _$this._templateType;
  set templateType(covariant Optional<String>? templateType) =>
      _$this._templateType = templateType;

  bool? _isRoot;
  bool? get isRoot => _$this._isRoot;
  set isRoot(covariant bool? isRoot) => _$this._isRoot = isRoot;

  bool? _isNullElement;
  bool? get isNullElement => _$this._isNullElement;
  set isNullElement(covariant bool? isNullElement) =>
      _$this._isNullElement = isNullElement;

  SingleFinderMethodBuilder();

  SingleFinderMethodBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _pageObjectType = $v.pageObjectType;
      _finderDeclaration = $v.finderDeclaration;
      _filterDeclarations = $v.filterDeclarations;
      _checkerDeclarations = $v.checkerDeclarations;
      _templateType = $v.templateType;
      _isRoot = $v.isRoot;
      _isNullElement = $v.isNullElement;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant SingleFinderMethod other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SingleFinderMethod;
  }

  @override
  void update(void Function(SingleFinderMethodBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SingleFinderMethod build() => _build();

  _$SingleFinderMethod _build() {
    final _$result = _$v ??
        new _$SingleFinderMethod._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'SingleFinderMethod', 'name'),
            pageObjectType: BuiltValueNullFieldError.checkNotNull(
                pageObjectType, r'SingleFinderMethod', 'pageObjectType'),
            finderDeclaration: BuiltValueNullFieldError.checkNotNull(
                finderDeclaration, r'SingleFinderMethod', 'finderDeclaration'),
            filterDeclarations: BuiltValueNullFieldError.checkNotNull(
                filterDeclarations, r'SingleFinderMethod', 'filterDeclarations'),
            checkerDeclarations: BuiltValueNullFieldError.checkNotNull(
                checkerDeclarations, r'SingleFinderMethod', 'checkerDeclarations'),
            templateType: BuiltValueNullFieldError.checkNotNull(
                templateType, r'SingleFinderMethod', 'templateType'),
            isRoot: BuiltValueNullFieldError.checkNotNull(
                isRoot, r'SingleFinderMethod', 'isRoot'),
            isNullElement:
                BuiltValueNullFieldError.checkNotNull(isNullElement, r'SingleFinderMethod', 'isNullElement'));
    replace(_$result);
    return _$result;
  }
}

abstract class SingleFinderMethodBaseBuilder {
  void replace(SingleFinderMethodBase other);
  void update(void Function(SingleFinderMethodBaseBuilder) updates);
  String? get name;
  set name(String? name);

  String? get pageObjectType;
  set pageObjectType(String? pageObjectType);

  Optional<String>? get finderDeclaration;
  set finderDeclaration(Optional<String>? finderDeclaration);

  String? get filterDeclarations;
  set filterDeclarations(String? filterDeclarations);

  String? get checkerDeclarations;
  set checkerDeclarations(String? checkerDeclarations);

  Optional<String>? get templateType;
  set templateType(Optional<String>? templateType);

  bool? get isRoot;
  set isRoot(bool? isRoot);

  bool? get isNullElement;
  set isNullElement(bool? isNullElement);
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
