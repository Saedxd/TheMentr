//
//
library StatesListModel;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:thementr/models/serializer/serializer.dart';

part 'StatesListModel.g.dart';

abstract class StatesListModel
    implements Built<StatesListModel, StatesListModelBuilder> {

  String? get name;
  String? get country;

  StatesListModel._();

  factory StatesListModel(
      [void Function(StatesListModelBuilder b)? updates]) =
  _$StatesListModel;

  String toJson() {
    return json.encode(
        serializers.serializeWith(StatesListModel.serializer, this));
  }

  static StatesListModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        StatesListModel.serializer, json.decode(jsonString));
  }

  static Serializer<StatesListModel> get serializer =>
      _$statesListModelSerializer;
}
