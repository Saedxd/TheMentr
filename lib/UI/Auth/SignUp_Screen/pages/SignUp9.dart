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
import 'package:thementr/UI/Auth/SignUp_Screen/pages/SignUp10.dart';
import '../../../../core/theme/theme_constants.dart';
import '../../Login_screen/pages/Login_Page.dart';

class SignUp9 extends StatefulWidget {
  @override
  _SignUp9State createState() => _SignUp9State();
}

class _SignUp9State extends State<SignUp9> with WidgetsBindingObserver {
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
  void initState() {
    bloc2.add(AddSkill_List());
    super.initState();
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
                                margin: EdgeInsets.only(top: 38.h,left: 18.w,bottom: 22.h),
                                child:  Container(
                                  child: Text(
                                    'Fill all the compulsory information information',
                                    textAlign: TextAlign.left,
                                    style: Font1.copyWith(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: w,
                                margin: EdgeInsets.only(top: 22.h,left: 18.w,bottom: 16.h),
                                child:Container(
                                  child: Text(
                                    'Mentor’s Information',
                                    textAlign: TextAlign.left,
                                    style: Font1.copyWith(
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black
                                    ),
                                  ),
                                ),
                              ),
                              !state.isLoading!?state.Skill_List!.length!=0?Container(
                                  width: w,
                                  height: 420.h,
                                  margin: EdgeInsets.only(left: 14.w,right: 18.w),
                                  child:ScrollConfiguration(
                                    behavior: MyBehavior(),
                                    child:ListView.separated(
                                      controller: scrollController,
                                      shrinkWrap: true,
                                      padding: EdgeInsets.zero,
                                      physics: AlwaysScrollableScrollPhysics(),
                                      scrollDirection: Axis.vertical,
                                      itemCount: state.Skill_List!.length,
                                      itemBuilder: (BuildContext context, int index) {
                                        return
                                          RemoveHighlight(InkWell(
                                            onTap: (){
                                              WidgetsBinding.instance.addPostFrameCallback( (_) => Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) => SignUp10(state.Skill_List![index],
                                                      state.Skill_List![index].Screen_type=="Add Occupation"?true:false
                                                  ),
                                                ),
                                              ).then((value) {
                                                if (value=="No"){
                                                  bloc2.add(MentorInfoStatusChange((b) => b
                                                    ..Index = index
                                                    ..value = false
                                                  ));
                                                }else if (value=="Yes"){
                                                  bloc2.add(MentorInfoStatusChange((b) => b
                                                    ..Index = index
                                                    ..value = true
                                                  ));
                                                }
                                              }));
                                            },
                                            child: Container(
                                              width: 396.w,
                                              height: 56.h,
                                              decoration: BoxDecoration(
                                                  borderRadius : border(25,25,25,25),
                                                  border : Border.all(
                                                    color:!state.isLoading!
                                                        ?state.MentorInfoListAdded![index]
                                                        ?Colors.transparent
                                                        :  state.ValidateSkill_List! ?Color(0xffFF3B30) :Colors.transparent
                                                        :Colors.transparent,

                                                    width: 1.w,
                                                  ),
                                                  color :Color(0xffCEEAFF)
                                              ),
                                              padding: EdgeInsets.symmetric(horizontal: 12.w),
                                              child:Container(
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        SvgPicture.asset(state.Skill_List![index].Skill_Image
                                                          ,color: Color(0xff646464),),
                                                        SizedBox(width: 15.w,),
                                                        Container(
                                                          padding: EdgeInsets.only(top: 5.h),
                                                          child: Text(
                                                            state.Skill_List![index].Screen_type,
                                                            textAlign: TextAlign.left,
                                                            style: Font1.copyWith(
                                                                fontSize: 16.sp,
                                                                fontWeight: FontWeight.w400,
                                                                color: Color(0xff646464)
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    !state.isLoading!?state.MentorInfoListAdded![index]?
                                                    Container(
                                                        width: 20.h,
                                                        height: 20.h,
                                                        child: SvgPicture.asset("Assets/images/tick-circle.svg")):Container():Container(),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ));
                                      }, separatorBuilder: (BuildContext context, int index) {
                                      return SizedBox(height: 16.h,);
                                    },
                                    ),)
                              ):Container():Container(),
                              Container(
                                margin: EdgeInsets.only(top: 104.h),
                                child: CustomButton(
                                  onPressed:()async{
                                    int Count = 0;
                                    bloc2.add(ValidateSkill_List());
                                    for(int i =0;i<state.MentorInfoListAdded!.length;i++){
                                      if (state.MentorInfoListAdded![i]==false){
                                        Count = 5;
                                      }
                                    }

                                    if (Count==0) {
                                      print(Hobbies);
                                      print(Work_Links);
                                      print(Y_OF_Experience);
                                      print(CountryValue);
                                      print(CityValue);
                                      print(occupation);
                                      print(BirthDay);
                                      // PushNavigator(context,Container());
                                    }
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
