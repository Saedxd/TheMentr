// ignore_for_file: file_names

library SignUp_state;

import 'dart:convert';
import 'dart:io';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:thementr/Core/Classes/Classes.dart';
import 'package:thementr/models/GetAllCountriesModel/GetAllCountriesModel.dart';
import 'package:thementr/models/GetInterestsModel/GetInterestsModel.dart';
import 'package:thementr/models/GetOccupation/GetOccupationModel.dart';
import 'package:thementr/models/GetRolesModel/GetRolesModel.dart';
import 'package:thementr/models/GetSkillsModel/GetSkillsModel.dart';
import 'package:thementr/models/UserDataModel/UserDataModel.dart';
part 'SignUp_state.g.dart';

abstract class SignUpState implements Built<SignUpState, SignUpStateBuilder> {

  String? get error;
  bool? get isLoading;
  bool? get OldValues_isLoading;
  bool? get success;
  bool? get ValidateSkill_List;
  int? get CharLength;
  String? get SelectedRoleValue;
  String? get SelectedInterestValue;

  String? get SelectedCityValue;
  String? get SelectedCountryValue;

  List<bool>? get SelectedListItems;
  List<bool>? get MentorInfoListAdded;
  List<bool>? get SelectedInterestItems;
  List<int>? get SelectedIntersetIDs;
  List<Skills>? get Skill_List;

  GetRolesModel? get Roles;
  GetInterestsModel? get Interests;
  GetSkillsModel? get Skillss;
  UserDataModel? get User;
  GetOccupationModel? get GetOccupations;
  GetAllCountriesModel? get GetAllCountries;

  List<String>? get Roles_Values;
  List<String>? get Interest_VaLues;
  List<String>? get Skills_VaLues;

  List<String>? get Cities;
  List<String>? get Country_Cities;
  List<String>? get Countries;




  SignUpState._();
  factory SignUpState([updates(SignUpStateBuilder b)]) = _$SignUpState;
  factory SignUpState.initail() {
    return SignUpState((b) => b
      ..error = ""
      ..SelectedInterestValue = ""
      ..SelectedRoleValue = ""
      ..SelectedCityValue = ""
      ..SelectedCountryValue = ""
      ..isLoading = false
      ..OldValues_isLoading = false
      ..Roles = null
      ..Interests = null
      ..Skillss = null
      ..User = null
      ..GetAllCountries = null
      ..GetOccupations = null
      ..success = false
      ..ValidateSkill_List = false
      ..CharLength = 0
      ..SelectedListItems = List.filled(250, false)
      ..MentorInfoListAdded = List.filled(6 ,false)
      ..SelectedInterestItems = List.filled(250, false)
      ..SelectedIntersetIDs = []
      ..Country_Cities = []
      ..Countries = []
      ..Cities = []
      ..Skill_List = []
      ..Roles_Values = []
      ..Interest_VaLues = []
      ..Skills_VaLues = []
    );
  }
}
