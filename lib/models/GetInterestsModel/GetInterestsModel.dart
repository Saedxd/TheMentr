library GetInterestsModel;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:thementr/models/GetInterestsModel/InterestListModel.dart';
  
import 'package:thementr/models/serializer/serializer.dart';



part 'GetInterestsModel.g.dart';

abstract class GetInterestsModel
    implements Built<GetInterestsModel,GetInterestsModelBuilder> {

 BuiltList<InterestListModel>? get interestList;

  GetInterestsModel._();
  factory GetInterestsModel([void Function(GetInterestsModelBuilder b)? updates]) =  _$GetInterestsModel;
  String toJson() {
    return json
        .encode(serializers.serializeWith(GetInterestsModel.serializer, this));
  }
  static GetInterestsModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        GetInterestsModel.serializer, json.decode(jsonString));
  }

  static Serializer<GetInterestsModel> get serializer => _$getInterestsModelSerializer;
}

