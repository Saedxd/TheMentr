//
library LastLocationModel;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
  
import 'package:thementr/models/serializer/serializer.dart';



part 'LastLocationModel.g.dart';

abstract class LastLocationModel
    implements Built<LastLocationModel,LastLocationModelBuilder> {

  List<int>? get coordinates;



  LastLocationModel._();
  factory LastLocationModel([void Function(LastLocationModelBuilder b)? updates]) =  _$LastLocationModel;
  String toJson() {
    return json
        .encode(serializers.serializeWith(LastLocationModel.serializer, this));
  }
  static LastLocationModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        LastLocationModel.serializer, json.decode(jsonString));
  }

  static Serializer<LastLocationModel> get serializer => _$lastLocationModelSerializer;
}

