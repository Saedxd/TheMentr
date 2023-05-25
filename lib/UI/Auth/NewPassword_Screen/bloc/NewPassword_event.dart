library NewPassword_event;

import 'dart:convert';
import 'dart:io';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'NewPassword_event.g.dart';

abstract class NewPasswordEvent {}


abstract class ChangePassword extends NewPasswordEvent
    implements Built<ChangePassword,ChangePasswordBuilder> {

 String? get Email;
 String? get password;
 int? get OTP;

 ChangePassword._();

  factory ChangePassword([updates(ChangePasswordBuilder b)]) = _$ChangePassword;
}

