// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'null_safety.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NullSafety extends NullSafety {
  @override
  final bool enabled;

  factory _$NullSafety([void Function(NullSafetyBuilder)? updates]) =>
      (new NullSafetyBuilder()..update(updates))._build();

  _$NullSafety._({required this.enabled}) : super._() {
    BuiltValueNullFieldError.checkNotNull(enabled, r'NullSafety', 'enabled');
  }

  @override
  NullSafety rebuild(void Function(NullSafetyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NullSafetyBuilder toBuilder() => new NullSafetyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NullSafety && enabled == other.enabled;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NullSafety')..add('enabled', enabled))
        .toString();
  }
}

class NullSafetyBuilder implements Builder<NullSafety, NullSafetyBuilder> {
  _$NullSafety? _$v;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  NullSafetyBuilder();

  NullSafetyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enabled = $v.enabled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NullSafety other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NullSafety;
  }

  @override
  void update(void Function(NullSafetyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NullSafety build() => _build();

  _$NullSafety _build() {
    final _$result = _$v ??
        new _$NullSafety._(
            enabled: BuiltValueNullFieldError.checkNotNull(
                enabled, r'NullSafety', 'enabled'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
