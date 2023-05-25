library RolesListModel;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:thementr/models/serializer/serializer.dart';



part 'RolesListModel.g.dart';

abstract class RolesListModel
    implements Built<RolesListModel,RolesListModelBuilder> {


  String? get id;
  String? get name;

  RolesListModel._();
  factory RolesListModel([void Function(RolesListModelBuilder b)? updates]) =  _$RolesListModel;
  String toJson() {
    return json
        .encode(serializers.serializeWith(RolesListModel.serializer, this));
  }
  static RolesListModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        RolesListModel.serializer, json.decode(jsonString));
  }


  static Serializer<RolesListModel> get serializer => _$rolesListModelSerializer;
}

