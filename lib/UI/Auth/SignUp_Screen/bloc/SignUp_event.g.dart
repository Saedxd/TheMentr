// GENERATED CODE - DO NOT MODIFY BY HAND

part of SignUp_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ClearError extends ClearError {
  factory _$ClearError([void Function(ClearErrorBuilder)? updates]) =>
      (new ClearErrorBuilder()..update(updates))._build();

  _$ClearError._() : super._();

  @override
  ClearError rebuild(void Function(ClearErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClearErrorBuilder toBuilder() => new ClearErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClearError;
  }

  @override
  int get hashCode {
    return 507656265;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'ClearError').toString();
  }
}

class ClearErrorBuilder implements Builder<ClearError, ClearErrorBuilder> {
  _$ClearError? _$v;

  ClearErrorBuilder();

  @override
  void replace(ClearError other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ClearError;
  }

  @override
  void update(void Function(ClearErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClearError build() => _build();

  _$ClearError _build() {
    final _$result = _$v ?? new _$ClearError._();
    replace(_$result);
    return _$result;
  }
}

class _$ChangeRoleValue extends ChangeRoleValue {
  @override
  final String? value;

  factory _$ChangeRoleValue([void Function(ChangeRoleValueBuilder)? updates]) =>
      (new ChangeRoleValueBuilder()..update(updates))._build();

  _$ChangeRoleValue._({this.value}) : super._();

  @override
  ChangeRoleValue rebuild(void Function(ChangeRoleValueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangeRoleValueBuilder toBuilder() =>
      new ChangeRoleValueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangeRoleValue && value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChangeRoleValue')
          ..add('value', value))
        .toString();
  }
}

class ChangeRoleValueBuilder
    implements Builder<ChangeRoleValue, ChangeRoleValueBuilder> {
  _$ChangeRoleValue? _$v;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  ChangeRoleValueBuilder();

  ChangeRoleValueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChangeRoleValue other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChangeRoleValue;
  }

  @override
  void update(void Function(ChangeRoleValueBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChangeRoleValue build() => _build();

  _$ChangeRoleValue _build() {
    final _$result = _$v ?? new _$ChangeRoleValue._(value: value);
    replace(_$result);
    return _$result;
  }
}

class _$ChangeInterestValue extends ChangeInterestValue {
  @override
  final String? value;

  factory _$ChangeInterestValue(
          [void Function(ChangeInterestValueBuilder)? updates]) =>
      (new ChangeInterestValueBuilder()..update(updates))._build();

  _$ChangeInterestValue._({this.value}) : super._();

  @override
  ChangeInterestValue rebuild(
          void Function(ChangeInterestValueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangeInterestValueBuilder toBuilder() =>
      new ChangeInterestValueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangeInterestValue && value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChangeInterestValue')
          ..add('value', value))
        .toString();
  }
}

class ChangeInterestValueBuilder
    implements Builder<ChangeInterestValue, ChangeInterestValueBuilder> {
  _$ChangeInterestValue? _$v;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  ChangeInterestValueBuilder();

  ChangeInterestValueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChangeInterestValue other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChangeInterestValue;
  }

  @override
  void update(void Function(ChangeInterestValueBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChangeInterestValue build() => _build();

  _$ChangeInterestValue _build() {
    final _$result = _$v ?? new _$ChangeInterestValue._(value: value);
    replace(_$result);
    return _$result;
  }
}

class _$SelectItemInList extends SelectItemInList {
  @override
  final int? Index;

  factory _$SelectItemInList(
          [void Function(SelectItemInListBuilder)? updates]) =>
      (new SelectItemInListBuilder()..update(updates))._build();

  _$SelectItemInList._({this.Index}) : super._();

  @override
  SelectItemInList rebuild(void Function(SelectItemInListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SelectItemInListBuilder toBuilder() =>
      new SelectItemInListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SelectItemInList && Index == other.Index;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, Index.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SelectItemInList')
          ..add('Index', Index))
        .toString();
  }
}

class SelectItemInListBuilder
    implements Builder<SelectItemInList, SelectItemInListBuilder> {
  _$SelectItemInList? _$v;

  int? _Index;
  int? get Index => _$this._Index;
  set Index(int? Index) => _$this._Index = Index;

  SelectItemInListBuilder();

  SelectItemInListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _Index = $v.Index;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SelectItemInList other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SelectItemInList;
  }

  @override
  void update(void Function(SelectItemInListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SelectItemInList build() => _build();

  _$SelectItemInList _build() {
    final _$result = _$v ?? new _$SelectItemInList._(Index: Index);
    replace(_$result);
    return _$result;
  }
}

class _$PostSignUp extends PostSignUp {
  @override
  final String? Email;
  @override
  final String? password;
  @override
  final String? fcmToken;
  @override
  final String? first_name;
  @override
  final String? last_name;
  @override
  final int? Genter;
  @override
  final String? background_color;
  @override
  final String? bio;
  @override
  final String? birth_date;
  @override
  final List<int>? interests;
  @override
  final int? avatarID;
  @override
  final String? alias;
  @override
  final String? Image;

  factory _$PostSignUp([void Function(PostSignUpBuilder)? updates]) =>
      (new PostSignUpBuilder()..update(updates))._build();

  _$PostSignUp._(
      {this.Email,
      this.password,
      this.fcmToken,
      this.first_name,
      this.last_name,
      this.Genter,
      this.background_color,
      this.bio,
      this.birth_date,
      this.interests,
      this.avatarID,
      this.alias,
      this.Image})
      : super._();

  @override
  PostSignUp rebuild(void Function(PostSignUpBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostSignUpBuilder toBuilder() => new PostSignUpBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostSignUp &&
        Email == other.Email &&
        password == other.password &&
        fcmToken == other.fcmToken &&
        first_name == other.first_name &&
        last_name == other.last_name &&
        Genter == other.Genter &&
        background_color == other.background_color &&
        bio == other.bio &&
        birth_date == other.birth_date &&
        interests == other.interests &&
        avatarID == other.avatarID &&
        alias == other.alias &&
        Image == other.Image;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, Email.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, fcmToken.hashCode);
    _$hash = $jc(_$hash, first_name.hashCode);
    _$hash = $jc(_$hash, last_name.hashCode);
    _$hash = $jc(_$hash, Genter.hashCode);
    _$hash = $jc(_$hash, background_color.hashCode);
    _$hash = $jc(_$hash, bio.hashCode);
    _$hash = $jc(_$hash, birth_date.hashCode);
    _$hash = $jc(_$hash, interests.hashCode);
    _$hash = $jc(_$hash, avatarID.hashCode);
    _$hash = $jc(_$hash, alias.hashCode);
    _$hash = $jc(_$hash, Image.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PostSignUp')
          ..add('Email', Email)
          ..add('password', password)
          ..add('fcmToken', fcmToken)
          ..add('first_name', first_name)
          ..add('last_name', last_name)
          ..add('Genter', Genter)
          ..add('background_color', background_color)
          ..add('bio', bio)
          ..add('birth_date', birth_date)
          ..add('interests', interests)
          ..add('avatarID', avatarID)
          ..add('alias', alias)
          ..add('Image', Image))
        .toString();
  }
}

class PostSignUpBuilder implements Builder<PostSignUp, PostSignUpBuilder> {
  _$PostSignUp? _$v;

  String? _Email;
  String? get Email => _$this._Email;
  set Email(String? Email) => _$this._Email = Email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _fcmToken;
  String? get fcmToken => _$this._fcmToken;
  set fcmToken(String? fcmToken) => _$this._fcmToken = fcmToken;

  String? _first_name;
  String? get first_name => _$this._first_name;
  set first_name(String? first_name) => _$this._first_name = first_name;

  String? _last_name;
  String? get last_name => _$this._last_name;
  set last_name(String? last_name) => _$this._last_name = last_name;

  int? _Genter;
  int? get Genter => _$this._Genter;
  set Genter(int? Genter) => _$this._Genter = Genter;

  String? _background_color;
  String? get background_color => _$this._background_color;
  set background_color(String? background_color) =>
      _$this._background_color = background_color;

  String? _bio;
  String? get bio => _$this._bio;
  set bio(String? bio) => _$this._bio = bio;

  String? _birth_date;
  String? get birth_date => _$this._birth_date;
  set birth_date(String? birth_date) => _$this._birth_date = birth_date;

  List<int>? _interests;
  List<int>? get interests => _$this._interests;
  set interests(List<int>? interests) => _$this._interests = interests;

  int? _avatarID;
  int? get avatarID => _$this._avatarID;
  set avatarID(int? avatarID) => _$this._avatarID = avatarID;

  String? _alias;
  String? get alias => _$this._alias;
  set alias(String? alias) => _$this._alias = alias;

  String? _Image;
  String? get Image => _$this._Image;
  set Image(String? Image) => _$this._Image = Image;

  PostSignUpBuilder();

  PostSignUpBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _Email = $v.Email;
      _password = $v.password;
      _fcmToken = $v.fcmToken;
      _first_name = $v.first_name;
      _last_name = $v.last_name;
      _Genter = $v.Genter;
      _background_color = $v.background_color;
      _bio = $v.bio;
      _birth_date = $v.birth_date;
      _interests = $v.interests;
      _avatarID = $v.avatarID;
      _alias = $v.alias;
      _Image = $v.Image;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostSignUp other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PostSignUp;
  }

  @override
  void update(void Function(PostSignUpBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PostSignUp build() => _build();

  _$PostSignUp _build() {
    final _$result = _$v ??
        new _$PostSignUp._(
            Email: Email,
            password: password,
            fcmToken: fcmToken,
            first_name: first_name,
            last_name: last_name,
            Genter: Genter,
            background_color: background_color,
            bio: bio,
            birth_date: birth_date,
            interests: interests,
            avatarID: avatarID,
            alias: alias,
            Image: Image);
    replace(_$result);
    return _$result;
  }
}

class _$ChangeCharLength extends ChangeCharLength {
  @override
  final int? value;

  factory _$ChangeCharLength(
          [void Function(ChangeCharLengthBuilder)? updates]) =>
      (new ChangeCharLengthBuilder()..update(updates))._build();

  _$ChangeCharLength._({this.value}) : super._();

  @override
  ChangeCharLength rebuild(void Function(ChangeCharLengthBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangeCharLengthBuilder toBuilder() =>
      new ChangeCharLengthBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangeCharLength && value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChangeCharLength')
          ..add('value', value))
        .toString();
  }
}

class ChangeCharLengthBuilder
    implements Builder<ChangeCharLength, ChangeCharLengthBuilder> {
  _$ChangeCharLength? _$v;

  int? _value;
  int? get value => _$this._value;
  set value(int? value) => _$this._value = value;

  ChangeCharLengthBuilder();

  ChangeCharLengthBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChangeCharLength other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChangeCharLength;
  }

  @override
  void update(void Function(ChangeCharLengthBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChangeCharLength build() => _build();

  _$ChangeCharLength _build() {
    final _$result = _$v ?? new _$ChangeCharLength._(value: value);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
