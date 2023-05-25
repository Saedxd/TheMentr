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

  factory _$PostSignUp([void Function(PostSignUpBuilder)? updates]) =>
      (new PostSignUpBuilder()..update(updates))._build();

  _$PostSignUp._(
      {this.Email,
      this.password,
      this.fcmToken,
      this.first_name,
      this.last_name})
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
        last_name == other.last_name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, Email.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, fcmToken.hashCode);
    _$hash = $jc(_$hash, first_name.hashCode);
    _$hash = $jc(_$hash, last_name.hashCode);
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
          ..add('last_name', last_name))
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

  PostSignUpBuilder();

  PostSignUpBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _Email = $v.Email;
      _password = $v.password;
      _fcmToken = $v.fcmToken;
      _first_name = $v.first_name;
      _last_name = $v.last_name;
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
            last_name: last_name);
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

class _$MentorInfoStatusChange extends MentorInfoStatusChange {
  @override
  final int? Index;
  @override
  final bool? value;

  factory _$MentorInfoStatusChange(
          [void Function(MentorInfoStatusChangeBuilder)? updates]) =>
      (new MentorInfoStatusChangeBuilder()..update(updates))._build();

  _$MentorInfoStatusChange._({this.Index, this.value}) : super._();

  @override
  MentorInfoStatusChange rebuild(
          void Function(MentorInfoStatusChangeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MentorInfoStatusChangeBuilder toBuilder() =>
      new MentorInfoStatusChangeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MentorInfoStatusChange &&
        Index == other.Index &&
        value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, Index.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MentorInfoStatusChange')
          ..add('Index', Index)
          ..add('value', value))
        .toString();
  }
}

class MentorInfoStatusChangeBuilder
    implements Builder<MentorInfoStatusChange, MentorInfoStatusChangeBuilder> {
  _$MentorInfoStatusChange? _$v;

  int? _Index;
  int? get Index => _$this._Index;
  set Index(int? Index) => _$this._Index = Index;

  bool? _value;
  bool? get value => _$this._value;
  set value(bool? value) => _$this._value = value;

  MentorInfoStatusChangeBuilder();

  MentorInfoStatusChangeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _Index = $v.Index;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MentorInfoStatusChange other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MentorInfoStatusChange;
  }

  @override
  void update(void Function(MentorInfoStatusChangeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MentorInfoStatusChange build() => _build();

  _$MentorInfoStatusChange _build() {
    final _$result =
        _$v ?? new _$MentorInfoStatusChange._(Index: Index, value: value);
    replace(_$result);
    return _$result;
  }
}

class _$ChangeSelectedInInterest extends ChangeSelectedInInterest {
  @override
  final int? Index;
  @override
  final int? ID;
  @override
  final bool? value;

  factory _$ChangeSelectedInInterest(
          [void Function(ChangeSelectedInInterestBuilder)? updates]) =>
      (new ChangeSelectedInInterestBuilder()..update(updates))._build();

  _$ChangeSelectedInInterest._({this.Index, this.ID, this.value}) : super._();

  @override
  ChangeSelectedInInterest rebuild(
          void Function(ChangeSelectedInInterestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangeSelectedInInterestBuilder toBuilder() =>
      new ChangeSelectedInInterestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangeSelectedInInterest &&
        Index == other.Index &&
        ID == other.ID &&
        value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, Index.hashCode);
    _$hash = $jc(_$hash, ID.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChangeSelectedInInterest')
          ..add('Index', Index)
          ..add('ID', ID)
          ..add('value', value))
        .toString();
  }
}

class ChangeSelectedInInterestBuilder
    implements
        Builder<ChangeSelectedInInterest, ChangeSelectedInInterestBuilder> {
  _$ChangeSelectedInInterest? _$v;

  int? _Index;
  int? get Index => _$this._Index;
  set Index(int? Index) => _$this._Index = Index;

  int? _ID;
  int? get ID => _$this._ID;
  set ID(int? ID) => _$this._ID = ID;

  bool? _value;
  bool? get value => _$this._value;
  set value(bool? value) => _$this._value = value;

  ChangeSelectedInInterestBuilder();

  ChangeSelectedInInterestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _Index = $v.Index;
      _ID = $v.ID;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChangeSelectedInInterest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChangeSelectedInInterest;
  }

  @override
  void update(void Function(ChangeSelectedInInterestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChangeSelectedInInterest build() => _build();

  _$ChangeSelectedInInterest _build() {
    final _$result = _$v ??
        new _$ChangeSelectedInInterest._(Index: Index, ID: ID, value: value);
    replace(_$result);
    return _$result;
  }
}

class _$ValidateSkill_List extends ValidateSkill_List {
  factory _$ValidateSkill_List(
          [void Function(ValidateSkill_ListBuilder)? updates]) =>
      (new ValidateSkill_ListBuilder()..update(updates))._build();

  _$ValidateSkill_List._() : super._();

  @override
  ValidateSkill_List rebuild(
          void Function(ValidateSkill_ListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ValidateSkill_ListBuilder toBuilder() =>
      new ValidateSkill_ListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ValidateSkill_List;
  }

  @override
  int get hashCode {
    return 706845158;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'ValidateSkill_List').toString();
  }
}

class ValidateSkill_ListBuilder
    implements Builder<ValidateSkill_List, ValidateSkill_ListBuilder> {
  _$ValidateSkill_List? _$v;

  ValidateSkill_ListBuilder();

  @override
  void replace(ValidateSkill_List other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ValidateSkill_List;
  }

  @override
  void update(void Function(ValidateSkill_ListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ValidateSkill_List build() => _build();

  _$ValidateSkill_List _build() {
    final _$result = _$v ?? new _$ValidateSkill_List._();
    replace(_$result);
    return _$result;
  }
}

class _$AddSkill_List extends AddSkill_List {
  factory _$AddSkill_List([void Function(AddSkill_ListBuilder)? updates]) =>
      (new AddSkill_ListBuilder()..update(updates))._build();

  _$AddSkill_List._() : super._();

  @override
  AddSkill_List rebuild(void Function(AddSkill_ListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddSkill_ListBuilder toBuilder() => new AddSkill_ListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddSkill_List;
  }

  @override
  int get hashCode {
    return 354474661;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'AddSkill_List').toString();
  }
}

class AddSkill_ListBuilder
    implements Builder<AddSkill_List, AddSkill_ListBuilder> {
  _$AddSkill_List? _$v;

  AddSkill_ListBuilder();

  @override
  void replace(AddSkill_List other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AddSkill_List;
  }

  @override
  void update(void Function(AddSkill_ListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AddSkill_List build() => _build();

  _$AddSkill_List _build() {
    final _$result = _$v ?? new _$AddSkill_List._();
    replace(_$result);
    return _$result;
  }
}

class _$GetInterests extends GetInterests {
  factory _$GetInterests([void Function(GetInterestsBuilder)? updates]) =>
      (new GetInterestsBuilder()..update(updates))._build();

  _$GetInterests._() : super._();

  @override
  GetInterests rebuild(void Function(GetInterestsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetInterestsBuilder toBuilder() => new GetInterestsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetInterests;
  }

  @override
  int get hashCode {
    return 506979885;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GetInterests').toString();
  }
}

class GetInterestsBuilder
    implements Builder<GetInterests, GetInterestsBuilder> {
  _$GetInterests? _$v;

  GetInterestsBuilder();

  @override
  void replace(GetInterests other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetInterests;
  }

  @override
  void update(void Function(GetInterestsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetInterests build() => _build();

  _$GetInterests _build() {
    final _$result = _$v ?? new _$GetInterests._();
    replace(_$result);
    return _$result;
  }
}

class _$GetRoles extends GetRoles {
  factory _$GetRoles([void Function(GetRolesBuilder)? updates]) =>
      (new GetRolesBuilder()..update(updates))._build();

  _$GetRoles._() : super._();

  @override
  GetRoles rebuild(void Function(GetRolesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetRolesBuilder toBuilder() => new GetRolesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetRoles;
  }

  @override
  int get hashCode {
    return 358534068;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GetRoles').toString();
  }
}

class GetRolesBuilder implements Builder<GetRoles, GetRolesBuilder> {
  _$GetRoles? _$v;

  GetRolesBuilder();

  @override
  void replace(GetRoles other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetRoles;
  }

  @override
  void update(void Function(GetRolesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetRoles build() => _build();

  _$GetRoles _build() {
    final _$result = _$v ?? new _$GetRoles._();
    replace(_$result);
    return _$result;
  }
}

class _$getSkills extends getSkills {
  @override
  final String? interest;

  factory _$getSkills([void Function(getSkillsBuilder)? updates]) =>
      (new getSkillsBuilder()..update(updates))._build();

  _$getSkills._({this.interest}) : super._();

  @override
  getSkills rebuild(void Function(getSkillsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  getSkillsBuilder toBuilder() => new getSkillsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is getSkills && interest == other.interest;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, interest.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'getSkills')
          ..add('interest', interest))
        .toString();
  }
}

class getSkillsBuilder implements Builder<getSkills, getSkillsBuilder> {
  _$getSkills? _$v;

  String? _interest;
  String? get interest => _$this._interest;
  set interest(String? interest) => _$this._interest = interest;

  getSkillsBuilder();

  getSkillsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _interest = $v.interest;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(getSkills other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$getSkills;
  }

  @override
  void update(void Function(getSkillsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  getSkills build() => _build();

  _$getSkills _build() {
    final _$result = _$v ?? new _$getSkills._(interest: interest);
    replace(_$result);
    return _$result;
  }
}

class _$GetAllCountries extends GetAllCountries {
  factory _$GetAllCountries([void Function(GetAllCountriesBuilder)? updates]) =>
      (new GetAllCountriesBuilder()..update(updates))._build();

  _$GetAllCountries._() : super._();

  @override
  GetAllCountries rebuild(void Function(GetAllCountriesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetAllCountriesBuilder toBuilder() =>
      new GetAllCountriesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetAllCountries;
  }

  @override
  int get hashCode {
    return 587732709;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GetAllCountries').toString();
  }
}

class GetAllCountriesBuilder
    implements Builder<GetAllCountries, GetAllCountriesBuilder> {
  _$GetAllCountries? _$v;

  GetAllCountriesBuilder();

  @override
  void replace(GetAllCountries other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetAllCountries;
  }

  @override
  void update(void Function(GetAllCountriesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetAllCountries build() => _build();

  _$GetAllCountries _build() {
    final _$result = _$v ?? new _$GetAllCountries._();
    replace(_$result);
    return _$result;
  }
}

class _$GetOccupations extends GetOccupations {
  @override
  final String? Keyword;

  factory _$GetOccupations([void Function(GetOccupationsBuilder)? updates]) =>
      (new GetOccupationsBuilder()..update(updates))._build();

  _$GetOccupations._({this.Keyword}) : super._();

  @override
  GetOccupations rebuild(void Function(GetOccupationsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetOccupationsBuilder toBuilder() =>
      new GetOccupationsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetOccupations && Keyword == other.Keyword;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, Keyword.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetOccupations')
          ..add('Keyword', Keyword))
        .toString();
  }
}

class GetOccupationsBuilder
    implements Builder<GetOccupations, GetOccupationsBuilder> {
  _$GetOccupations? _$v;

  String? _Keyword;
  String? get Keyword => _$this._Keyword;
  set Keyword(String? Keyword) => _$this._Keyword = Keyword;

  GetOccupationsBuilder();

  GetOccupationsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _Keyword = $v.Keyword;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetOccupations other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetOccupations;
  }

  @override
  void update(void Function(GetOccupationsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetOccupations build() => _build();

  _$GetOccupations _build() {
    final _$result = _$v ?? new _$GetOccupations._(Keyword: Keyword);
    replace(_$result);
    return _$result;
  }
}

class _$ChangeCountryCitiesList extends ChangeCountryCitiesList {
  @override
  final String? Country;

  factory _$ChangeCountryCitiesList(
          [void Function(ChangeCountryCitiesListBuilder)? updates]) =>
      (new ChangeCountryCitiesListBuilder()..update(updates))._build();

  _$ChangeCountryCitiesList._({this.Country}) : super._();

  @override
  ChangeCountryCitiesList rebuild(
          void Function(ChangeCountryCitiesListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangeCountryCitiesListBuilder toBuilder() =>
      new ChangeCountryCitiesListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangeCountryCitiesList && Country == other.Country;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, Country.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChangeCountryCitiesList')
          ..add('Country', Country))
        .toString();
  }
}

class ChangeCountryCitiesListBuilder
    implements
        Builder<ChangeCountryCitiesList, ChangeCountryCitiesListBuilder> {
  _$ChangeCountryCitiesList? _$v;

  String? _Country;
  String? get Country => _$this._Country;
  set Country(String? Country) => _$this._Country = Country;

  ChangeCountryCitiesListBuilder();

  ChangeCountryCitiesListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _Country = $v.Country;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChangeCountryCitiesList other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChangeCountryCitiesList;
  }

  @override
  void update(void Function(ChangeCountryCitiesListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChangeCountryCitiesList build() => _build();

  _$ChangeCountryCitiesList _build() {
    final _$result = _$v ?? new _$ChangeCountryCitiesList._(Country: Country);
    replace(_$result);
    return _$result;
  }
}

class _$ChangeCityValue extends ChangeCityValue {
  @override
  final String? Value;

  factory _$ChangeCityValue([void Function(ChangeCityValueBuilder)? updates]) =>
      (new ChangeCityValueBuilder()..update(updates))._build();

  _$ChangeCityValue._({this.Value}) : super._();

  @override
  ChangeCityValue rebuild(void Function(ChangeCityValueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangeCityValueBuilder toBuilder() =>
      new ChangeCityValueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangeCityValue && Value == other.Value;
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
    return (newBuiltValueToStringHelper(r'ChangeCityValue')
          ..add('Value', Value))
        .toString();
  }
}

class ChangeCityValueBuilder
    implements Builder<ChangeCityValue, ChangeCityValueBuilder> {
  _$ChangeCityValue? _$v;

  String? _Value;
  String? get Value => _$this._Value;
  set Value(String? Value) => _$this._Value = Value;

  ChangeCityValueBuilder();

  ChangeCityValueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _Value = $v.Value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChangeCityValue other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChangeCityValue;
  }

  @override
  void update(void Function(ChangeCityValueBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChangeCityValue build() => _build();

  _$ChangeCityValue _build() {
    final _$result = _$v ?? new _$ChangeCityValue._(Value: Value);
    replace(_$result);
    return _$result;
  }
}

class _$ChangeCountryValue extends ChangeCountryValue {
  @override
  final String? Value;

  factory _$ChangeCountryValue(
          [void Function(ChangeCountryValueBuilder)? updates]) =>
      (new ChangeCountryValueBuilder()..update(updates))._build();

  _$ChangeCountryValue._({this.Value}) : super._();

  @override
  ChangeCountryValue rebuild(
          void Function(ChangeCountryValueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangeCountryValueBuilder toBuilder() =>
      new ChangeCountryValueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangeCountryValue && Value == other.Value;
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
    return (newBuiltValueToStringHelper(r'ChangeCountryValue')
          ..add('Value', Value))
        .toString();
  }
}

class ChangeCountryValueBuilder
    implements Builder<ChangeCountryValue, ChangeCountryValueBuilder> {
  _$ChangeCountryValue? _$v;

  String? _Value;
  String? get Value => _$this._Value;
  set Value(String? Value) => _$this._Value = Value;

  ChangeCountryValueBuilder();

  ChangeCountryValueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _Value = $v.Value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChangeCountryValue other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChangeCountryValue;
  }

  @override
  void update(void Function(ChangeCountryValueBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChangeCountryValue build() => _build();

  _$ChangeCountryValue _build() {
    final _$result = _$v ?? new _$ChangeCountryValue._(Value: Value);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
