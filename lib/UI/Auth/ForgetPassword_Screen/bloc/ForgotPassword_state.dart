library ForgotPassword_state;

import 'dart:convert';


import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:thementr/models/OtpForResetPasswordModel/OtpForResetPasswordModel.dart';
import 'package:thementr/models/ResetPasswordModel/ResetPasswordModel.dart';

import 'package:thementr/models/UserDataModel/UserDataModel.dart';

part 'ForgotPassword_state.g.dart';

abstract class ForgotPasswordState implements Built<ForgotPasswordState, ForgotPasswordStateBuilder> {
  // fields go here

  String? get error;
  bool? get isLoading;
  bool? get success;
  OtpForResetPasswordModel? get ResetPassword;


  ForgotPasswordState._();

  factory ForgotPasswordState([updates(ForgotPasswordStateBuilder b)]) = _$ForgotPasswordState;

  factory ForgotPasswordState.initail() {
    return ForgotPasswordState((b) => b
      ..error = ""
      ..isLoading = false
      ..success = false
      ..ResetPassword = null


    );
  }
}
