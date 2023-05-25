library UserProfileModel;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:thementr/models/UserDataModel/UserModel.dart';
import 'package:thementr/models/UserProfileModel/EducationsListModel.dart';
import 'package:thementr/models/UserProfileModel/PortfolioLinksModel.dart';
import 'package:thementr/models/UserProfileModel/WorksListModel.dart';
  
import 'package:thementr/models/serializer/serializer.dart';



part 'UserProfileModel.g.dart';

abstract class UserProfileModel
    implements Built<UserProfileModel,UserProfileModelBuilder> {

  UserModel? get user;
  String? get role;
  String? get occupation;
  String? get goal;
  String? get id;
  String? get yearOfExperience;
  BuiltList<EducationsListModel>? get educations;
  BuiltList<WorksListModel>? get works;
  BuiltList<PortfolioLinksModel>? get portfolioLinks;
  List<String>? get languages;
  List<String>? get interests;
  List<String>? get hobbies;

  UserProfileModel._();
  factory UserProfileModel([void Function(UserProfileModelBuilder b)? updates]) =  _$UserProfileModel;
  String toJson() {
    return json
        .encode(serializers.serializeWith(UserProfileModel.serializer, this));
  }
  static UserProfileModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        UserProfileModel.serializer, json.decode(jsonString));
  }

  static Serializer<UserProfileModel> get serializer => _$userProfileModelSerializer;
}

