// GENERATED CODE - DO NOT MODIFY BY HAND

part of pageloader.list_finder_method;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListFinderMethod extends ListFinderMethod {
  @override
  final String name;
  @override
  final String listTypeArgument;
  @override
  final String finderDeclaration;
  @override
  final String filterDeclarations;
  @override
  final String checkerDeclarations;
  @override
  final bool isFuture;
  @override
  final Optional<String> genericType;

  factory _$ListFinderMethod(
          [void Function(ListFinderMethodBuilder)? updates]) =>
      (new ListFinderMethodBuilder()..update(updates))._build();

  _$ListFinderMethod._(
      {required this.name,
      required this.listTypeArgument,
      required this.finderDeclaration,
      required this.filterDeclarations,
      required this.checkerDeclarations,
      required this.isFuture,
      required this.genericType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'ListFinderMethod', 'name');
    BuiltValueNullFieldError.checkNotNull(
        listTypeArgument, r'ListFinderMethod', 'listTypeArgument');
    BuiltValueNullFieldError.checkNotNull(
        finderDeclaration, r'ListFinderMethod', 'finderDeclaration');
    BuiltValueNullFieldError.checkNotNull(
        filterDeclarations, r'ListFinderMethod', 'filterDeclarations');
    BuiltValueNullFieldError.checkNotNull(
        checkerDeclarations, r'ListFinderMethod', 'checkerDeclarations');
    BuiltValueNullFieldError.checkNotNull(
        isFuture, r'ListFinderMethod', 'isFuture');
    BuiltValueNullFieldError.checkNotNull(
        genericType, r'ListFinderMethod', 'genericType');
  }

  @override
  ListFinderMethod rebuild(void Function(ListFinderMethodBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListFinderMethodBuilder toBuilder() =>
      new ListFinderMethodBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListFinderMethod &&
        name == other.name &&
        listTypeArgument == other.listTypeArgument &&
        finderDeclaration == other.finderDeclaration &&
        filterDeclarations == other.filterDeclarations &&
        checkerDeclarations == other.checkerDeclarations &&
        isFuture == other.isFuture &&
        genericType == other.genericType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, listTypeArgument.hashCode);
    _$hash = $jc(_$hash, finderDeclaration.hashCode);
    _$hash = $jc(_$hash, filterDeclarations.hashCode);
    _$hash = $jc(_$hash, checkerDeclarations.hashCode);
    _$hash = $jc(_$hash, isFuture.hashCode);
    _$hash = $jc(_$hash, genericType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ListFinderMethod')
          ..add('name', name)
          ..add('listTypeArgument', listTypeArgument)
          ..add('finderDeclaration', finderDeclaration)
          ..add('filterDeclarations', filterDeclarations)
          ..add('checkerDeclarations', checkerDeclarations)
          ..add('isFuture', isFuture)
          ..add('genericType', genericType))
        .toString();
  }
}

class ListFinderMethodBuilder
    implements
        Builder<ListFinderMethod, ListFinderMethodBuilder>,
        ListFinderMethodBaseBuilder {
  _$ListFinderMethod? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(covariant String? name) => _$this._name = name;

  String? _listTypeArgument;
  String? get listTypeArgument => _$this._listTypeArgument;
  set listTypeArgument(covariant String? listTypeArgument) =>
      _$this._listTypeArgument = listTypeArgument;

  String? _finderDeclaration;
  String? get finderDeclaration => _$this._finderDeclaration;
  set finderDeclaration(covariant String? finderDeclaration) =>
      _$this._finderDeclaration = finderDeclaration;

  String? _filterDeclarations;
  String? get filterDeclarations => _$this._filterDeclarations;
  set filterDeclarations(covariant String? filterDeclarations) =>
      _$this._filterDeclarations = filterDeclarations;

  String? _checkerDeclarations;
  String? get checkerDeclarations => _$this._checkerDeclarations;
  set checkerDeclarations(covariant String? checkerDeclarations) =>
      _$this._checkerDeclarations = checkerDeclarations;

  bool? _isFuture;
  bool? get isFuture => _$this._isFuture;
  set isFuture(covariant bool? isFuture) => _$this._isFuture = isFuture;

  Optional<String>? _genericType;
  Optional<String>? get genericType => _$this._genericType;
  set genericType(covariant Optional<String>? genericType) =>
      _$this._genericType = genericType;

  ListFinderMethodBuilder();

  ListFinderMethodBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _listTypeArgument = $v.listTypeArgument;
      _finderDeclaration = $v.finderDeclaration;
      _filterDeclarations = $v.filterDeclarations;
      _checkerDeclarations = $v.checkerDeclarations;
      _isFuture = $v.isFuture;
      _genericType = $v.genericType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant ListFinderMethod other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListFinderMethod;
  }

  @override
  void update(void Function(ListFinderMethodBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListFinderMethod build() => _build();

  _$ListFinderMethod _build() {
    final _$result = _$v ??
        new _$ListFinderMethod._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'ListFinderMethod', 'name'),
            listTypeArgument: BuiltValueNullFieldError.checkNotNull(
                listTypeArgument, r'ListFinderMethod', 'listTypeArgument'),
            finderDeclaration: BuiltValueNullFieldError.checkNotNull(
                finderDeclaration, r'ListFinderMethod', 'finderDeclaration'),
            filterDeclarations: BuiltValueNullFieldError.checkNotNull(
                filterDeclarations, r'ListFinderMethod', 'filterDeclarations'),
            checkerDeclarations: BuiltValueNullFieldError.checkNotNull(
                checkerDeclarations,
                r'ListFinderMethod',
                'checkerDeclarations'),
            isFuture: BuiltValueNullFieldError.checkNotNull(
                isFuture, r'ListFinderMethod', 'isFuture'),
            genericType: BuiltValueNullFieldError.checkNotNull(
                genericType, r'ListFinderMethod', 'genericType'));
    replace(_$result);
    return _$result;
  }
}

abstract class ListFinderMethodBaseBuilder {
  void replace(ListFinderMethodBase other);
  void update(void Function(ListFinderMethodBaseBuilder) updates);
  String? get name;
  set name(String? name);

  String? get listTypeArgument;
  set listTypeArgument(String? listTypeArgument);

  String? get finderDeclaration;
  set finderDeclaration(String? finderDeclaration);

  String? get filterDeclarations;
  set filterDeclarations(String? filterDeclarations);

  String? get checkerDeclarations;
  set checkerDeclarations(String? checkerDeclarations);

  bool? get isFuture;
  set isFuture(bool? isFuture);

  Optional<String>? get genericType;
  set genericType(Optional<String>? genericType);
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
