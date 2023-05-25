library EducationBackground_state;

import 'dart:convert';


import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter/material.dart' as i;

import 'package:thementr/Core/Classes/Classes.dart';

import 'package:thementr/models/OtpForResetPasswordModel/OtpForResetPasswordModel.dart';
import 'package:thementr/models/ResetPasswordModel/ResetPasswordModel.dart';

import 'package:thementr/models/UserDataModel/UserDataModel.dart';

part 'EducationBackground_state.g.dart';

abstract class EducationBackgroundState implements Built<EducationBackgroundState, EducationBackgroundStateBuilder> {
  // fields go here

  String? get error;
  bool? get isLoading;
  bool? get success;
  List<EducationBackGroundForm>? get Forms;

  EducationBackgroundState._();

  factory EducationBackgroundState([updates(EducationBackgroundStateBuilder b)]) = _$EducationBackgroundState;

  factory EducationBackgroundState.initail() {
    return EducationBackgroundState((b) => b
      ..error = ""
      ..isLoading = false
      ..success = false
      ..Forms = [EducationBackGroundForm()]


    );
  }
}
