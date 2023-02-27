// GENERATED CODE - DO NOT MODIFY BY HAND

part of SignUp_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SignUpState extends SignUpState {
  @override
  final String? error;
  @override
  final bool? isLoading;
  @override
  final bool? success;
  @override
  final int? CharLength;
  @override
  final String? SelectedRoleValue;
  @override
  final String? SelectedInterestValue;
  @override
  final List<bool>? SelectedListItems;

  factory _$SignUpState([void Function(SignUpStateBuilder)? updates]) =>
      (new SignUpStateBuilder()..update(updates))._build();

  _$SignUpState._(
      {this.error,
      this.isLoading,
      this.success,
      this.CharLength,
      this.SelectedRoleValue,
      this.SelectedInterestValue,
      this.SelectedListItems})
      : super._();

  @override
  SignUpState rebuild(void Function(SignUpStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignUpStateBuilder toBuilder() => new SignUpStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignUpState &&
        error == other.error &&
        isLoading == other.isLoading &&
        success == other.success &&
        CharLength == other.CharLength &&
        SelectedRoleValue == other.SelectedRoleValue &&
        SelectedInterestValue == other.SelectedInterestValue &&
        SelectedListItems == other.SelectedListItems;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, isLoading.hashCode);
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, CharLength.hashCode);
    _$hash = $jc(_$hash, SelectedRoleValue.hashCode);
    _$hash = $jc(_$hash, SelectedInterestValue.hashCode);
    _$hash = $jc(_$hash, SelectedListItems.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SignUpState')
          ..add('error', error)
          ..add('isLoading', isLoading)
          ..add('success', success)
          ..add('CharLength', CharLength)
          ..add('SelectedRoleValue', SelectedRoleValue)
          ..add('SelectedInterestValue', SelectedInterestValue)
          ..add('SelectedListItems', SelectedListItems))
        .toString();
  }
}

class SignUpStateBuilder implements Builder<SignUpState, SignUpStateBuilder> {
  _$SignUpState? _$v;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  int? _CharLength;
  int? get CharLength => _$this._CharLength;
  set CharLength(int? CharLength) => _$this._CharLength = CharLength;

  String? _SelectedRoleValue;
  String? get SelectedRoleValue => _$this._SelectedRoleValue;
  set SelectedRoleValue(String? SelectedRoleValue) =>
      _$this._SelectedRoleValue = SelectedRoleValue;

  String? _SelectedInterestValue;
  String? get SelectedInterestValue => _$this._SelectedInterestValue;
  set SelectedInterestValue(String? SelectedInterestValue) =>
      _$this._SelectedInterestValue = SelectedInterestValue;

  List<bool>? _SelectedListItems;
  List<bool>? get SelectedListItems => _$this._SelectedListItems;
  set SelectedListItems(List<bool>? SelectedListItems) =>
      _$this._SelectedListItems = SelectedListItems;

  SignUpStateBuilder();

  SignUpStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _isLoading = $v.isLoading;
      _success = $v.success;
      _CharLength = $v.CharLength;
      _SelectedRoleValue = $v.SelectedRoleValue;
      _SelectedInterestValue = $v.SelectedInterestValue;
      _SelectedListItems = $v.SelectedListItems;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignUpState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SignUpState;
  }

  @override
  void update(void Function(SignUpStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SignUpState build() => _build();

  _$SignUpState _build() {
    final _$result = _$v ??
        new _$SignUpState._(
            error: error,
            isLoading: isLoading,
            success: success,
            CharLength: CharLength,
            SelectedRoleValue: SelectedRoleValue,
            SelectedInterestValue: SelectedInterestValue,
            SelectedListItems: SelectedListItems);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
