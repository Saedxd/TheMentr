library NewPassword_state;

import 'dart:convert';


import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:thementr/models/ResetPasswordModel/ResetPasswordModel.dart';
import 'package:thementr/models/UserDataModel/UserDataModel.dart';

part 'NewPassword_state.g.dart';

abstract class NewPasswordState implements Built<NewPasswordState, NewPasswordStateBuilder> {
  // fields go here

  String? get error;
  bool? get isLoading;
  bool? get success;

  ResetPasswordModel? get ResetPassword;

  NewPasswordState._();

  factory NewPasswordState([updates(NewPasswordStateBuilder b)]) = _$NewPasswordState;

  factory NewPasswordState.initail() {
    return NewPasswordState((b) => b
      ..error = ""
      ..isLoading = false
      ..success = false
      ..ResetPassword = null



    );
  }
}
