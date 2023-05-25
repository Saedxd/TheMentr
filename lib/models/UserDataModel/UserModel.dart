//
library UserModel;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
  
import 'package:thementr/models/UserDataModel/LastLocationModel.dart';
import 'package:thementr/models/serializer/serializer.dart';



part 'UserModel.g.dart';

abstract class UserModel
    implements Built<UserModel,UserModelBuilder> {


  String? get firstName;
 // String? get token;
  String? get lastName;
  String? get email;
  String? get password;
  bool? get isVerified;
  String? get createdAt;
  String? get updatedAt;
  String? get id;
  String? get provider;
  String? get lastDevice;
  String? get lastLogin;
 // LastLocationModel? get lastLocation;


//     "lastLocation": {
//     },
//     "following": [],


  UserModel._();
  factory UserModel([void Function(UserModelBuilder b)? updates]) =  _$UserModel;
  String toJson() {
    return json
        .encode(serializers.serializeWith(UserModel.serializer, this));
  }
  static UserModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        UserModel.serializer, json.decode(jsonString));
  }

  static Serializer<UserModel> get serializer => _$userModelSerializer;
}

