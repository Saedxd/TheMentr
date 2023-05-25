library login_event;

import 'dart:convert';
import 'dart:io';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'login_event.g.dart';

abstract class LOginEvent {}


abstract class PostLOgin extends LOginEvent
    implements Built<PostLOgin,PostLOginBuilder> {

 String?  get Email;
 String?  get password;
 String?  get fcmToken;

 PostLOgin._();

  factory PostLOgin([updates(PostLOginBuilder b)]) = _$PostLOgin;
}

// abstract class SendOtp extends LOginEvent
//     implements Built<SendOtp,SendOtpBuilder> {
//
//   String?  get Email;
//   String?  get fcmToken;
//   String?  get FirstName;
//   String?  get Lastname;
//
//   SendOtp._();
//
//   factory SendOtp([updates(SendOtpBuilder b)]) = _$SendOtp;
// }
//
//

// abstract class LoginGoogle extends LOginEvent
//     implements Built<LoginGoogle, LoginGoogleBuilder> {
//   LoginGoogle._();
//
// String? get Email;
// String? get name;
// String? get fcmToken;
// String? get avatar;
//   factory LoginGoogle([updates(LoginGoogleBuilder b)]) = _$LoginGoogle;
// }
//
// abstract class ClearError extends LOginEvent
//     implements Built<ClearError, ClearErrorBuilder> {
//   ClearError._();
//   factory ClearError([updates(ClearErrorBuilder b)]) = _$ClearError;
// }
//


abstract class ChangeIconStatus extends LOginEvent
    implements  Built<ChangeIconStatus,ChangeIconStatusBuilder> {

  ChangeIconStatus._();
  factory ChangeIconStatus([updates(ChangeIconStatusBuilder b)]) = _$ChangeIconStatus;
}
abstract class ChangeCheckBoxStatus extends LOginEvent
    implements  Built<ChangeCheckBoxStatus,ChangeCheckBoxStatusBuilder> {

  ChangeCheckBoxStatus._();
  factory ChangeCheckBoxStatus([updates(ChangeCheckBoxStatusBuilder b)]) = _$ChangeCheckBoxStatus;
}

abstract class SignInFacebook extends LOginEvent
    implements Built<SignInFacebook, SignInFacebookBuilder> {
  SignInFacebook._();

  String? get AccessToken;
  factory SignInFacebook([updates(SignInFacebookBuilder b)]) = _$SignInFacebook;
}
abstract class Switch_ForgotPasswordScreen extends LOginEvent
    implements Built<Switch_ForgotPasswordScreen, Switch_ForgotPasswordScreenBuilder> {
  Switch_ForgotPasswordScreen._();

  bool? get Value;
  factory Switch_ForgotPasswordScreen([updates(Switch_ForgotPasswordScreenBuilder b)]) = _$Switch_ForgotPasswordScreen;
}

