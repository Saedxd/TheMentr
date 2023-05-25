//
//
//

library ResetPasswordModel;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'package:thementr/models/serializer/serializer.dart';


part 'ResetPasswordModel.g.dart';

abstract class ResetPasswordModel
    implements Built<ResetPasswordModel,ResetPasswordModelBuilder> {

  String? get message;
  String? get error;



  ResetPasswordModel._();
  factory ResetPasswordModel([void Function(ResetPasswordModelBuilder b)? updates]) =  _$ResetPasswordModel;
  String toJson() {
    return json
        .encode(serializers.serializeWith(ResetPasswordModel.serializer, this));
  }
  static ResetPasswordModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        ResetPasswordModel.serializer, json.decode(jsonString));
  }

  static Serializer<ResetPasswordModel> get serializer => _$resetPasswordModelSerializer;
}

