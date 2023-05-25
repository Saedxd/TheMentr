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
import 'package:thementr/UI/Auth/SignUp_Screen/pages/SignUp8.dart';
import 'package:thementr/UI/Home/HomeScreen/pages/HomePage.dart';
import '../../../../core/theme/theme_constants.dart';
import '../../Login_screen/pages/Login_Page.dart';

class SignUp7 extends StatefulWidget {
  user? User;
  SignUp7(this.User);
  @override
  _SignUp7State createState() => _SignUp7State();
}

class _SignUp7State extends State<SignUp7> with WidgetsBindingObserver {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final Pref = PrefsHelper();
  late FocusNode FoucesNodePass;
  late FocusNode FoucesNodeEmail;

  bool? DiditOnce = true;
  bool DIALOG = false;
  double? lat;
  double? lng;
  String? fcmToken;

  final bloc2 = sl<SignUpBloc>();
  final _formkey1 = GlobalKey<FormState>();
  final _formkey2 = GlobalKey<FormState>();

  final TextEditingController _MainContoller = TextEditingController();
  final TextEditingController _DescribeGoalController = TextEditingController();


  @override
  void initState() {
    FoucesNodePass = FocusNode();
    FoucesNodeEmail = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    FoucesNodeEmail.dispose();
    FoucesNodePass.dispose();
    _DescribeGoalController.dispose();
    _MainContoller.dispose();
  }

  bool Diditonce = false;
  bool Selected = false;


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
                          padding: EdgeInsets.only(top: 50.h),
                          child: Center(
                            child: Text(
                              'Mentee’s Main Goal',
                              style: Font1.copyWith(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w600
                              ),
                            ),
                          ),
                        ),
                        Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 20.h),
                            child: Form(
                              autovalidateMode: AutovalidateMode.onUserInteraction,
                              key: _formkey1,
                              child:
                              textfeild(
                                prefixIconClicked: () {  },
                                Want_prefixIconClicked: false,
                                Want_Mic_Icon: false,
                                BorderType: "UnderLine",
                                type:TextInputType.text,
                                BorderRaduis: 10,
                                BorderColor: Colors.transparent,
                                HintText_Style: Font1.copyWith(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16.sp,
                                    color: Color(0xff646464)
                                ),
                                LeftContentPadding: 10,
                                textAlign: TextAlign.left,
                                FontSize: 20,
                                hidePass: false,
                                FillColor: Color(0xffF5F5F5),
                                width: 396,
                                Hieght: 120,
                                topContentPadding: 10,
                                MaxLines: 12,
                                Margin: 0,
                                FoucesNode:FoucesNodeEmail,
                                Onsubmitted: (String){},
                                TextInputaction: TextInputAction.next,
                                Controller: _MainContoller, Hint_Text: "Enter mentee’s Goal",
                                Onchanged:(String){
                                  bloc2.add(ChangeCharLength((b) => b..value= String.length));
                                },
                                validator: MultiValidator([
                                  MaxLengthValidator(100, errorText: "Max Length Reached!"),
                                  RequiredValidator(errorText: "Required"),
                                ]),
                                IconClicked:(){},
                                obscureText:true,
                                Font_Style: Font1.copyWith(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.sp,
                                  color: Color(0xff2B2B2B),
                                  height: 1.6.h
                              ),
                              ),),
                          ),

                          Positioned(
                            left: 340.w,
                              top: 80.h,
                              child: Text("${state.CharLength}/100")
                          )

                        ],
                      ),
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
                              Font_Style: Font1.copyWith(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.sp,
                                  color: Color(0xff2B2B2B),
                                  height: 1.6.h
                              ),
                              BorderRaduis: 10,
                              BorderColor: Colors.transparent,
                              HintText_Style: Font1.copyWith(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.sp,
                                  color: Color(0xff646464)
                              ),
                              LeftContentPadding: 10,
                              textAlign: TextAlign.left,
                              FontSize: 20,
                              hidePass: false,
                              FillColor: Color(0xffF5F5F5),
                              width: 396,
                              Hieght: 85,
                              topContentPadding: 10,
                              MaxLines: 12,
                              Margin: 0,
                              FoucesNode:FoucesNodePass,
                              Onsubmitted: (String){},
                              TextInputaction: TextInputAction.next,
                              Controller: _DescribeGoalController, Hint_Text: "Describe The Goal",
                              Onchanged:(String){},
                              validator: MultiValidator([
                                RequiredValidator(errorText: "Required"),
                              ]),
                              IconClicked:(){},
                              obscureText:true, type:  TextInputType.text,
                            ),),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 22.h),
                          child: CustomButton(
                            onPressed: () async {
                              widget.User!.Mentee_Goal = _MainContoller.text;
                              widget.User!.Goal_Desc = _DescribeGoalController.text;
                              PushNavigator(context,HomeScreen());
                            },
                            ButtonText: 'Done',
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
                  ),
                  state.isLoading == true
                      ? Center(child: listLoader(context: context))
                      : Container(),

                ]),
              ));
        });
  }
}
