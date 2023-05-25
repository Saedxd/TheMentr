//
//
library ValidateOTPModel;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'package:thementr/models/serializer/serializer.dart';



part 'ValidateOTPModel.g.dart';

abstract class ValidateOTPModel
    implements Built<ValidateOTPModel,ValidateOTPModelBuilder> {

  String? get message;
  String? get error;

  ValidateOTPModel._();
  factory ValidateOTPModel([void Function(ValidateOTPModelBuilder b)? updates]) =  _$ValidateOTPModel;
  String toJson() {
    return json
        .encode(serializers.serializeWith(ValidateOTPModel.serializer, this));
  }
  static ValidateOTPModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        ValidateOTPModel.serializer, json.decode(jsonString));
  }

  static Serializer<ValidateOTPModel> get serializer => _$validateOTPModelSerializer;
}

