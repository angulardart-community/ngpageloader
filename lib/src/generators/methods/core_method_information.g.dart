// GENERATED CODE - DO NOT MODIFY BY HAND

part of pageloader.core_method_information;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TypeInformation extends TypeInformation {
  @override
  final String type;
  @override
  final List<TypeInformation> typeArguments;

  factory _$TypeInformation([void Function(TypeInformationBuilder)? updates]) =>
      (new TypeInformationBuilder()..update(updates))._build();

  _$TypeInformation._({required this.type, required this.typeArguments})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(type, r'TypeInformation', 'type');
    BuiltValueNullFieldError.checkNotNull(
        typeArguments, r'TypeInformation', 'typeArguments');
  }

  @override
  TypeInformation rebuild(void Function(TypeInformationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TypeInformationBuilder toBuilder() =>
      new TypeInformationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TypeInformation &&
        type == other.type &&
        typeArguments == other.typeArguments;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, typeArguments.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TypeInformation')
          ..add('type', type)
          ..add('typeArguments', typeArguments))
        .toString();
  }
}

class TypeInformationBuilder
    implements Builder<TypeInformation, TypeInformationBuilder> {
  _$TypeInformation? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  List<TypeInformation>? _typeArguments;
  List<TypeInformation>? get typeArguments => _$this._typeArguments;
  set typeArguments(List<TypeInformation>? typeArguments) =>
      _$this._typeArguments = typeArguments;

  TypeInformationBuilder();

  TypeInformationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _typeArguments = $v.typeArguments;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TypeInformation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TypeInformation;
  }

  @override
  void update(void Function(TypeInformationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TypeInformation build() => _build();

  _$TypeInformation _build() {
    final _$result = _$v ??
        new _$TypeInformation._(
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'TypeInformation', 'type'),
            typeArguments: BuiltValueNullFieldError.checkNotNull(
                typeArguments, r'TypeInformation', 'typeArguments'));
    replace(_$result);
    return _$result;
  }
}

class _$CoreMethodInformation extends CoreMethodInformation {
  @override
  final String name;
  @override
  final bool isGetter;
  @override
  final bool isAbstract;
  @override
  final String pageObjectType;
  @override
  final Optional<String> pageObjectTemplate;
  @override
  final bool isFuture;
  @override
  final bool isList;
  @override
  final bool isMouse;
  @override
  final bool isPointer;
  @override
  final Optional<String> finder;
  @override
  final List<String> filters;
  @override
  final List<String> checkers;
  @override
  final bool isRoot;
  @override
  final bool isNullElement;
  @override
  final String nodeSource;
  @override
  final AstNode node;

  factory _$CoreMethodInformation(
          [void Function(CoreMethodInformationBuilder)? updates]) =>
      (new CoreMethodInformationBuilder()..update(updates))._build();

  _$CoreMethodInformation._(
      {required this.name,
      required this.isGetter,
      required this.isAbstract,
      required this.pageObjectType,
      required this.pageObjectTemplate,
      required this.isFuture,
      required this.isList,
      required this.isMouse,
      required this.isPointer,
      required this.finder,
      required this.filters,
      required this.checkers,
      required this.isRoot,
      required this.isNullElement,
      required this.nodeSource,
      required this.node})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        name, r'CoreMethodInformation', 'name');
    BuiltValueNullFieldError.checkNotNull(
        isGetter, r'CoreMethodInformation', 'isGetter');
    BuiltValueNullFieldError.checkNotNull(
        isAbstract, r'CoreMethodInformation', 'isAbstract');
    BuiltValueNullFieldError.checkNotNull(
        pageObjectType, r'CoreMethodInformation', 'pageObjectType');
    BuiltValueNullFieldError.checkNotNull(
        pageObjectTemplate, r'CoreMethodInformation', 'pageObjectTemplate');
    BuiltValueNullFieldError.checkNotNull(
        isFuture, r'CoreMethodInformation', 'isFuture');
    BuiltValueNullFieldError.checkNotNull(
        isList, r'CoreMethodInformation', 'isList');
    BuiltValueNullFieldError.checkNotNull(
        isMouse, r'CoreMethodInformation', 'isMouse');
    BuiltValueNullFieldError.checkNotNull(
        isPointer, r'CoreMethodInformation', 'isPointer');
    BuiltValueNullFieldError.checkNotNull(
        finder, r'CoreMethodInformation', 'finder');
    BuiltValueNullFieldError.checkNotNull(
        filters, r'CoreMethodInformation', 'filters');
    BuiltValueNullFieldError.checkNotNull(
        checkers, r'CoreMethodInformation', 'checkers');
    BuiltValueNullFieldError.checkNotNull(
        isRoot, r'CoreMethodInformation', 'isRoot');
    BuiltValueNullFieldError.checkNotNull(
        isNullElement, r'CoreMethodInformation', 'isNullElement');
    BuiltValueNullFieldError.checkNotNull(
        nodeSource, r'CoreMethodInformation', 'nodeSource');
    BuiltValueNullFieldError.checkNotNull(
        node, r'CoreMethodInformation', 'node');
  }

  @override
  CoreMethodInformation rebuild(
          void Function(CoreMethodInformationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CoreMethodInformationBuilder toBuilder() =>
      new CoreMethodInformationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CoreMethodInformation &&
        name == other.name &&
        isGetter == other.isGetter &&
        isAbstract == other.isAbstract &&
        pageObjectType == other.pageObjectType &&
        pageObjectTemplate == other.pageObjectTemplate &&
        isFuture == other.isFuture &&
        isList == other.isList &&
        isMouse == other.isMouse &&
        isPointer == other.isPointer &&
        finder == other.finder &&
        filters == other.filters &&
        checkers == other.checkers &&
        isRoot == other.isRoot &&
        isNullElement == other.isNullElement &&
        nodeSource == other.nodeSource &&
        node == other.node;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, isGetter.hashCode);
    _$hash = $jc(_$hash, isAbstract.hashCode);
    _$hash = $jc(_$hash, pageObjectType.hashCode);
    _$hash = $jc(_$hash, pageObjectTemplate.hashCode);
    _$hash = $jc(_$hash, isFuture.hashCode);
    _$hash = $jc(_$hash, isList.hashCode);
    _$hash = $jc(_$hash, isMouse.hashCode);
    _$hash = $jc(_$hash, isPointer.hashCode);
    _$hash = $jc(_$hash, finder.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, checkers.hashCode);
    _$hash = $jc(_$hash, isRoot.hashCode);
    _$hash = $jc(_$hash, isNullElement.hashCode);
    _$hash = $jc(_$hash, nodeSource.hashCode);
    _$hash = $jc(_$hash, node.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CoreMethodInformation')
          ..add('name', name)
          ..add('isGetter', isGetter)
          ..add('isAbstract', isAbstract)
          ..add('pageObjectType', pageObjectType)
          ..add('pageObjectTemplate', pageObjectTemplate)
          ..add('isFuture', isFuture)
          ..add('isList', isList)
          ..add('isMouse', isMouse)
          ..add('isPointer', isPointer)
          ..add('finder', finder)
          ..add('filters', filters)
          ..add('checkers', checkers)
          ..add('isRoot', isRoot)
          ..add('isNullElement', isNullElement)
          ..add('nodeSource', nodeSource)
          ..add('node', node))
        .toString();
  }
}

class CoreMethodInformationBuilder
    implements
        Builder<CoreMethodInformation, CoreMethodInformationBuilder>,
        CoreMethodInformationBaseBuilder {
  _$CoreMethodInformation? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(covariant String? name) => _$this._name = name;

  bool? _isGetter;
  bool? get isGetter => _$this._isGetter;
  set isGetter(covariant bool? isGetter) => _$this._isGetter = isGetter;

  bool? _isAbstract;
  bool? get isAbstract => _$this._isAbstract;
  set isAbstract(covariant bool? isAbstract) => _$this._isAbstract = isAbstract;

  String? _pageObjectType;
  String? get pageObjectType => _$this._pageObjectType;
  set pageObjectType(covariant String? pageObjectType) =>
      _$this._pageObjectType = pageObjectType;

  Optional<String>? _pageObjectTemplate;
  Optional<String>? get pageObjectTemplate => _$this._pageObjectTemplate;
  set pageObjectTemplate(covariant Optional<String>? pageObjectTemplate) =>
      _$this._pageObjectTemplate = pageObjectTemplate;

  bool? _isFuture;
  bool? get isFuture => _$this._isFuture;
  set isFuture(covariant bool? isFuture) => _$this._isFuture = isFuture;

  bool? _isList;
  bool? get isList => _$this._isList;
  set isList(covariant bool? isList) => _$this._isList = isList;

  bool? _isMouse;
  bool? get isMouse => _$this._isMouse;
  set isMouse(covariant bool? isMouse) => _$this._isMouse = isMouse;

  bool? _isPointer;
  bool? get isPointer => _$this._isPointer;
  set isPointer(covariant bool? isPointer) => _$this._isPointer = isPointer;

  Optional<String>? _finder;
  Optional<String>? get finder => _$this._finder;
  set finder(covariant Optional<String>? finder) => _$this._finder = finder;

  List<String>? _filters;
  List<String>? get filters => _$this._filters;
  set filters(covariant List<String>? filters) => _$this._filters = filters;

  List<String>? _checkers;
  List<String>? get checkers => _$this._checkers;
  set checkers(covariant List<String>? checkers) => _$this._checkers = checkers;

  bool? _isRoot;
  bool? get isRoot => _$this._isRoot;
  set isRoot(covariant bool? isRoot) => _$this._isRoot = isRoot;

  bool? _isNullElement;
  bool? get isNullElement => _$this._isNullElement;
  set isNullElement(covariant bool? isNullElement) =>
      _$this._isNullElement = isNullElement;

  String? _nodeSource;
  String? get nodeSource => _$this._nodeSource;
  set nodeSource(covariant String? nodeSource) =>
      _$this._nodeSource = nodeSource;

  AstNode? _node;
  AstNode? get node => _$this._node;
  set node(covariant AstNode? node) => _$this._node = node;

  CoreMethodInformationBuilder();

  CoreMethodInformationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _isGetter = $v.isGetter;
      _isAbstract = $v.isAbstract;
      _pageObjectType = $v.pageObjectType;
      _pageObjectTemplate = $v.pageObjectTemplate;
      _isFuture = $v.isFuture;
      _isList = $v.isList;
      _isMouse = $v.isMouse;
      _isPointer = $v.isPointer;
      _finder = $v.finder;
      _filters = $v.filters;
      _checkers = $v.checkers;
      _isRoot = $v.isRoot;
      _isNullElement = $v.isNullElement;
      _nodeSource = $v.nodeSource;
      _node = $v.node;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant CoreMethodInformation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CoreMethodInformation;
  }

  @override
  void update(void Function(CoreMethodInformationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CoreMethodInformation build() => _build();

  _$CoreMethodInformation _build() {
    final _$result = _$v ??
        new _$CoreMethodInformation._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'CoreMethodInformation', 'name'),
            isGetter: BuiltValueNullFieldError.checkNotNull(
                isGetter, r'CoreMethodInformation', 'isGetter'),
            isAbstract: BuiltValueNullFieldError.checkNotNull(
                isAbstract, r'CoreMethodInformation', 'isAbstract'),
            pageObjectType: BuiltValueNullFieldError.checkNotNull(
                pageObjectType, r'CoreMethodInformation', 'pageObjectType'),
            pageObjectTemplate: BuiltValueNullFieldError.checkNotNull(
                pageObjectTemplate, r'CoreMethodInformation', 'pageObjectTemplate'),
            isFuture: BuiltValueNullFieldError.checkNotNull(
                isFuture, r'CoreMethodInformation', 'isFuture'),
            isList: BuiltValueNullFieldError.checkNotNull(
                isList, r'CoreMethodInformation', 'isList'),
            isMouse: BuiltValueNullFieldError.checkNotNull(
                isMouse, r'CoreMethodInformation', 'isMouse'),
            isPointer: BuiltValueNullFieldError.checkNotNull(isPointer, r'CoreMethodInformation', 'isPointer'),
            finder: BuiltValueNullFieldError.checkNotNull(finder, r'CoreMethodInformation', 'finder'),
            filters: BuiltValueNullFieldError.checkNotNull(filters, r'CoreMethodInformation', 'filters'),
            checkers: BuiltValueNullFieldError.checkNotNull(checkers, r'CoreMethodInformation', 'checkers'),
            isRoot: BuiltValueNullFieldError.checkNotNull(isRoot, r'CoreMethodInformation', 'isRoot'),
            isNullElement: BuiltValueNullFieldError.checkNotNull(isNullElement, r'CoreMethodInformation', 'isNullElement'),
            nodeSource: BuiltValueNullFieldError.checkNotNull(nodeSource, r'CoreMethodInformation', 'nodeSource'),
            node: BuiltValueNullFieldError.checkNotNull(node, r'CoreMethodInformation', 'node'));
    replace(_$result);
    return _$result;
  }
}

abstract class CoreMethodInformationBaseBuilder {
  void replace(CoreMethodInformationBase other);
  void update(void Function(CoreMethodInformationBaseBuilder) updates);
  String? get name;
  set name(String? name);

  bool? get isGetter;
  set isGetter(bool? isGetter);

  bool? get isAbstract;
  set isAbstract(bool? isAbstract);

  String? get pageObjectType;
  set pageObjectType(String? pageObjectType);

  Optional<String>? get pageObjectTemplate;
  set pageObjectTemplate(Optional<String>? pageObjectTemplate);

  bool? get isFuture;
  set isFuture(bool? isFuture);

  bool? get isList;
  set isList(bool? isList);

  bool? get isMouse;
  set isMouse(bool? isMouse);

  bool? get isPointer;
  set isPointer(bool? isPointer);

  Optional<String>? get finder;
  set finder(Optional<String>? finder);

  List<String>? get filters;
  set filters(List<String>? filters);

  List<String>? get checkers;
  set checkers(List<String>? checkers);

  bool? get isRoot;
  set isRoot(bool? isRoot);

  bool? get isNullElement;
  set isNullElement(bool? isNullElement);

  String? get nodeSource;
  set nodeSource(String? nodeSource);

  AstNode? get node;
  set node(AstNode? node);
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
