library UserDataModel;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
  
import 'package:thementr/models/UserDataModel/UserModel.dart';
import 'package:thementr/models/serializer/serializer.dart';



part 'UserDataModel.g.dart';

abstract class UserDataModel
    implements Built<UserDataModel,UserDataModelBuilder> {

  String? get message;
  String? get token;
  String? get error;
  UserModel? get user;


  UserDataModel._();
  factory UserDataModel([void Function(UserDataModelBuilder b)? updates]) =  _$UserDataModel;
  String toJson() {
    return json
        .encode(serializers.serializeWith(UserDataModel.serializer, this));
  }
  static UserDataModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        UserDataModel.serializer, json.decode(jsonString));
  }

  static Serializer<UserDataModel> get serializer => _$userDataModelSerializer;
}

