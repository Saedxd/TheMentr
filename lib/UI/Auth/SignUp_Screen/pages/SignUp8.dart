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
import 'package:thementr/UI/Auth/SignUp_Screen/pages/SignUp9.dart';
import '../../../../core/theme/theme_constants.dart';
import '../../Login_screen/pages/Login_Page.dart';

class SignUp8 extends StatefulWidget {
  user? User;
  String? Interest_Value;
  SignUp8(this.User,this.Interest_Value);
  @override
  _SignUp8State createState() => _SignUp8State();
}

class _SignUp8State extends State<SignUp8> with WidgetsBindingObserver {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final Pref = PrefsHelper();

  bool? DiditOnce = true;
  bool DIALOG = false;
  double? lat;
  double? lng;
  String? fcmToken;

  final bloc2 = sl<SignUpBloc>();
  ScrollController scrollController =  ScrollController();

  @override
  void initState(){
    super.initState();
    bloc2.add(getSkills((b) => b..interest=widget.Interest_Value));
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
                            children:[
                              Container(
                                width: w,
                                margin: EdgeInsets.only(top: 38.h,left: 18.w,bottom: 32.h),
                                child: Container(
                                  child: Text(
                                    'Skills I Can Mentor On',
                                    textAlign: TextAlign.left,
                                    style: Font1.copyWith(
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w500,
                                      color: Colors.black
                                    ),
                                  ),
                                ),
                              ),

                              Container(
                                width: w,
                                height: 418.h,
                                margin: EdgeInsets.only(left: 14.w,right: 18.w),
                                child:ScrollConfiguration(
                                  behavior: MyBehavior(),
                                  child:ListView.separated(
                                  controller: scrollController,
                                  shrinkWrap: true,
                                  padding: EdgeInsets.zero,
                                  physics: AlwaysScrollableScrollPhysics(),
                                  scrollDirection: Axis.vertical,
                                  itemCount: state.Skills_VaLues!.length,
                                  itemBuilder: (BuildContext context, int index) {
                                    return
                                      RemoveHighlight(InkWell(
                                      onTap: (){
                                        bloc2.add(SelectItemInList((b) => b..Index = index));
                                      },
                                      child: Container(
                                        width: 396.w,
                                        height: 46.h,
                                            decoration: BoxDecoration(
                                                borderRadius : border(25,25,25,25),
                                            color :!state.isLoading!?state.SelectedListItems![index]?Color(0xffCEEAFF): Color.fromRGBO(245, 245, 245, 1):Color.fromRGBO(245, 245, 245, 1),
                                        ),
                                            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 13.h),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                          Text(state.Skills_VaLues![index],textAlign:TextAlign.left,style:Font1.copyWith(
                                            color: Color(0xff646464),
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w400,
                                            height: 1.25.h
                                        )),
                                            !state.isLoading!
                                                ?state.SelectedListItems![index]
                                                ?Container(
                                                width: 20.h,
                                                height: 20.h,
                                                child:
                                                SvgPicture.asset("Assets/images/tick-circle.svg")):Container():Container(),

                                          ],
                                        ),
                                           ),
                                    ));
                                  }, separatorBuilder: (BuildContext context, int index) {
                                  return SizedBox(height: 16.h,);
                                },
                                ),)
                              ),
                              RemoveHighlight(Center(child: InkWell(
                                onTap: (){
                                  scrollController.animateTo(
                                    scrollController.position.maxScrollExtent,
                                    duration: Duration( milliseconds: 400),
                                    curve: Curves.easeIn,
                                  );
                                },
                                child: Container(
                                  margin: EdgeInsets.only(top: 16.h),
                                  child: CircleAvatar(
                                    radius: 25.r,
                                    backgroundColor: Color(0xff077BCD),
                                    child: CircleAvatar(
                                      radius: 23.5.r,
                                      backgroundColor: Colors.white,
                                      child: Icon(
                                        Icons.keyboard_arrow_down,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              )),),


                              Container(
                                margin: EdgeInsets.only(top: 33.h),
                                child: CustomButton(
                                  onPressed: () async {
                                    PushNavigator(context,SignUp9());
                                  },
                                  ButtonText: 'Next',
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
