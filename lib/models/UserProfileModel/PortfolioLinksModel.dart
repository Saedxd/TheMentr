//
//
library PortfolioLinksModel;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:thementr/models/UserDataModel/UserModel.dart';

import 'package:thementr/models/serializer/serializer.dart';



part 'PortfolioLinksModel.g.dart';

abstract class PortfolioLinksModel
    implements Built<PortfolioLinksModel,PortfolioLinksModelBuilder> {

  String? get linkName;
  String? get portfolioDesc;
  int? get link;
  String? get id;


  PortfolioLinksModel._();
  factory PortfolioLinksModel([void Function(PortfolioLinksModelBuilder b)? updates]) =  _$PortfolioLinksModel;
  String toJson() {
    return json
        .encode(serializers.serializeWith(PortfolioLinksModel.serializer, this));
  }
  static PortfolioLinksModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        PortfolioLinksModel.serializer, json.decode(jsonString));
  }

  static Serializer<PortfolioLinksModel> get serializer => _$portfolioLinksModelSerializer;
}

