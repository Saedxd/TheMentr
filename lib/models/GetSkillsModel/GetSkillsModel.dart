//

library GetSkillsModel;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:thementr/models/GetSkillsModel/SkillsListModel.dart';
import 'package:thementr/models/serializer/serializer.dart';



part 'GetSkillsModel.g.dart';

abstract class GetSkillsModel
    implements Built<GetSkillsModel,GetSkillsModelBuilder> {

  BuiltList<SkillsListModel>? get skills;


  GetSkillsModel._();
  factory GetSkillsModel([void Function(GetSkillsModelBuilder b)? updates]) =  _$GetSkillsModel;
  String toJson() {
    return json
        .encode(serializers.serializeWith(GetSkillsModel.serializer, this));
  }
  static GetSkillsModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        GetSkillsModel.serializer, json.decode(jsonString));
  }

  static Serializer<GetSkillsModel> get serializer => _$getSkillsModelSerializer;
}

