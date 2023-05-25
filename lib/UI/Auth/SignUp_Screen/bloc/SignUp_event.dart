// ignore_for_file: file_names

library SignUp_event;

import 'dart:convert';
import 'dart:io';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'SignUp_event.g.dart';

abstract class SignUpEvent {}



abstract class ClearError extends SignUpEvent
    implements Built<ClearError, ClearErrorBuilder> {

  ClearError._();
  factory ClearError([updates(ClearErrorBuilder b)]) = _$ClearError;
}
abstract class ChangeRoleValue extends SignUpEvent
    implements Built<ChangeRoleValue, ChangeRoleValueBuilder> {
  ChangeRoleValue._();
  String? get value;
  factory ChangeRoleValue([updates(ChangeRoleValueBuilder b)]) = _$ChangeRoleValue;
}
abstract class ChangeInterestValue extends SignUpEvent
    implements Built<ChangeInterestValue, ChangeInterestValueBuilder> {
  ChangeInterestValue._();
  String? get value;
  factory ChangeInterestValue([updates(ChangeInterestValueBuilder b)]) = _$ChangeInterestValue;
}
abstract class SelectItemInList extends SignUpEvent
    implements Built<SelectItemInList, SelectItemInListBuilder> {
  SelectItemInList._();
  int? get Index;
  factory SelectItemInList([updates(SelectItemInListBuilder b)]) = _$SelectItemInList;
}
abstract class PostSignUp extends SignUpEvent
    implements Built<PostSignUp,PostSignUpBuilder> {
    String? get Email;
    String? get password;
    String? get  fcmToken;
    String? get first_name;
    String? get last_name;


  PostSignUp._();
  factory PostSignUp([updates(PostSignUpBuilder b)]) = _$PostSignUp;
}

abstract class ChangeCharLength extends SignUpEvent
    implements Built<ChangeCharLength, ChangeCharLengthBuilder> {
  ChangeCharLength._();
  int? get value;
  factory ChangeCharLength([updates(ChangeCharLengthBuilder b)]) = _$ChangeCharLength;
}

abstract class MentorInfoStatusChange extends SignUpEvent
    implements Built<MentorInfoStatusChange,MentorInfoStatusChangeBuilder> {
  int? get Index;
  bool? get value;

  MentorInfoStatusChange._();
  factory MentorInfoStatusChange([updates(MentorInfoStatusChangeBuilder b)]) = _$MentorInfoStatusChange;
}

abstract class ChangeSelectedInInterest extends SignUpEvent
    implements Built<ChangeSelectedInInterest, ChangeSelectedInInterestBuilder> {
  ChangeSelectedInInterest._();
  int? get Index;
  int? get ID;
  bool? get value;
  factory ChangeSelectedInInterest([updates(ChangeSelectedInInterestBuilder b)]) = _$ChangeSelectedInInterest;
}
abstract class ValidateSkill_List extends SignUpEvent
    implements Built<ValidateSkill_List,ValidateSkill_ListBuilder> {
  ValidateSkill_List._();

  factory ValidateSkill_List([updates(ValidateSkill_ListBuilder b)]) = _$ValidateSkill_List;
}

abstract class AddSkill_List extends SignUpEvent
    implements Built<AddSkill_List,AddSkill_ListBuilder> {
  AddSkill_List._();

  factory AddSkill_List([updates(AddSkill_ListBuilder b)]) = _$AddSkill_List;
}




abstract class GetInterests extends SignUpEvent
    implements Built<GetInterests, GetInterestsBuilder> {
  GetInterests._();

  factory GetInterests([updates(GetInterestsBuilder b)]) = _$GetInterests;
}


abstract class GetRoles extends SignUpEvent
    implements Built<GetRoles, GetRolesBuilder> {
  GetRoles._();

  factory GetRoles([updates(GetRolesBuilder b)]) = _$GetRoles;
}


abstract class getSkills extends SignUpEvent
    implements Built<getSkills, getSkillsBuilder> {
  getSkills._();

  String? get interest;
  factory getSkills([updates(getSkillsBuilder b)]) = _$getSkills;
}

abstract class GetAllCountries extends SignUpEvent
    implements Built<GetAllCountries, GetAllCountriesBuilder> {
  GetAllCountries._();

  factory GetAllCountries([updates(GetAllCountriesBuilder b)]) = _$GetAllCountries;
}

abstract class GetOccupations extends SignUpEvent
    implements Built<GetOccupations, GetOccupationsBuilder> {
  GetOccupations._();
  String? get Keyword;
  factory GetOccupations([updates(GetOccupationsBuilder b)]) = _$GetOccupations;
}



abstract class ChangeCountryCitiesList extends SignUpEvent
    implements Built<ChangeCountryCitiesList, ChangeCountryCitiesListBuilder> {
  ChangeCountryCitiesList._();

  String? get Country;
  factory ChangeCountryCitiesList([updates(ChangeCountryCitiesListBuilder b)]) = _$ChangeCountryCitiesList;
}


abstract class ChangeCityValue extends SignUpEvent
    implements Built<ChangeCityValue,ChangeCityValueBuilder> {
  ChangeCityValue._();

  String? get Value;
  factory ChangeCityValue([updates(ChangeCityValueBuilder b)]) = _$ChangeCityValue;
}


abstract class ChangeCountryValue extends SignUpEvent
    implements Built<ChangeCountryValue,ChangeCountryValueBuilder> {
  ChangeCountryValue._();

  String? get Value;
  factory ChangeCountryValue([updates(ChangeCountryValueBuilder b)]) = _$ChangeCountryValue;
}

