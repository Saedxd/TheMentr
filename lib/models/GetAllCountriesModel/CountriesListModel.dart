//
//
library CountriesListModel;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:thementr/models/GetAllCountriesModel/StatesListModel.dart';
import 'package:thementr/models/serializer/serializer.dart';

part 'CountriesListModel.g.dart';

abstract class CountriesListModel
    implements Built<CountriesListModel, CountriesListModelBuilder> {

  String? get id;
  String? get name;
  BuiltList<StatesListModel>? get states;

  CountriesListModel._();

  factory CountriesListModel(
      [void Function(CountriesListModelBuilder b)? updates]) =
  _$CountriesListModel;

  String toJson() {
    return json.encode(
        serializers.serializeWith(CountriesListModel.serializer, this));
  }

  static CountriesListModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        CountriesListModel.serializer, json.decode(jsonString));
  }

  static Serializer<CountriesListModel> get serializer =>
      _$countriesListModelSerializer;
}
