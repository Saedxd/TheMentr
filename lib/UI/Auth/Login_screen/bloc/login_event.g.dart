// GENERATED CODE - DO NOT MODIFY BY HAND

part of login_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostLOgin extends PostLOgin {
  @override
  final String? Email;
  @override
  final String? password;
  @override
  final String? fcmToken;

  factory _$PostLOgin([void Function(PostLOginBuilder)? updates]) =>
      (new PostLOginBuilder()..update(updates))._build();

  _$PostLOgin._({this.Email, this.password, this.fcmToken}) : super._();

  @override
  PostLOgin rebuild(void Function(PostLOginBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostLOginBuilder toBuilder() => new PostLOginBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostLOgin &&
        Email == other.Email &&
        password == other.password &&
        fcmToken == other.fcmToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, Email.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, fcmToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PostLOgin')
          ..add('Email', Email)
          ..add('password', password)
          ..add('fcmToken', fcmToken))
        .toString();
  }
}

class PostLOginBuilder implements Builder<PostLOgin, PostLOginBuilder> {
  _$PostLOgin? _$v;

  String? _Email;
  String? get Email => _$this._Email;
  set Email(String? Email) => _$this._Email = Email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _fcmToken;
  String? get fcmToken => _$this._fcmToken;
  set fcmToken(String? fcmToken) => _$this._fcmToken = fcmToken;

  PostLOginBuilder();

  PostLOginBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _Email = $v.Email;
      _password = $v.password;
      _fcmToken = $v.fcmToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostLOgin other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PostLOgin;
  }

  @override
  void update(void Function(PostLOginBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PostLOgin build() => _build();

  _$PostLOgin _build() {
    final _$result = _$v ??
        new _$PostLOgin._(Email: Email, password: password, fcmToken: fcmToken);
    replace(_$result);
    return _$result;
  }
}

class _$ChangeIconStatus extends ChangeIconStatus {
  factory _$ChangeIconStatus(
          [void Function(ChangeIconStatusBuilder)? updates]) =>
      (new ChangeIconStatusBuilder()..update(updates))._build();

  _$ChangeIconStatus._() : super._();

  @override
  ChangeIconStatus rebuild(void Function(ChangeIconStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangeIconStatusBuilder toBuilder() =>
      new ChangeIconStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangeIconStatus;
  }

  @override
  int get hashCode {
    return 426268391;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'ChangeIconStatus').toString();
  }
}

class ChangeIconStatusBuilder
    implements Builder<ChangeIconStatus, ChangeIconStatusBuilder> {
  _$ChangeIconStatus? _$v;

  ChangeIconStatusBuilder();

  @override
  void replace(ChangeIconStatus other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChangeIconStatus;
  }

  @override
  void update(void Function(ChangeIconStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChangeIconStatus build() => _build();

  _$ChangeIconStatus _build() {
    final _$result = _$v ?? new _$ChangeIconStatus._();
    replace(_$result);
    return _$result;
  }
}

class _$ChangeCheckBoxStatus extends ChangeCheckBoxStatus {
  factory _$ChangeCheckBoxStatus(
          [void Function(ChangeCheckBoxStatusBuilder)? updates]) =>
      (new ChangeCheckBoxStatusBuilder()..update(updates))._build();

  _$ChangeCheckBoxStatus._() : super._();

  @override
  ChangeCheckBoxStatus rebuild(
          void Function(ChangeCheckBoxStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangeCheckBoxStatusBuilder toBuilder() =>
      new ChangeCheckBoxStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangeCheckBoxStatus;
  }

  @override
  int get hashCode {
    return 689027728;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'ChangeCheckBoxStatus').toString();
  }
}

class ChangeCheckBoxStatusBuilder
    implements Builder<ChangeCheckBoxStatus, ChangeCheckBoxStatusBuilder> {
  _$ChangeCheckBoxStatus? _$v;

  ChangeCheckBoxStatusBuilder();

  @override
  void replace(ChangeCheckBoxStatus other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChangeCheckBoxStatus;
  }

  @override
  void update(void Function(ChangeCheckBoxStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChangeCheckBoxStatus build() => _build();

  _$ChangeCheckBoxStatus _build() {
    final _$result = _$v ?? new _$ChangeCheckBoxStatus._();
    replace(_$result);
    return _$result;
  }
}

class _$SignInFacebook extends SignInFacebook {
  @override
  final String? AccessToken;

  factory _$SignInFacebook([void Function(SignInFacebookBuilder)? updates]) =>
      (new SignInFacebookBuilder()..update(updates))._build();

  _$SignInFacebook._({this.AccessToken}) : super._();

  @override
  SignInFacebook rebuild(void Function(SignInFacebookBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignInFacebookBuilder toBuilder() =>
      new SignInFacebookBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignInFacebook && AccessToken == other.AccessToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, AccessToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SignInFacebook')
          ..add('AccessToken', AccessToken))
        .toString();
  }
}

class SignInFacebookBuilder
    implements Builder<SignInFacebook, SignInFacebookBuilder> {
  _$SignInFacebook? _$v;

  String? _AccessToken;
  String? get AccessToken => _$this._AccessToken;
  set AccessToken(String? AccessToken) => _$this._AccessToken = AccessToken;

  SignInFacebookBuilder();

  SignInFacebookBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _AccessToken = $v.AccessToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignInFacebook other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SignInFacebook;
  }

  @override
  void update(void Function(SignInFacebookBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SignInFacebook build() => _build();

  _$SignInFacebook _build() {
    final _$result = _$v ?? new _$SignInFacebook._(AccessToken: AccessToken);
    replace(_$result);
    return _$result;
  }
}

class _$Switch_ForgotPasswordScreen extends Switch_ForgotPasswordScreen {
  @override
  final bool? Value;

  factory _$Switch_ForgotPasswordScreen(
          [void Function(Switch_ForgotPasswordScreenBuilder)? updates]) =>
      (new Switch_ForgotPasswordScreenBuilder()..update(updates))._build();

  _$Switch_ForgotPasswordScreen._({this.Value}) : super._();

  @override
  Switch_ForgotPasswordScreen rebuild(
          void Function(Switch_ForgotPasswordScreenBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Switch_ForgotPasswordScreenBuilder toBuilder() =>
      new Switch_ForgotPasswordScreenBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Switch_ForgotPasswordScreen && Value == other.Value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, Value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Switch_ForgotPasswordScreen')
          ..add('Value', Value))
        .toString();
  }
}

class Switch_ForgotPasswordScreenBuilder
    implements
        Builder<Switch_ForgotPasswordScreen,
            Switch_ForgotPasswordScreenBuilder> {
  _$Switch_ForgotPasswordScreen? _$v;

  bool? _Value;
  bool? get Value => _$this._Value;
  set Value(bool? Value) => _$this._Value = Value;

  Switch_ForgotPasswordScreenBuilder();

  Switch_ForgotPasswordScreenBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _Value = $v.Value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Switch_ForgotPasswordScreen other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Switch_ForgotPasswordScreen;
  }

  @override
  void update(void Function(Switch_ForgotPasswordScreenBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Switch_ForgotPasswordScreen build() => _build();

  _$Switch_ForgotPasswordScreen _build() {
    final _$result = _$v ?? new _$Switch_ForgotPasswordScreen._(Value: Value);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
