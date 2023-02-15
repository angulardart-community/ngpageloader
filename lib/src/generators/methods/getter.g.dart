// GENERATED CODE - DO NOT MODIFY BY HAND

part of pageloader.getter;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Getter extends Getter {
  @override
  final String name;
  @override
  final String returnType;

  factory _$Getter([void Function(GetterBuilder)? updates]) =>
      (new GetterBuilder()..update(updates))._build();

  _$Getter._({required this.name, required this.returnType}) : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'Getter', 'name');
    BuiltValueNullFieldError.checkNotNull(returnType, r'Getter', 'returnType');
  }

  @override
  Getter rebuild(void Function(GetterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetterBuilder toBuilder() => new GetterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Getter &&
        name == other.name &&
        returnType == other.returnType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, returnType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Getter')
          ..add('name', name)
          ..add('returnType', returnType))
        .toString();
  }
}

class GetterBuilder implements Builder<Getter, GetterBuilder> {
  _$Getter? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _returnType;
  String? get returnType => _$this._returnType;
  set returnType(String? returnType) => _$this._returnType = returnType;

  GetterBuilder();

  GetterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _returnType = $v.returnType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Getter other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Getter;
  }

  @override
  void update(void Function(GetterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Getter build() => _build();

  _$Getter _build() {
    final _$result = _$v ??
        new _$Getter._(
            name:
                BuiltValueNullFieldError.checkNotNull(name, r'Getter', 'name'),
            returnType: BuiltValueNullFieldError.checkNotNull(
                returnType, r'Getter', 'returnType'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
