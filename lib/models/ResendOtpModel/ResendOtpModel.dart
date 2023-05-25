//
//

library ResendOtpModel;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'package:thementr/models/serializer/serializer.dart';



part 'ResendOtpModel.g.dart';

abstract class ResendOtpModel
    implements Built<ResendOtpModel,ResendOtpModelBuilder> {

  String? get message;
  String? get error;



  ResendOtpModel._();
  factory ResendOtpModel([void Function(ResendOtpModelBuilder b)? updates]) =  _$ResendOtpModel;
  String toJson() {
    return json
        .encode(serializers.serializeWith(ResendOtpModel.serializer, this));
  }
  static ResendOtpModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        ResendOtpModel.serializer, json.decode(jsonString));
  }

  static Serializer<ResendOtpModel> get serializer => _$resendOtpModelSerializer;
}

