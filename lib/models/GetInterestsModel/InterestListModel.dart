library InterestListModel;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
  
import 'package:thementr/models/serializer/serializer.dart';



part 'InterestListModel.g.dart';

abstract class InterestListModel
    implements Built<InterestListModel,InterestListModelBuilder> {

  String? get name;
  String? get category;
  String? get id;


  InterestListModel._();
  factory InterestListModel([void Function(InterestListModelBuilder b)? updates]) =  _$InterestListModel;
  String toJson() {
    return json
        .encode(serializers.serializeWith(InterestListModel.serializer, this));
  }
  static InterestListModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        InterestListModel.serializer, json.decode(jsonString));
  }

  static Serializer<InterestListModel> get serializer => _$interestListModelSerializer;
}

