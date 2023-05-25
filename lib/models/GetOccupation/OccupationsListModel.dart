//
//
library OccupationsListModel;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'package:thementr/models/serializer/serializer.dart';



part 'OccupationsListModel.g.dart';

abstract class OccupationsListModel
    implements Built<OccupationsListModel,OccupationsListModelBuilder> {

  String? get occupation;
  int? get id;

  OccupationsListModel._();
  factory OccupationsListModel([void Function(OccupationsListModelBuilder b)? updates]) =  _$OccupationsListModel;
  String toJson() {
    return json
        .encode(serializers.serializeWith(OccupationsListModel.serializer, this));
  }
  static OccupationsListModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        OccupationsListModel.serializer, json.decode(jsonString));
  }


  static Serializer<OccupationsListModel> get serializer => _$occupationsListModelSerializer;
}

