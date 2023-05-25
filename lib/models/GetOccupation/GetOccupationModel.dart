//
library GetOccupationModel;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:thementr/models/GetOccupation/OccupationsListModel.dart';

import 'package:thementr/models/serializer/serializer.dart';



part 'GetOccupationModel.g.dart';

abstract class GetOccupationModel
    implements Built<GetOccupationModel,GetOccupationModelBuilder> {

  BuiltList<OccupationsListModel>? get occupations;


  GetOccupationModel._();
  factory GetOccupationModel([void Function(GetOccupationModelBuilder b)? updates]) =  _$GetOccupationModel;
  String toJson() {
    return json
        .encode(serializers.serializeWith(GetOccupationModel.serializer, this));
  }
  static GetOccupationModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        GetOccupationModel.serializer, json.decode(jsonString));
  }

  static Serializer<GetOccupationModel> get serializer => _$getOccupationModelSerializer;
}

