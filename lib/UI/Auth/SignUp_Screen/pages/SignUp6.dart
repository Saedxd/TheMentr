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
import 'package:thementr/UI/Auth/SignUp_Screen/pages/SignUp7.dart';
import '../../../../core/theme/theme_constants.dart';
import '../../Login_screen/pages/Login_Page.dart';

class SignUp6 extends StatefulWidget {
  user? User;
  SignUp6(this.User);
  @override
  _SignUp6State createState() => _SignUp6State();
}

class _SignUp6State extends State<SignUp6> with WidgetsBindingObserver {
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
                child:Stack(children:[
                  Container(
                    width: w,
                    height: h,
                    child: Column(
                      children: [
                        AppLogoTitle(),
                        Container(
                          margin: EdgeInsets.only(top: 60.h,left: 20.w,right: 20.w),
                          child: Text('In your personal or professional life, are you looking for someone to mentor you? '
                              'Someone who can assist you in honing your abilities and achieving your objectives? Then, '
                              'looking for a mentor might be the ideal course of action for you! Let’s connect you with '
                              'great mentors all over the globe.....',
                            textAlign: TextAlign.center,
                            style: Font1.copyWith(
                                color: Colors.black,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                                height: 1.25.h
                            ),),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 97.h),
                          child: CustomButton(
                            onPressed: () async {
                              PushNavigator(context,SignUp7(widget.User!));
                            },
                            ButtonText:"Let’s get Started",
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
