//SkillsListModel
//

library SkillsListModel;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:thementr/models/serializer/serializer.dart';



part 'SkillsListModel.g.dart';

abstract class SkillsListModel
    implements Built<SkillsListModel,SkillsListModelBuilder> {

  String? get name;
  String? get category;
  String? get relatedInterest;
  String? get id;


  SkillsListModel._();
  factory SkillsListModel([void Function(SkillsListModelBuilder b)? updates]) =  _$SkillsListModel;
  String toJson() {
    return json
        .encode(serializers.serializeWith(SkillsListModel.serializer, this));
  }
  static SkillsListModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        SkillsListModel.serializer, json.decode(jsonString));
  }

  static Serializer<SkillsListModel> get serializer => _$skillsListModelSerializer;
}

