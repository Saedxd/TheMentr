
library OtpForResetPasswordModel;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:thementr/models/serializer/serializer.dart';



part 'OtpForResetPasswordModel.g.dart';

abstract class OtpForResetPasswordModel
    implements Built<OtpForResetPasswordModel,OtpForResetPasswordModelBuilder> {

  String? get message;
  String? get error;


  OtpForResetPasswordModel._();
  factory OtpForResetPasswordModel([void Function(OtpForResetPasswordModelBuilder b)? updates]) =  _$OtpForResetPasswordModel;
  String toJson() {
    return json
        .encode(serializers.serializeWith(OtpForResetPasswordModel.serializer, this));
  }
  static OtpForResetPasswordModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        OtpForResetPasswordModel.serializer, json.decode(jsonString));
  }

  static Serializer<OtpForResetPasswordModel> get serializer => _$otpForResetPasswordModelSerializer;
}

