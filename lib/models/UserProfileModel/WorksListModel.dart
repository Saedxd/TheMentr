//
//
library WorksListModel;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:thementr/models/UserDataModel/UserModel.dart';

import 'package:thementr/models/serializer/serializer.dart';



part 'WorksListModel.g.dart';

abstract class WorksListModel
    implements Built<WorksListModel,WorksListModelBuilder> {

  String? get workPlaceName;
  String? get positionHeld;
  int? get endDate;
  String? get id;


  WorksListModel._();
  factory WorksListModel([void Function(WorksListModelBuilder b)? updates]) =  _$WorksListModel;
  String toJson() {
    return json
        .encode(serializers.serializeWith(WorksListModel.serializer, this));
  }
  static WorksListModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        WorksListModel.serializer, json.decode(jsonString));
  }

  static Serializer<WorksListModel> get serializer => _$worksListModelSerializer;
}

