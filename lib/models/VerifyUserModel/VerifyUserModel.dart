//
library VerifyUserModel;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'package:thementr/models/serializer/serializer.dart';



part 'VerifyUserModel.g.dart';

abstract class VerifyUserModel
    implements Built<VerifyUserModel,VerifyUserModelBuilder> {

  String? get message;
  String? get error;

  VerifyUserModel._();
  factory VerifyUserModel([void Function(VerifyUserModelBuilder b)? updates]) =  _$VerifyUserModel;
  String toJson() {
    return json
        .encode(serializers.serializeWith(VerifyUserModel.serializer, this));
  }
  static VerifyUserModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        VerifyUserModel.serializer, json.decode(jsonString));
  }

  static Serializer<VerifyUserModel> get serializer => _$verifyUserModelSerializer;
}

