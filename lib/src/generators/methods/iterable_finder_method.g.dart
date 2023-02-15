// GENERATED CODE - DO NOT MODIFY BY HAND

part of pageloader.iterable_finder_method;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IterableFinderMethod extends IterableFinderMethod {
  @override
  final String name;
  @override
  final String iterableTypeArgument;
  @override
  final String finderDeclaration;
  @override
  final String filterDeclarations;
  @override
  final String checkerDeclarations;

  factory _$IterableFinderMethod(
          [void Function(IterableFinderMethodBuilder)? updates]) =>
      (new IterableFinderMethodBuilder()..update(updates))._build();

  _$IterableFinderMethod._(
      {required this.name,
      required this.iterableTypeArgument,
      required this.finderDeclaration,
      required this.filterDeclarations,
      required this.checkerDeclarations})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        name, r'IterableFinderMethod', 'name');
    BuiltValueNullFieldError.checkNotNull(
        iterableTypeArgument, r'IterableFinderMethod', 'iterableTypeArgument');
    BuiltValueNullFieldError.checkNotNull(
        finderDeclaration, r'IterableFinderMethod', 'finderDeclaration');
    BuiltValueNullFieldError.checkNotNull(
        filterDeclarations, r'IterableFinderMethod', 'filterDeclarations');
    BuiltValueNullFieldError.checkNotNull(
        checkerDeclarations, r'IterableFinderMethod', 'checkerDeclarations');
  }

  @override
  IterableFinderMethod rebuild(
          void Function(IterableFinderMethodBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IterableFinderMethodBuilder toBuilder() =>
      new IterableFinderMethodBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IterableFinderMethod &&
        name == other.name &&
        iterableTypeArgument == other.iterableTypeArgument &&
        finderDeclaration == other.finderDeclaration &&
        filterDeclarations == other.filterDeclarations &&
        checkerDeclarations == other.checkerDeclarations;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, iterableTypeArgument.hashCode);
    _$hash = $jc(_$hash, finderDeclaration.hashCode);
    _$hash = $jc(_$hash, filterDeclarations.hashCode);
    _$hash = $jc(_$hash, checkerDeclarations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IterableFinderMethod')
          ..add('name', name)
          ..add('iterableTypeArgument', iterableTypeArgument)
          ..add('finderDeclaration', finderDeclaration)
          ..add('filterDeclarations', filterDeclarations)
          ..add('checkerDeclarations', checkerDeclarations))
        .toString();
  }
}

class IterableFinderMethodBuilder
    implements Builder<IterableFinderMethod, IterableFinderMethodBuilder> {
  _$IterableFinderMethod? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _iterableTypeArgument;
  String? get iterableTypeArgument => _$this._iterableTypeArgument;
  set iterableTypeArgument(String? iterableTypeArgument) =>
      _$this._iterableTypeArgument = iterableTypeArgument;

  String? _finderDeclaration;
  String? get finderDeclaration => _$this._finderDeclaration;
  set finderDeclaration(String? finderDeclaration) =>
      _$this._finderDeclaration = finderDeclaration;

  String? _filterDeclarations;
  String? get filterDeclarations => _$this._filterDeclarations;
  set filterDeclarations(String? filterDeclarations) =>
      _$this._filterDeclarations = filterDeclarations;

  String? _checkerDeclarations;
  String? get checkerDeclarations => _$this._checkerDeclarations;
  set checkerDeclarations(String? checkerDeclarations) =>
      _$this._checkerDeclarations = checkerDeclarations;

  IterableFinderMethodBuilder();

  IterableFinderMethodBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _iterableTypeArgument = $v.iterableTypeArgument;
      _finderDeclaration = $v.finderDeclaration;
      _filterDeclarations = $v.filterDeclarations;
      _checkerDeclarations = $v.checkerDeclarations;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IterableFinderMethod other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IterableFinderMethod;
  }

  @override
  void update(void Function(IterableFinderMethodBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IterableFinderMethod build() => _build();

  _$IterableFinderMethod _build() {
    final _$result = _$v ??
        new _$IterableFinderMethod._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'IterableFinderMethod', 'name'),
            iterableTypeArgument: BuiltValueNullFieldError.checkNotNull(
                iterableTypeArgument,
                r'IterableFinderMethod',
                'iterableTypeArgument'),
            finderDeclaration: BuiltValueNullFieldError.checkNotNull(
                finderDeclaration,
                r'IterableFinderMethod',
                'finderDeclaration'),
            filterDeclarations: BuiltValueNullFieldError.checkNotNull(
                filterDeclarations,
                r'IterableFinderMethod',
                'filterDeclarations'),
            checkerDeclarations: BuiltValueNullFieldError.checkNotNull(
                checkerDeclarations,
                r'IterableFinderMethod',
                'checkerDeclarations'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
