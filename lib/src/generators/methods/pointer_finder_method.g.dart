// GENERATED CODE - DO NOT MODIFY BY HAND

part of pageloader.pointer_finder_method;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PointerFinderMethod extends PointerFinderMethod {
  @override
  final NullSafety nullSafety;
  @override
  final String name;

  factory _$PointerFinderMethod(
          [void Function(PointerFinderMethodBuilder)? updates]) =>
      (new PointerFinderMethodBuilder()..update(updates))._build();

  _$PointerFinderMethod._({required this.nullSafety, required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        nullSafety, r'PointerFinderMethod', 'nullSafety');
    BuiltValueNullFieldError.checkNotNull(name, r'PointerFinderMethod', 'name');
  }

  @override
  PointerFinderMethod rebuild(
          void Function(PointerFinderMethodBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PointerFinderMethodBuilder toBuilder() =>
      new PointerFinderMethodBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PointerFinderMethod &&
        nullSafety == other.nullSafety &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nullSafety.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PointerFinderMethod')
          ..add('nullSafety', nullSafety)
          ..add('name', name))
        .toString();
  }
}

class PointerFinderMethodBuilder
    implements Builder<PointerFinderMethod, PointerFinderMethodBuilder> {
  _$PointerFinderMethod? _$v;

  NullSafetyBuilder? _nullSafety;
  NullSafetyBuilder get nullSafety =>
      _$this._nullSafety ??= new NullSafetyBuilder();
  set nullSafety(NullSafetyBuilder? nullSafety) =>
      _$this._nullSafety = nullSafety;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  PointerFinderMethodBuilder();

  PointerFinderMethodBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nullSafety = $v.nullSafety.toBuilder();
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PointerFinderMethod other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PointerFinderMethod;
  }

  @override
  void update(void Function(PointerFinderMethodBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PointerFinderMethod build() => _build();

  _$PointerFinderMethod _build() {
    _$PointerFinderMethod _$result;
    try {
      _$result = _$v ??
          new _$PointerFinderMethod._(
              nullSafety: nullSafety.build(),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'PointerFinderMethod', 'name'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'nullSafety';
        nullSafety.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PointerFinderMethod', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
