// ignore: file_names
// ignore_for_file: file_names, non_constant_identifier_names
import 'dart:io';
import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:thementr/App/app.dart';
import 'package:thementr/Core/Classes/Classes.dart';
import 'package:thementr/Core/Functions/Fucntions.dart';
import 'package:thementr/Core/widgets/CustomButton.dart';
import 'package:thementr/Core/widgets/Custom_Textfield.dart';
import 'package:thementr/Data/prefs_helper/prefs_helper.dart';
import 'package:thementr/Injection.dart';
import 'package:thementr/UI/Auth/NewPassword_Screen/pages/NewPassword.dart';
import 'package:thementr/UI/Auth/SignUp_Screen/bloc/SignUp_bloc.dart';
import 'package:thementr/UI/Auth/SignUp_Screen/bloc/SignUp_event.dart';
import 'package:thementr/UI/Auth/SignUp_Screen/bloc/SignUp_state.dart';




import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:thementr/Data/prefs_helper/prefs_helper.dart';
import 'package:thementr/UI/Auth/SignUp_Screen/pages/SignUp4.dart';
import 'package:thementr/UI/Auth/Verification_Screen/bloc/Verification_bloc.dart';
import 'package:thementr/UI/Auth/Verification_Screen/bloc/Verification_event.dart';
import 'package:thementr/UI/Auth/Verification_Screen/bloc/Verification_state.dart';
import 'package:thementr/UI/Auth/Verification_Screen/pages/VerifiedScreen.dart';
import '../../../../Core/constants/strings.dart';
import '../../../../core/theme/theme_constants.dart';
import '../../Login_screen/pages/Login_Page.dart';

class Verification extends StatefulWidget {
  user? User;
  String? Purpose="";
  Verification(this.User,this.Purpose);
  @override
  _VerificationState createState() => _VerificationState();
}

class _VerificationState extends State<Verification> with WidgetsBindingObserver {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final Pref = PrefsHelper();
  final bloc2 = sl<VerificationBloc>();
  final _formkey1 = GlobalKey<FormState>();
  final TextEditingController _otpController = TextEditingController();


  @override
  void dispose() {
    super.dispose();
    _otpController.dispose();
  }

  bool Diditonce = false;
  bool Selected = false;

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return BlocBuilder(
        bloc: bloc2,
        builder: (BuildContext context, VerificationState state) {


          if (state.success! && Diditonce){
            Diditonce = false;
            print(widget.Purpose!);

             if (widget.Purpose!.toLowerCase()=="account verify"){
              if (state.VerifyUser!=null)
              if (state.VerifyUser!.error!=null){
                ShowAnimatedTopbar(context, state.VerifyUser!.error.toString(), AnimatedSnackBarType.error);
                //  Navigator.pop(context);
              }else{

                PushNavigator(context, VerifiedSuccess(widget.User));
                ShowAnimatedTopbar(context, state.VerifyUser!.message.toString(), AnimatedSnackBarType.success);
              }

            }
            else if (widget.Purpose!.toLowerCase()=="reset password"){
              print("reset passworddddd");

              if (state.ValidateOTP!=null)
              if (state.ValidateOTP!.message!=null){
                //success go to homepage or continue profile info
                PushNavigator(context, NewPassword_Screen(email: widget.User!.email,));
                ShowAnimatedTopbar(context, state.ValidateOTP!.message.toString(), AnimatedSnackBarType.success);

              }else if  (state.ValidateOTP!.error!=null){
                ShowAnimatedTopbar(context, state.ValidateOTP!.error.toString(), AnimatedSnackBarType.error);

              }

            }


          if (state.ResendOtp!=null){
            print("ResendOtp got inn");

              if (state.ResendOtp!.message!=null){
                //success go to homepage or continue profile info
                 ShowAnimatedTopbar(context, state.ResendOtp!.message.toString(), AnimatedSnackBarType.success);
              }else if  (state.ResendOtp!.error!=null){
                ShowAnimatedTopbar(context, state.ResendOtp!.error.toString(), AnimatedSnackBarType.error);

              }
            }



            Diditonce = false;

          }else if (state.Error!){
            ShowAnimatedTopbar(context, state.error!, AnimatedSnackBarType.error);
            Diditonce = false;
          }




          return Scaffold(
              resizeToAvoidBottomInset: false,
              key: _scaffoldKey,
              backgroundColor: Colors.white,
              body: SafeArea(
                child:
                Stack(children: [
                  Container(
                    width: w,
                    height: h,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 120.h),
                          child: Text('Verification',
                              textAlign: TextAlign.left,
                              style: Font1.copyWith(
                                  color: Color(0xff2B2B2B),
                                  fontSize: 28.sp,
                                  fontWeight: FontWeight.w600,
                                  height: 1.h
                              )),
                        ),
                        Container(
                          width: 300.w,
                          margin: EdgeInsets.only(top: 56.h),
                          child: Text('Enter verification code',
                              textAlign: TextAlign.center,
                              style: Font1.copyWith(
                                  color: Colors.black,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                  height: 1.4.h
                              )),
                        ),
                        Container(
                          child: Column(
                            children: [

                              Container(
                                margin: EdgeInsets.only(top: 32.h),
                                width: 240.w,
                                child: Form(
                                  autovalidateMode: AutovalidateMode.onUserInteraction,
                                  key: _formkey1,
                                  child:
                                  textfeild(
                                    prefixIconClicked: () {  },
                                    Want_prefixIconClicked: false,
                                    Want_Mic_Icon: false,
                                    BorderType: "UnderLine",
                                    Font_Style: Font1.copyWith(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16.sp,
                                        color: Color(0xff2B2B2B),
                                        height: 1.6.h
                                    ),
                                    type:  TextInputType.number,
                                    textAlign: TextAlign.center,
                                    FontSize: 20,
                                    hidePass: false,
                                    FillColor: Colors.transparent,
                                    width: 240,
                                    Hieght: 76,
                                    topContentPadding: 0,
                                    MaxLines: 1,
                                    Margin: 0,
                                    FoucesNode:FocusNode(),
                                    Onsubmitted: (String){

                                      print(widget.Purpose!.toLowerCase());
                                    print(_otpController.text.isNotEmpty);
                                    if(_otpController.text.isNotEmpty){
                                      Diditonce = true;

                                      if (widget.Purpose!.toLowerCase()=="reset password"){
                                        bloc2.add(ValidateOTP((b) => b
                                          ..otp=int.parse(_otpController.text)
                                          ..Email = widget.User!.email
                                        ));
                                      }else if (widget.Purpose!.toLowerCase()=="account verify"){
                                        bloc2.add(VerifyAccount((b) => b
                                          ..otp=int.parse(_otpController.text)
                                          ..Email = widget.User!.email
                                        ));
                                      }
                                    }

                                    },
                                    TextInputaction: TextInputAction.done,
                                    Controller: _otpController, Hint_Text: "input here",
                                    Onchanged:(String){},
                                    validator: MultiValidator([
                                      RequiredValidator(errorText: "Required"),
                                    ]),
                                    IconClicked: () {},
                                    obscureText:true, LeftContentPadding: 5, HintText_Style: Font1.copyWith(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16.sp,
                                  ), BorderColor: Color(0xff077BCD), BorderRaduis: 5,
                                  ),),
                              ),
                              InkWell(
                                onTap: (){
                                //  PushNavigator(context, NewPassword_Screen());
                                  PushNavigator(context, VerifiedSuccess(widget.User));

                                  Diditonce = true;
                                 bloc2.add(ResendOTP((b) => b..Email=widget.User!.email));
                                },
                                child: Container(
                                  margin: EdgeInsets.only(top: 20.h),
                                  child: RichText(
                                      textAlign: TextAlign.left,
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                              text: 'Didn’t get a code?',
                                              style:Font1.copyWith(
                                                color: DarkColor,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 16.sp,
                                              )),
                                          TextSpan(
                                            text: 'Resend',
                                            style:Font1.copyWith(color: Color(0xff015595)    , fontWeight: FontWeight.w500,
                                              fontSize: 16.sp,),
                                          ),
                                        ],
                                      )
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 120.h),
                                child: CustomButton(
                                  onPressed: () async {

                                    print(widget.Purpose!.toLowerCase());
                                    print(_otpController.text.isNotEmpty);
                                    if(_otpController.text.isNotEmpty){
                                      Diditonce = true;

                                   if (widget.Purpose!.toLowerCase()=="reset password"){
                                     bloc2.add(ValidateOTP((b) => b
                                       ..otp=int.parse(_otpController.text)
                                       ..Email = widget.User!.email
                                     ));
                                   }else if (widget.Purpose!.toLowerCase()=="account verify"){
                                     bloc2.add(VerifyAccount((b) => b
                                       ..otp=int.parse(_otpController.text)
                                       ..Email = widget.User!.email
                                     ));
                                   }
                                    }


                                  //  PushNavigator(context,VerifiedSuccess(widget.User!));
                                  //  PushNavigator(context,NewPassword_Screen());
                                  },
                                  ButtonText: 'Verify',
                                  btnColor: Color(0xff015595),
                                  TxtColor: Color(0xffFFFFFF),
                                  SocialName: 'null',
                                  weight: FontWeight.w600,
                                  fontsize: 20.sp,
                                  HeigthBTN: 56.h,
                                  Widthbtn: 393.w, BorderColor:  Color(0xff015595),

                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  state.isLoading == true
                      ? Center(child: listLoader(context: context))
                      : Container(),

                ]),
              ));
        });
  }
}

//// ignore: file_names
// // ignore_for_file: file_names, non_constant_identifier_names
// import 'dart:io';
// import 'package:thementr/App/app.dart';
// import 'package:thementr/Core/Classes/Classes.dart';
// import 'package:thementr/Core/Functions/Fucntions.dart';
// import 'package:thementr/Core/widgets/CustomButton.dart';
// import 'package:thementr/Core/widgets/Custom_Textfield.dart';
// import 'package:thementr/Data/prefs_helper/prefs_helper.dart';
// import 'package:thementr/Injection.dart';
// import 'package:thementr/UI/Auth/SignUp_Screen/bloc/SignUp_bloc.dart';
// import 'package:thementr/UI/Auth/SignUp_Screen/bloc/SignUp_event.dart';
// import 'package:thementr/UI/Auth/SignUp_Screen/bloc/SignUp_state.dart';
//
//
//
//
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:form_field_validator/form_field_validator.dart';
// import 'package:internet_connection_checker/internet_connection_checker.dart';
// import 'package:thementr/Data/prefs_helper/prefs_helper.dart';
// import 'package:thementr/UI/Auth/SignUp_Screen/pages/SignUp4.dart';
// import 'package:thementr/UI/Auth/Verification_Screen/pages/VerifiedScreen.dart';
// import '../../../../core/theme/theme_constants.dart';
// import '../../Login_screen/pages/Login_Page.dart';
//
// class Verification extends StatefulWidget {
//   user? User;
//   Verification(this.User);
//   @override
//   _VerificationState createState() => _VerificationState();
// }
//
// class _VerificationState extends State<Verification> with WidgetsBindingObserver {
//   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
//   final Pref = PrefsHelper();
//   late FocusNode FoucesNodePass;
//   late FocusNode FoucesNodeEmail;
//   late FocusNode FoucesNodeConfirm;
//
//   bool? DiditOnce = true;
//   bool DIALOG = false;
//   double? lat;
//   double? lng;
//   String? fcmToken;
//
//   final bloc2 = sl<SignUpBloc>();
//   final _formkey1 = GlobalKey<FormState>();
//   final _formkey2 = GlobalKey<FormState>();
//   final _formkey3 = GlobalKey<FormState>();
//   final TextEditingController _otpController = TextEditingController();
//   final TextEditingController _PassController = TextEditingController();
//   final TextEditingController _ConfirmpassController = TextEditingController();
//
//   final PasswordValidation =
//   RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
//   final nameValidation = RegExp(r"^[\p{Letter}\p{Number}]+$");
//   final emailvalidaition = RegExp(
//       r"^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0"
//       r"-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u0"
//       r"0A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)"
//       r"+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDC"
//       r"F\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(("
//       r"(\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(("
//       r"[a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]"
//       r")*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-"
//       r"z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0"
//       r"-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))$");
//
//   //                 //(?=.*[A-Z])       // should contain at least one upper case
//   //                                                     //   (?=.*[a-z])       // should contain at least one lower case
//   //                                                     //   (?=.*?[0-9])      // should contain at least one digit
//   //                                                     //   (?=.*?[!@#\$&*~]) // should contain at least one Special character
//   //                                                     //   .{8,}             // Must be at least 8 characters in length
//
//   final AtleastOneUperCase = RegExp("(?=.*[A-Z])");
//   final containAtleastOneLowercase = RegExp("(?=.*[a-z])");
//   final shouldContainAtleastOneDigit = RegExp("(?=.*?[0-9])");
//   final least8CharactersInLength = RegExp(".{8,}");
//
//   // Future<void> GetlatAndLng() async {
//   //   lat = await Pref.Getlat();
//   //   lng = await Pref.GetLng();
//   //   print(" User lat and lng ??! : $lat , $lng ");
//   // }
//
//   @override
//   void initState() {
//     FoucesNodePass = FocusNode();
//     FoucesNodeEmail = FocusNode();
//     FoucesNodeConfirm = FocusNode();
//     super.initState();
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//     FoucesNodeEmail.dispose();
//     FoucesNodePass.dispose();
//     _PassController.dispose();
//     _otpController.dispose();
//     _ConfirmpassController.dispose();
//     FoucesNodeConfirm.dispose();
//   }
//  // EmailAuth emailAuth =  new EmailAuth(sessionName: "Sample session");
//   bool Diditonce = false;
//   bool Selected = false;
//
//   @override
//   Widget build(BuildContext context) {
//     var h = MediaQuery.of(context).size.height;
//     var w = MediaQuery.of(context).size.width;
//     return BlocBuilder(
//         bloc: bloc2,
//         builder: (BuildContext context, SignUpState state) {
//
//           return Scaffold(
//               resizeToAvoidBottomInset: false,
//               key: _scaffoldKey,
//               backgroundColor: Colors.white,
//               body: SafeArea(
//                 child:
//                 Stack(children: [
//                   Container(
//                     width: w,
//                     height: h,
//                     child: Column(
//                       children: [
//                         AppLogoTitle(),
//                         Container(
//                           child: Column(
//                             children: [
//                               Container(
//                                 width: w,
//                                 margin: EdgeInsets.only(top: 38.h,left: 18.w,bottom: 14.h),
//                                 child:  Container(
//                                   child: Text(
//                                     'Enter code',
//                                     textAlign: TextAlign.left,
//                                     style: Font1.copyWith(
//                                         fontSize: 28.sp,
//                                         fontWeight: FontWeight.w600
//                                     ),
//                                   ),
//                                 ),
//
//                               ),
//                               Container(
//                                 margin: EdgeInsets.only(left: 18.w,right: 9.w),
//                                 child:  Text(
//                                   'A verification code has been sent to your mail. Input the code',
//                                   style: Font1.copyWith(
//                                       fontSize: 16.sp,
//                                       fontWeight: FontWeight.w400,
//                                     height: 1.5.h
//                                   ),
//                                 ),
//                               ),
//                               Container(
//                                 width: 240.w,
//                                 child: Form(
//                                   autovalidateMode: AutovalidateMode.onUserInteraction,
//                                   key: _formkey1,
//                                   child:
//                                   textfeild(
//                                     prefixIconClicked: () {  },
//                                     Want_prefixIconClicked: false,
//                                     Want_Mic_Icon: false,
//                                     BorderType: "UnderLine",
//                                     Font_Style: Font1.copyWith(
//                                         fontWeight: FontWeight.w500,
//                                         fontSize: 16.sp,
//                                         color: Color(0xff2B2B2B),
//                                         height: 1.6.h
//                                     ),
//                                     type:  TextInputType.number,
//                                     textAlign: TextAlign.center,
//                                     FontSize: 20,
//                                     hidePass: false,
//                                     FillColor: Colors.transparent,
//                                     width: 240,
//                                     Hieght: 76,
//                                     topContentPadding: 0,
//                                     MaxLines: 1,
//                                     Margin: 0,
//                                     FoucesNode:FoucesNodeEmail,
//                                     Onsubmitted: (String){},
//                                     TextInputaction: TextInputAction.done,
//                                     Controller: _otpController, Hint_Text: "Input here",
//                                     Onchanged:(String){},
//                                     validator: MultiValidator([
//                                       RequiredValidator(errorText: "Required"),
//                                     ]),
//                                     IconClicked: () {},
//                                     obscureText:true, LeftContentPadding: 5, HintText_Style: Font1.copyWith(
//                                     fontWeight: FontWeight.w500,
//                                     fontSize: 16.sp,
//                                   ), BorderColor: Color(0xff077BCD), BorderRaduis: 5,
//                                   ),),
//                               ),
//                               Container(
//                                 margin: EdgeInsets.only(top: 22.h),
//                                 child: CustomButton(
//                                   onPressed: () async {
//                                      WidgetsBinding.instance.addPostFrameCallback( (_) => Navigator.push(
//                                        context,
//                                        MaterialPageRoute(
//                                          builder: (context) =>
//                                              VerifiedSuccess(widget.User!),
//                                        ),
//                                      ));
//                                   },
//                                   ButtonText: 'Continue',
//                                   btnColor: Color(0xff015595),
//                                   TxtColor: Color(0xffFFFFFF),
//                                   SocialName: 'null',
//                                   weight: FontWeight.w600,
//                                   fontsize: 20.sp,
//                                   HeigthBTN: 56.h,
//                                   Widthbtn: 393.w, BorderColor:  Color(0xff015595),
//
//                                 ),
//                               ),
//                             ],
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                   state.isLoading == true
//                       ? Center(child: listLoader(context: context))
//                       : Container(),
//
//                 ]),
//               ));
//         });
//   }
// }