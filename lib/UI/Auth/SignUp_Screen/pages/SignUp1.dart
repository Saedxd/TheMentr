// ignore: file_names
// ignore_for_file: file_names, non_constant_identifier_names
import 'dart:io';

import 'package:thementr/App/app.dart';
import 'package:thementr/Core/Classes/Classes.dart';
import 'package:thementr/Core/Functions/Fucntions.dart';
import 'package:thementr/Core/widgets/CustomButton.dart';
import 'package:thementr/Core/widgets/Custom_Textfield.dart';
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
import 'package:thementr/UI/Auth/SignUp_Screen/pages/SignUp2.dart';
import '../../../../core/theme/theme_constants.dart';
import '../../Login_screen/pages/Login_Page.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> with WidgetsBindingObserver {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  late FocusNode FoucesNodeLName;
  late FocusNode FoucesNodeFname;


  bool? DiditOnce = true;
  bool DIALOG = false;
  double? lat;
  double? lng;
  String? fcmToken;

  final bloc2 = sl<SignUpBloc>();
  final _formkey1 = GlobalKey<FormState>();
  final _formkey2 = GlobalKey<FormState>();

  final TextEditingController _FnameController = TextEditingController();
  final TextEditingController _LNameController = TextEditingController();




  @override
  void initState() {
    FoucesNodeLName = FocusNode();
    FoucesNodeFname = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    FoucesNodeFname.dispose();
    FoucesNodeLName.dispose();
    _LNameController.dispose();
    _FnameController.dispose();
  }


  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return BlocBuilder(
        bloc: bloc2,
        builder: (BuildContext context, SignUpState state) {

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
                                    'Add your name',
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
                                  FontSize: 20,
                                  hidePass: false,
                                  FillColor: Colors.transparent,
                                  width: 393,
                                  Hieght: 76,
                                  topContentPadding: 0,
                                  MaxLines: 1,
                                  Margin: 0,
                                  FoucesNode:FoucesNodeFname,
                                  Onsubmitted: (String){},
                                  TextInputaction: TextInputAction.next,
                                  Controller: _FnameController, Hint_Text: "First name",
                                  Onchanged:(String){},
                                  validator: MultiValidator([
                                    RequiredValidator(errorText: "Required"),
                                  ]),
                                  IconClicked: () {



                                  },obscureText:true, textAlign: TextAlign.left,
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
                                    Hieght: 80,
                                    topContentPadding: 0,
                                    MaxLines: 1,
                                    Margin: 0,
                                    FoucesNode:FoucesNodeLName,
                                    Onsubmitted: (String){},
                                    TextInputaction: TextInputAction.done,
                                    Controller: _LNameController, Hint_Text: "Last name",
                                    Onchanged:(String){},
                                    validator: MultiValidator([
                                      RequiredValidator(errorText: "Required"),
                                    ]), IconClicked: () {
                                      // _Loginbloc.add(ChangeIconStatus());
                                      }, obscureText: true,
                                  ),),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 22.h),
                                child: CustomButton(
                                  onPressed: () async {


                                    if(_formkey2.currentState!.validate()&&
                                    _formkey1.currentState!.validate()){

                                      user User = user();
                                      User.f_name = _FnameController.text;
                                      User.l_name = _LNameController.text;
                                      PushNavigator(context,SignUp2(User));
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
