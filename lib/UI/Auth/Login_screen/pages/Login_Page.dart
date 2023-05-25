// ignore_for_file: non_constant_identifier_names, file_names, curly_braces_in_flow_control_structures
import 'dart:io';
import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:country_codes/country_codes.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:thementr/Core/Classes/Classes.dart';
import 'package:thementr/Core/Functions/Fucntions.dart';
import 'package:thementr/Core/constants/strings.dart';
import 'package:thementr/Core/theme/theme_constants.dart';
import 'package:thementr/Core/widgets/CustomButton.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thementr/Core/widgets/Custom_Textfield.dart';

import 'package:thementr/Data/prefs_helper/iprefs_helper.dart';
import 'package:flutter/services.dart';
import 'package:thementr/Data/prefs_helper/iprefs_helper.dart';
import 'package:thementr/Injection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter/material.dart';
import 'package:thementr/UI/Auth/EducationBackGround_Screen/pages/EducationBackground.dart';
import 'package:thementr/UI/Auth/ForgetPassword_Screen/pages/ForgetPassword.dart';
import 'package:thementr/UI/Auth/LinkToPortfolio_Screen/pages/LinkToPortfolio.dart';
import 'package:thementr/UI/Auth/Login_screen/bloc/login_event.dart';
import 'package:thementr/UI/Auth/Login_screen/bloc/login_state.dart';
import 'package:the_apple_sign_in/the_apple_sign_in.dart';
import 'package:thementr/UI/Auth/SignUp_Screen/pages/SignUp9.dart';
import 'package:thementr/UI/Auth/Verification_Screen/pages/Verification.dart';
import 'package:thementr/UI/Auth/WorkExperience_Screen/pages/WorkExperience.dart';
import 'package:thementr/UI/Home/HomeScreen/pages/HomePage.dart';

import '../../SignUp_Screen/pages/SignUp1.dart';
import '../bloc/login_bloc.dart';
//import 'package:firebase_messaging/firebase_messaging.dart' as fire;

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

final RegExp regExpEmail = RegExp(
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');

class _LoginState extends State<Login> with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final TextEditingController _EmailController = TextEditingController();
  final TextEditingController _pASSController = TextEditingController();
  var _formkey1 = GlobalKey<FormState>();
  var _formkey2 = GlobalKey<FormState>();
  late FocusNode _EmailFocusNode;
  late FocusNode _PassFocusNode;

  final pref = sl<IPrefsHelper>();
  GoogleSignInAccount? googleSignInAccount;
  final _Loginbloc = sl<loginBloc>();


  AnimationController? _controller;
  GoogleSignIn? googleSignIn;
  bool Changed3 = false;
  bool islogedin = false;
  bool First_Time_Login = true;
  Animation<double>? ba;
  AnimationController? _bc;
  Listenable? listenable;
  bool Selected = false;
  bool DiDitOnce = false;
  String? token;
  var Fcmtoken;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController controller = TextEditingController();
  String isoCountryCode = 'PS';
  late PhoneNumber number = PhoneNumber(isoCode: "PS");
  late Locale? deviceLocale;
  String numberr = "";

  void SignOutGOogle() {
    googleSignIn!.signOut();
  }

  Future<void> SetToken(String Token) async {
    await pref.SetToken(Token);
  }

// // //   Future<void> getFcmToken() async {
// // //     fire.FirebaseMessaging.instance.getToken().then((FcmTOken) {
// // //       print(FcmTOken);
// // //       return Fcmtoken = FcmTOken;
// // //     });
// // //   }
// // .
  ///

  // Future<void> GetISloggedIN() async {
  //   islogedin = await pref.getIsLogin();
  //   First_Time_Login = await pref.GetisFirstTimeLogin();
  //   String tokenn = await pref.getToken();
  //   print("islogedin1 : ${islogedin}");
  //   print("islogedin2 : ${islogedin}");
  //   if (!First_Time_Login) {
  //     if (islogedin && tokenn.isNotEmpty) {
  //       SetNotFirstTime();
  //       AnimatedSnackBar.material(
  //         "Welcome Back!",
  //         type: AnimatedSnackBarType.info,
  //         duration: Duration(seconds: 2),
  //         // mobileSnackBarPosition: MobileSnackBarPosition.bottom, // Position of snackbar on mobile devices
  //         // desktopSnackBarPosition: DesktopSnackBarPosition.topRight, // Position of snackbar on desktop devices
  //       ).show(context);
  //       print("islogedin3 : ${islogedin}");
  //       WidgetsBinding.instance.addPostFrameCallback((_) => Navigator.pushReplacement(
  //             context,
  //             MaterialPageRoute(
  //               builder: (context) => NavigatorTopBar(
  //                 GotToHomeAndOpenPanel: false,
  //               ),
  //             ),
  //           ));
  //     }
  //     print("islogedin4 : ${islogedin}");
  //   } else {
  //     print("Yep first time");
  //   }
  // }

  Future<void> signInWithApple() async {
    String? email;
    PersonNameComponents? fullName;
    String? familyName;
    String? givenName;

    // final appleSingup = await _auth.signInWithProvider(appleProvider);
    // print(appleSingup.user);
    // final app = await SignInWithApple.getAppleIDCredential(scopes: [
    //   AppleIDAuthorizationScopes.email,
    //   AppleIDAuthorizationScopes.fullName,
    // ]);

    // print(app.authorizationCode);
    final AuthorizationResult result = await TheAppleSignIn.performRequests([
      AppleIdRequest(requestedScopes: [Scope.email, Scope.fullName])
    ]);
    if (result.status == AuthorizationStatus.authorized &&
        result.credential?.fullName != null) {
      email = result.credential?.email ?? '';
      fullName = result.credential?.fullName;
      familyName = result.credential?.fullName?.familyName;
      givenName = result.credential?.fullName?.givenName;

      print('User email $email');
      print('User familyName ${fullName?.familyName}');
      print('User given name ${fullName?.givenName}');

      // _Loginbloc.add(SignInApple((b) => b
      //     ..fcmToken = Fcmtoken
      //     ..Lastname = familyName
      //     ..FirstName =givenName
      //     ..Email = email
      // ));

    } else {
      print("exception");
    }
  }

  Future<void> signInWithFacebook2() async {
    try {
      bool result = await InternetConnectionChecker().hasConnection;
      if (result == true) {
        final LoginResult loginResult = await FacebookAuth.instance.login();
        print(loginResult.message.toString());
        print(loginResult.accessToken!.token);
        if (loginResult.accessToken!.token != null) {
          print("token  : ${loginResult.accessToken!.token}");
          //SetToken(loginResult.accessToken!.token);
          DiDitOnce = true;
          //_Loginbloc.add(LoginSocial((b) => b
          //..Token = loginResult.accessToken!.token
          //..fcmToken = Fcmtoken));
        }
      } else {
        ShowAnimatedTopbar(context, 'Check your internet connection',AnimatedSnackBarType.error);
      }
    } catch (e) {
      print(e);
    }
  }

  Future<void> signInWithFacebook() async {
    try {
      bool result = await InternetConnectionChecker().hasConnection;
      if (result == true) {
        String? _token;
        var facebookToken = await FacebookLogin().logIn(permissions: [
          FacebookPermission.publicProfile,
          FacebookPermission.email
        ]);
        _token = facebookToken.accessToken?.token;

        print(_token);
        if (_token != null) {
          DiDitOnce = true;
          _Loginbloc.add(SignInFacebook((b) => b..AccessToken = _token));
        }
      } else {
        ShowAnimatedTopbar(context, 'Check your internet connection',AnimatedSnackBarType.error);
      }
    } catch (e) {
      print(e);
    }
  }

  Future<void> signInWithGoogle({required BuildContext context}) async {
    try {
      String Email;
      String PhotoUrl;
      String Name;
      // googleSignIn!.signOut();
      bool result = await InternetConnectionChecker().hasConnection;
      if (result == true) {
        googleSignIn = GoogleSignIn(    scopes: [
          'email',
       //   'https://www.googleapis.com/auth/contacts.readonly',
          "https://www.googleapis.com/auth/userinfo.profile"
        ],);
        // googleSignIn.signOut();
        googleSignInAccount = await googleSignIn!.signIn();

        if (googleSignInAccount != null) {
          googleSignInAccount!.authentication.then((value) {
            debugPrint("accessToken : ${value.accessToken}");
            debugPrint("idToken : ${value.idToken}");
          });

          Email = googleSignInAccount!.email;
          PhotoUrl = googleSignInAccount!.photoUrl.toString();
          Name = googleSignInAccount!.displayName.toString();
          print(Email);
          print(PhotoUrl);
          print(Name);

          // _Loginbloc.add(LoginGoogle((b) => b
          //   ..Email = Email
          //   ..avatar = PhotoUrl
          //   ..name = Name
          //   ..fcmToken = Fcmtoken));

          DiDitOnce = true;
        }
      } else {
        ShowAnimatedTopbar(context, 'Check your internet connection',AnimatedSnackBarType.error);
      }
    } catch (e) {
      print(e);
    }
  }

  Future<void> getLocal() async {
    deviceLocale = await CountryCodes.getDeviceLocale();
    number = PhoneNumber(isoCode: deviceLocale!.countryCode.toString());
  }

  @override
  void initState() {
    _EmailFocusNode = FocusNode();
    _PassFocusNode = FocusNode();

    ///getFcmToken();
    super.initState();
  }

  // void getPhoneNumber(String phoneNumber) async {
  //   PhoneNumber number = await PhoneNumber.getRegionInfoFromPhoneNumber(phoneNumber, 'US');
  //   setState(() {
  //     this.number = number;
  //   });
  // }

  @override
  void dispose() {
    _EmailController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext Context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return BlocBuilder(
        bloc: _Loginbloc,
        builder: (BuildContext context, loginState state) {
          if (DiDitOnce) if (state.success!) {
            if (state.data!.error != null) {
              ShowAnimatedTopbar(context, state.data!.error!,AnimatedSnackBarType.error);
              DiDitOnce = false;

              if(state.data!.error =="Account not verified"){
                user User = user();
                User.email = _EmailController.text;
                PushNavigator(context,Verification(User,"Account Verify"));
              }
            } else if (state.data!.token.toString() != null) {
              SetToken(state.data!.token.toString());
              ShowAnimatedTopbar(context, 'Logged in Successfully',AnimatedSnackBarType.success);
              PushNavigator(Context, HomeScreen());
              DiDitOnce = false;
            }
          }

          return WillPopScope(
            onWillPop: () async{
              _Loginbloc.add(Switch_ForgotPasswordScreen((b) => b..Value=false));
              return false;
            },
            child: Scaffold(
              resizeToAvoidBottomInset: false,
              key: _scaffoldKey,
              body: SafeArea(
                child: Stack(
                  children: [
                    Container(
                        width: w,
                        height: h,
                        child: Column(children: [
                         ! state.ForgotPassScreen_Switch!
                             ?Container(
                            child: Column(children: [
                              AppLogoTitle(),
                              Container(
                                child: Column(
                                  children: [
                                    InkWell(
                                      onTap: (){
                                        PushNavigator(context, SignUp9());
                                      },
                                      child: Container(
                                        width: w,
                                        margin:
                                        EdgeInsets.only(top: 38.h, left: 18.w),
                                        child: Container(
                                          child: Text(
                                            'Sign in',
                                            textAlign: TextAlign.left,
                                            style: Font1.copyWith(
                                                fontSize: 28.sp,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                          top: 9.h, bottom: 39.h, left: 18.w),
                                      child: Row(
                                        children: [
                                          Text(
                                            'Welcome back',
                                            style: Font1.copyWith(
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Form(
                                      autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                      key: _formkey1,
                                      child: textfeild(
                                        prefixIconClicked: () {},
                                        Want_prefixIconClicked: false,
                                        Want_Mic_Icon: false,
                                        BorderType: "UnderLine",
                                        Font_Style: Font1.copyWith(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16.sp,
                                            color: Color(0xff2B2B2B),
                                            height: 1.6.h),
                                        type: TextInputType.text,
                                        BorderRaduis: 5,
                                        BorderColor: Color(0xff077BCD),
                                        HintText_Style: Font1.copyWith(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16.sp,
                                        ),
                                        LeftContentPadding: 5,
                                        textAlign: TextAlign.left,
                                        FontSize: 20,
                                        hidePass: false,
                                        FillColor: Colors.transparent,
                                        width: 393,
                                        Hieght: 76,
                                        topContentPadding: -25,
                                        MaxLines: 1,
                                        Margin: 0,
                                        FoucesNode: _EmailFocusNode,
                                        Onsubmitted: (String) {},
                                        TextInputaction: TextInputAction.next,
                                        Controller: _EmailController,
                                        Hint_Text: "Email",
                                        Onchanged: (String) {},
                                        validator: MultiValidator([
                                          RequiredValidator(
                                              errorText: "Required"),
                                          EmailValidator(
                                              errorText: "That's not an Email"),
                                        ]),
                                        IconClicked: () {},
                                        obscureText: true,
                                      ),
                                    ),
                                    Container(
                                      child: Form(
                                        autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                        key: _formkey2,
                                        child: textfeild(
                                          prefixIconClicked: () {},
                                          Want_prefixIconClicked: false,
                                          Want_Mic_Icon: false,
                                          Font_Style: Font1.copyWith(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16.sp,
                                              color: Color(0xff2B2B2B),
                                              height: 1.6.h),
                                          BorderType: "UnderLine",
                                          type: TextInputType.text,
                                          BorderRaduis: 5,
                                          BorderColor: Color(0xff077BCD),
                                          HintText_Style: Font1.copyWith(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16.sp,
                                          ),
                                          LeftContentPadding: 5,
                                          textAlign: TextAlign.left,
                                          FontSize: 20,
                                          hidePass: true,
                                          FillColor: Colors.transparent,
                                          width: 393,
                                          Hieght: 76,
                                          topContentPadding: 25,
                                          MaxLines: 1,
                                          Margin: 0,
                                          FoucesNode: _PassFocusNode,
                                          Onsubmitted: (String) {},
                                          TextInputaction: TextInputAction.done,
                                          Controller: _pASSController,
                                          Hint_Text: "Password",
                                          Onchanged: (String) {},
                                          validator: MultiValidator([
                                            RequiredValidator(
                                                errorText: "Required"),
                                          ]),
                                          IconClicked: () {
                                            _Loginbloc.add(ChangeIconStatus());
                                          },
                                          obscureText: state.ShowPass_IconStatus!,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 7.w),
                                      child: Row(
                                        children: [
                                          Checkbox(
                                            checkColor: Colors.blue,
                                            fillColor:
                                            MaterialStateProperty.resolveWith(
                                                    (states) {
                                                  if (states.contains(
                                                      MaterialState.disabled)) {
                                                    return Color(0xff303030);
                                                  }
                                                  return Color(0xff303030);
                                                }),
                                            value: state.CheckboxStatus,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.vertical(
                                                top: Radius.circular(5.0.r),
                                                bottom: Radius.circular(5.0.r),
                                              ),
                                            ),
                                            onChanged: (value) {
                                              _Loginbloc.add(
                                                  ChangeCheckBoxStatus());
                                            },
                                          ),
                                          RemoveHighlight(
                                            InkWell(
                                              onTap: () {
                                                _Loginbloc.add(
                                                    ChangeCheckBoxStatus());
                                              },
                                              child: Container(
                                                padding: EdgeInsets.only(
                                                    top: 6.h, right: 20.w),
                                                child: Text(
                                                  'Remember me',
                                                  style: Font1.copyWith(
                                                      fontSize: 16.sp,
                                                      fontWeight:
                                                      FontWeight.w400),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 22.h),
                                      child: CustomButton(
                                        onPressed: () async {
                                          if (_formkey2.currentState!
                                              .validate() &&
                                              _formkey1.currentState!
                                                  .validate()) {
                                            _Loginbloc.add(PostLOgin((b) => b
                                              ..Email = _EmailController.text
                                              ..password = _pASSController.text));
                                            DiDitOnce = true;
                                          }
                                        },
                                        ButtonText: 'Sign in',
                                        btnColor: Color(0xff015595),
                                        TxtColor: Color(0xffFFFFFF),
                                        SocialName: 'null',
                                        weight: FontWeight.w600,
                                        fontsize: 20.sp,
                                        HeigthBTN: 56.h,
                                        Widthbtn: 393.w,
                                        BorderColor: Color(0xff015595),
                                      ),
                                    ),
                                    RemoveHighlight(InkWell(
                                      onTap: () {
                                        _Loginbloc.add(Switch_ForgotPasswordScreen((b) => b..Value=true));//Display ForgotPassword Screen using boolean Value
                                      },
                                      child: Container(
                                        margin: EdgeInsets.only(top: 16.h),
                                        child: Text('Forget Password?',
                                            textAlign: TextAlign.left,
                                            style: Font1.copyWith(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16.sp,
                                            )),
                                      ),
                                    )),
                                    RemoveHighlight(
                                      InkWell(
                                        onTap: () {
                                          PushNavigator(context, SignUp());
                                        },
                                        child: Container(
                                          margin: EdgeInsets.only(top: 22.h),
                                          child: RichText(
                                              textAlign: TextAlign.left,
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                      text:
                                                      'Don’t have an account yet? ',
                                                      style: Font1.copyWith(
                                                        color: DarkColor,
                                                        fontWeight:
                                                        FontWeight.w400,
                                                        fontSize: 16.sp,
                                                      )),
                                                  TextSpan(
                                                    text: 'Register',
                                                    style: Font1.copyWith(
                                                      color: Color(0xff015595),
                                                      fontWeight: FontWeight.w500,
                                                      fontSize: 16.sp,
                                                    ),
                                                  ),
                                                ],
                                              )),
                                        ),
                                      ),
                                    ),
                                    OR_Widget(w),
                                  ],
                                ),
                              ),

                            ]),
                          )
                             :ForgotPassword(),
                          Container(
                            child: CustomButton(
                              onPressed: () async {
                                signInWithGoogle(context: Context);
                              },
                              ButtonText: 'Continue with Google',
                              btnColor: Colors.transparent,
                              TxtColor: DarkColor,
                              SocialName: 'null',
                              weight: FontWeight.w600,
                              fontsize: 20.sp,
                              HeigthBTN: 56.h,
                              Widthbtn: 393.w,
                              BorderColor: Color(0xff015595),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 16.h),
                            child: CustomButton(
                              BorderColor: Color(0xff015595),
                              onPressed: () async {
                                signInWithFacebook();
                              },
                              ButtonText: 'Continue with Facebook',
                              btnColor: Colors.transparent,
                              TxtColor: DarkColor,
                              SocialName: 'null',
                              weight: FontWeight.w600,
                              fontsize: 20.sp,
                              HeigthBTN: 56.h,
                              Widthbtn: 393.w,
                            ),
                          ),

                        ])),
                    state.isLoading == true
                        ? Center(child: listLoader(context: context))
                        : Container(),
                  ],
                ),
              ),
            ),
          );
        });
  }

//

// Animatable<Color?> darkBackground = TweenSequence<Color?>(
//   [
//     TweenSequenceItem(
//       weight: .5,
//       tween: ColorTween(
//         begin: Color(0xffA93064).withOpacity(.9),
//         end: Color(0xff932557).withOpacity(.9),
//       ) as Animatable<Color?>,
//     ),
//     TweenSequenceItem(
//       weight: .5,
//       tween: ColorTween(
//         begin: Color(0xff932557).withOpacity(.9),
//         end: Color(0xffA93064).withOpacity(.9),
//       ) as Animatable<Color?>,
//     ),
//   ],
// );
//
// Animatable<Color?> normalBackground = TweenSequence<Color?>(
//   [
//     TweenSequenceItem(
//       weight: .5,
//       tween: ColorTween(
//         begin: Color(0xff932557).withOpacity(.9),
//         end: Color(0xffB9484C).withOpacity(.9),
//       ) as Animatable<Color?>,
//     ),
//     TweenSequenceItem(
//       weight: .5,
//       tween: ColorTween(
//         begin: Color(0xffB9484C).withOpacity(.9),
//         end: Color(0xff932557).withOpacity(.9),
//       ) as Animatable<Color?>,
//     ),
//   ],
// );
//
// Animatable<Color?> lightBackground = TweenSequence<Color?>(
//   [
//     TweenSequenceItem(
//       weight: .5,
//       tween: ColorTween(
//         begin: Color(0xff932557).withOpacity(.9),
//         end: Color(0xffB9484C).withOpacity(.9),
//       ) as Animatable<Color?>,
//     ),
//     TweenSequenceItem(
//       weight: .5,
//       tween: ColorTween(
//         begin: Color(0xffB9484C).withOpacity(0.9),
//         end: Color(0xff932557).withOpacity(0.9),
//       ) as Animatable<Color?>,
//     ),
//   ],
// );
// AlignmentTween aT =
// AlignmentTween(begin: Alignment.topRight, end: Alignment.topLeft);
// AlignmentTween aB =
// AlignmentTween(begin: Alignment.bottomRight, end: Alignment.bottomLeft);

}
