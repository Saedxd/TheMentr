library WorkExperience_state;

import 'dart:convert';


import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter/material.dart' as i;

import 'package:thementr/Core/Classes/Classes.dart';

import 'package:thementr/models/OtpForResetPasswordModel/OtpForResetPasswordModel.dart';
import 'package:thementr/models/ResetPasswordModel/ResetPasswordModel.dart';

import 'package:thementr/models/UserDataModel/UserDataModel.dart';

part 'WorkExperience_state.g.dart';

abstract class WorkExperienceState implements Built<WorkExperienceState, WorkExperienceStateBuilder> {
  // fields go here

  String? get error;
  bool? get isLoading;
  bool? get success;
  List<WorkExperienceForm>? get Forms;
  i.ScrollController? get scrollController;

  WorkExperienceState._();

  factory WorkExperienceState([updates(WorkExperienceStateBuilder b)]) = _$WorkExperienceState;

  factory WorkExperienceState.initail() {
    return WorkExperienceState((b) => b
      ..error = ""
      ..isLoading = false
      ..success = false
      ..Forms = [WorkExperienceForm()]
        ..scrollController= i.ScrollController()



    );
  }
}
