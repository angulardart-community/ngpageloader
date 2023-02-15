// GENERATED CODE - DO NOT MODIFY BY HAND

part of pageloader.setter;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Setter extends Setter {
  @override
  final String name;
  @override
  final String setterType;
  @override
  final String setterValueName;

  factory _$Setter([void Function(SetterBuilder)? updates]) =>
      (new SetterBuilder()..update(updates))._build();

  _$Setter._(
      {required this.name,
      required this.setterType,
      required this.setterValueName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'Setter', 'name');
    BuiltValueNullFieldError.checkNotNull(setterType, r'Setter', 'setterType');
    BuiltValueNullFieldError.checkNotNull(
        setterValueName, r'Setter', 'setterValueName');
  }

  @override
  Setter rebuild(void Function(SetterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SetterBuilder toBuilder() => new SetterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Setter &&
        name == other.name &&
        setterType == other.setterType &&
        setterValueName == other.setterValueName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, setterType.hashCode);
    _$hash = $jc(_$hash, setterValueName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Setter')
          ..add('name', name)
          ..add('setterType', setterType)
          ..add('setterValueName', setterValueName))
        .toString();
  }
}

class SetterBuilder implements Builder<Setter, SetterBuilder> {
  _$Setter? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _setterType;
  String? get setterType => _$this._setterType;
  set setterType(String? setterType) => _$this._setterType = setterType;

  String? _setterValueName;
  String? get setterValueName => _$this._setterValueName;
  set setterValueName(String? setterValueName) =>
      _$this._setterValueName = setterValueName;

  SetterBuilder();

  SetterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _setterType = $v.setterType;
      _setterValueName = $v.setterValueName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Setter other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Setter;
  }

  @override
  void update(void Function(SetterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Setter build() => _build();

  _$Setter _build() {
    final _$result = _$v ??
        new _$Setter._(
            name:
                BuiltValueNullFieldError.checkNotNull(name, r'Setter', 'name'),
            setterType: BuiltValueNullFieldError.checkNotNull(
                setterType, r'Setter', 'setterType'),
            setterValueName: BuiltValueNullFieldError.checkNotNull(
                setterValueName, r'Setter', 'setterValueName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
