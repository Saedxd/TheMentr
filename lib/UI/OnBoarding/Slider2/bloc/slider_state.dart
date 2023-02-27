library slider_state;

import 'dart:convert';


import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'slider_state.g.dart';

abstract class SliderState implements Built<SliderState, SliderStateBuilder> {
  // fields go here

  int? get Pageindex;
  String? get error;
  bool? get isLoading;
  bool? get success;
  // UserData? get data;
  // PermissionsModel? get Permissions;

  List<String>? get countries;
  SliderState._();

  factory SliderState([updates(SliderStateBuilder b)]) = _$SliderState;

  factory SliderState.initail() {
    return SliderState((b) => b
      ..error = ""
      ..isLoading = false
      ..success = false
      ..Pageindex = 0
      // ..data = null
      //   ..Permissions = null
      //   ..countries = []

    );
  }
}
