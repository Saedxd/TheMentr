//{
//     "roles": [
//         {
//             "_id": "6443190bc0a5e1f1657565ec",
//             "name": "mentor"
//         },
//         {
//             "_id": "64431926c0a5e1f1657565ed",
//             "name": "mentee"
//         }
//     ]
// }

library GetRolesModel;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:thementr/models/GetRolesModel/RolesListModel.dart';

import 'package:thementr/models/serializer/serializer.dart';



part 'GetRolesModel.g.dart';

abstract class GetRolesModel
    implements Built<GetRolesModel,GetRolesModelBuilder> {

  BuiltList<RolesListModel>? get roles;

  GetRolesModel._();
  factory GetRolesModel([void Function(GetRolesModelBuilder b)? updates]) =  _$GetRolesModel;
  String toJson() {
    return json
        .encode(serializers.serializeWith(GetRolesModel.serializer, this));
  }
  static GetRolesModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        GetRolesModel.serializer, json.decode(jsonString));
  }

  static Serializer<GetRolesModel> get serializer => _$getRolesModelSerializer;
}

