// ignore: file_names
// ignore_for_file: file_names, non_constant_identifier_names
import 'dart:io';

import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:thementr/App/app.dart';
import 'package:thementr/Core/Classes/Classes.dart';
import 'package:thementr/Core/Functions/Fucntions.dart';
import 'package:thementr/Core/widgets/CustomButton.dart';
import 'package:thementr/Core/widgets/Custom_Textfield.dart';
import 'package:thementr/Data/prefs_helper/iprefs_helper.dart';
import 'package:thementr/Data/prefs_helper/prefs_helper.dart';
import 'package:thementr/Injection.dart';
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
import 'package:thementr/UI/Auth/Verification_Screen/pages/Verification.dart';
import '../../../../core/theme/theme_constants.dart';
import '../../Login_screen/pages/Login_Page.dart';

class SignUp2 extends StatefulWidget {
  user? User;
  SignUp2(this.User);
  @override
  _SignUp2State createState() => _SignUp2State();
}

class _SignUp2State extends State<SignUp2> with WidgetsBindingObserver {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final Pref = PrefsHelper();
  late FocusNode FoucesNodePass;
  late FocusNode FoucesNodeEmail;
  late FocusNode FoucesNodeConfirm;

  bool? DiditOnce = true;
  bool DIALOG = false;
  double? lat;
  double? lng;
  String? fcmToken;

  final bloc2 = sl<SignUpBloc>();
  final _formkey1 = GlobalKey<FormState>();
  final _formkey2 = GlobalKey<FormState>();
  final _formkey3 = GlobalKey<FormState>();
  final TextEditingController _EmailController = TextEditingController();
  final TextEditingController _PassController = TextEditingController();
  final TextEditingController _ConfirmpassController = TextEditingController();

  final PasswordValidation =
  RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
  final nameValidation = RegExp(r"^[\p{Letter}\p{Number}]+$");
  final emailvalidaition = RegExp(
      r"^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0"
      r"-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u0"
      r"0A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)"
      r"+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDC"
      r"F\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(("
      r"(\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(("
      r"[a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]"
      r")*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-"
      r"z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0"
      r"-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))$");

  //                 //(?=.*[A-Z])       // should contain at least one upper case
  //                                                     //   (?=.*[a-z])       // should contain at least one lower case
  //                                                     //   (?=.*?[0-9])      // should contain at least one digit
  //                                                     //   (?=.*?[!@#\$&*~]) // should contain at least one Special character
  //                                                     //   .{8,}             // Must be at least 8 characters in length

  final pref = sl<IPrefsHelper>();
  final AtleastOneUperCase = RegExp("(?=.*[A-Z])");
  final containAtleastOneLowercase = RegExp("(?=.*[a-z])");
  final shouldContainAtleastOneDigit = RegExp("(?=.*?[0-9])");
  final least8CharactersInLength = RegExp(".{8,}");

  // Future<void> GetlatAndLng() async {
  //   lat = await Pref.Getlat();
  //   lng = await Pref.GetLng();
  //   print(" User lat and lng ??! : $lat , $lng ");
  // }

  @override
  void initState() {
    FoucesNodePass = FocusNode();
    FoucesNodeEmail = FocusNode();
    FoucesNodeConfirm = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    FoucesNodeEmail.dispose();
    FoucesNodePass.dispose();
    _PassController.dispose();
    _EmailController.dispose();
    _ConfirmpassController.dispose();
    FoucesNodeConfirm.dispose();
  }
  Future<void> SetToken(String Token) async {
    await pref.SetToken(Token);
  }

  bool DiDitOnce = false;
  bool Selected = false;

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return BlocBuilder(
        bloc: bloc2,
        builder: (BuildContext context, SignUpState state) {


          if (DiDitOnce)
            if (state.success!) {
              if (state.User!.error!= null){
                ShowAnimatedTopbar(context, state.User!.error!,AnimatedSnackBarType.error);
                DiDitOnce = false;
              }
              else if (state.User!.token.toString()!= null){
                SetToken(state.User!.token.toString());
                PushNavigator(context,Verification( widget.User!,"Account Verify"));
                ShowAnimatedTopbar(context, state.User!.message!,AnimatedSnackBarType.success);
                DiDitOnce = false;
              }
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
                        AppLogoTitle(),
                        Container(
                          child: Column(
                            children: [

                              Container(
                                width: w,
                                margin: EdgeInsets.only(top: 38.h,left: 18.w,bottom: 68.h),
                                child:  Container(
                                  child: Text(
                                    'Add your Email',
                                    textAlign: TextAlign.left,
                                    style: Font1.copyWith(
                                      fontSize: 28.sp,
                                      fontWeight: FontWeight.w600
                                    ),
                                  ),
                                ),

                              ),
                              Form(
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
                                  type:  TextInputType.text,
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
                                  topContentPadding: 0,
                                  MaxLines: 1,
                                  Margin: 0,
                                  FoucesNode:FoucesNodeEmail,
                                  Onsubmitted: (String){},
                                  TextInputaction: TextInputAction.next,
                                  Controller: _EmailController, Hint_Text: "Email",
                                  Onchanged:(String){},
                                  validator: MultiValidator([
                                    EmailValidator(errorText:"That's not an email"),
                                    RequiredValidator(errorText:"Required"),
                                  ]),
                                  IconClicked: () {

                                  },obscureText:true,
                                ),),
                              Container(
                                child: Form(
                                  autovalidateMode: AutovalidateMode.onUserInteraction,
                                  key: _formkey2,
                                  child:
                                  textfeild(
                                    prefixIconClicked: () {  },
                                    Want_prefixIconClicked: false,
                                    Want_Mic_Icon: false,
                                    BorderType: "UnderLine",
                                    Font_Style:Font1.copyWith(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16.sp,
                                        color: Color(0xff2B2B2B),
                                        height: 1.6.h
                                    ),
                                    type:  TextInputType.text,
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
                                    topContentPadding: 0,
                                    MaxLines: 1,
                                    Margin: 0,
                                    FoucesNode:FoucesNodePass,
                                    Onsubmitted: (String){},
                                    TextInputaction: TextInputAction.done,
                                    Controller: _PassController, Hint_Text: "Password",
                                    Onchanged:(String){},
                                    validator:(value) {
                                      if (!AtleastOneUperCase.hasMatch(value!)) {
                                        return "Password must contain at least 1 upperCase character";
                                      } else if (!containAtleastOneLowercase.hasMatch(value)){
                                        return "Password must contain at least 1 lowerCase character";
                                      } else if (!shouldContainAtleastOneDigit.hasMatch(value)){
                                        return "Password must contain at least 1 digit";
                                      } else if (!least8CharactersInLength.hasMatch(value)){
                                        return "Password minimum length is 8 characters";
                                      }
                                    },
                                    IconClicked: () {
                                    // _Loginbloc.add(ChangeIconStatus());
                                  }, obscureText: false,
                                  ),),
                              ),
                              Container(
                                child: Form(
                                  autovalidateMode: AutovalidateMode.onUserInteraction,
                                  key: _formkey3,
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
                                    type:  TextInputType.text,
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
                                    topContentPadding: 0,
                                    MaxLines: 1,
                                    Margin: 0,
                                    FoucesNode:FoucesNodeConfirm,
                                    Onsubmitted: (String){},
                                    TextInputaction: TextInputAction.done,
                                    Controller: _ConfirmpassController, Hint_Text: "Confirm password",
                                    Onchanged:(String){},
                                    validator: (value){
                                     if (value!=_PassController.text){
                                        return "Make sure passwords are equal";
                                        }
                                    }, IconClicked: () {
                                    // _Loginbloc.add(ChangeIconStatus());
                                  }, obscureText: false,
                                  ),),
                              ),


                              Container(
                                margin: EdgeInsets.only(top: 22.h),
                                child: CustomButton(
                                  onPressed: () async {


                                    if (
                                    _formkey3.currentState!.validate()&&
                                    _formkey2.currentState!.validate()&&
                                    _formkey1.currentState!.validate()){
                                      widget.User!.email = _EmailController.text;
                                      widget.User!.pass = _PassController.text;

                                      bloc2.add(PostSignUp((b) => b
                                          ..Email= widget.User!.email
                                          ..password = widget.User!.pass
                                          ..first_name = widget.User!.f_name
                                          ..last_name = widget.User!.l_name
                                      ));
                                      DiDitOnce = true;
                                    }
                                  },
                                  ButtonText: 'Continue',
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
