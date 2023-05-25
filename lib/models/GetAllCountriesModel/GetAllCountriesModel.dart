//
library GetAllCountriesModel;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:thementr/models/GetAllCountriesModel/CountriesListModel.dart';
import 'package:thementr/models/serializer/serializer.dart';

part 'GetAllCountriesModel.g.dart';

abstract class GetAllCountriesModel
    implements Built<GetAllCountriesModel, GetAllCountriesModelBuilder> {

  BuiltList<CountriesListModel>? get countries;
  // String? get id;
  // String? get name;
  // List<String>? get states;

  GetAllCountriesModel._();

  factory GetAllCountriesModel(
          [void Function(GetAllCountriesModelBuilder b)? updates]) =
      _$GetAllCountriesModel;

  String toJson() {
    return json.encode(
        serializers.serializeWith(GetAllCountriesModel.serializer, this));
  }

  static GetAllCountriesModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        GetAllCountriesModel.serializer, json.decode(jsonString));
  }

  static Serializer<GetAllCountriesModel> get serializer =>
      _$getAllCountriesModelSerializer;
}
