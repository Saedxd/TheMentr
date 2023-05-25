//
library EducationsListModel;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:thementr/models/UserDataModel/UserModel.dart';

import 'package:thementr/models/serializer/serializer.dart';



part 'EducationsListModel.g.dart';

abstract class EducationsListModel
    implements Built<EducationsListModel,EducationsListModelBuilder> {


  String? get schoolName;
  String? get educationLevel;
  int? get graduatedYear;
  String? get course;
  String? get id;

  EducationsListModel._();
  factory EducationsListModel([void Function(EducationsListModelBuilder b)? updates]) =  _$EducationsListModel;
  String toJson() {
    return json
        .encode(serializers.serializeWith(EducationsListModel.serializer, this));
  }
  static EducationsListModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        EducationsListModel.serializer, json.decode(jsonString));
  }

  static Serializer<EducationsListModel> get serializer => _$educationsListModelSerializer;
}

