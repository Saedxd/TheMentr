library ForgotPassword_event;

import 'dart:convert';
import 'dart:io';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ForgotPassword_event.g.dart';

abstract class ForgotPasswordEvent {}


abstract class RequestPassReset extends ForgotPasswordEvent
    implements Built<RequestPassReset,RequestPassResetBuilder> {

 String? get Email;
 RequestPassReset._();
  factory RequestPassReset([updates(RequestPassResetBuilder b)]) = _$RequestPassReset;
}

