library Verification_event;

import 'dart:convert';
import 'dart:io';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'Verification_event.g.dart';

abstract class VerificationEvent {}


abstract class ResendOTP extends VerificationEvent
    implements Built<ResendOTP,ResendOTPBuilder> {
 String?  get Email;

 ResendOTP._();
  factory ResendOTP([updates(ResendOTPBuilder b)]) = _$ResendOTP;
}


abstract class ValidateOTP extends VerificationEvent
    implements Built<ValidateOTP, ValidateOTPBuilder> {
 ValidateOTP._();
 int? get otp;
 String? get Email;
 factory ValidateOTP([updates(ValidateOTPBuilder b)]) = _$ValidateOTP;
}


abstract class VerifyAccount extends VerificationEvent
    implements Built<VerifyAccount,VerifyAccountBuilder> {
 VerifyAccount._();
 int? get otp;
 String? get Email;
 factory VerifyAccount([updates(VerifyAccountBuilder b)]) = _$VerifyAccount;
}
