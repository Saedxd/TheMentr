// ignore: file_names
// ignore_for_file: file_names, non_constant_identifier_names
import 'dart:io';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:thementr/App/app.dart';
import 'package:thementr/Core/Functions/Fucntions.dart';
import 'package:thementr/Core/constants/strings.dart';
import 'package:thementr/Core/widgets/CustomButton.dart';
import 'package:thementr/Core/widgets/Custom_Textfield.dart';
import 'package:thementr/Data/prefs_helper/prefs_helper.dart';
import 'package:thementr/Injection.dart';
import 'package:thementr/UI/Auth/Login_screen/bloc/login_event.dart';
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
import 'package:thementr/UI/Auth/SignUp_Screen/pages/SignUp5.dart';
import 'package:thementr/UI/Auth/SignUp_Screen/pages/SignUp8.dart';
import '../../../../Core/Classes/Classes.dart';
import '../../../../core/theme/theme_constants.dart';
import '../../Login_screen/pages/Login_Page.dart';

class SignUp4 extends StatefulWidget {
  user? User;
  SignUp4(this.User);
  @override
  _SignUp4State createState() => _SignUp4State();
}


class _SignUp4State extends State<SignUp4> with WidgetsBindingObserver {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final Pref = PrefsHelper();

  bool? DiditOnce = true;
  bool DIALOG = false;
  double? lat;
  double? lng;
  String? fcmToken;

  final bloc2 = sl<SignUpBloc>();


  @override
  void initState() {
    bloc2.add(GetInterests());
    bloc2.add(GetRoles());

    // bloc2.add(ChangeInterestValue((b) => b..value=InterestArea_List[0]));
    // bloc2.add(ChangeRoleValue((b) => b..value=Role_List[0]));
    super.initState();

  }
  // List<String> Role_List = ["Mentee","Mentor"];
  // List<String> InterestArea_List = ["Health Science","Technology"];



  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    TextTheme _TextTheme = Theme.of(context).textTheme;
    ColorScheme ColorS = Theme.of(context).colorScheme;
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
                              state.success!
                                  ?Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 18.w,right: 9.w,top: 50.h),
                                    child:  Text(
                                      'Choose Category',
                                      style: Font1.copyWith(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2.h
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 12.h,bottom: 28.h),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton2(
                                    isExpanded: true,
                                    items: state.Roles_Values!
                                        .map((item) => DropdownMenuItem<String>(
                                        value: item,
                                        child:
                                        Text(
                                          item,
                                          style:Font1.copyWith(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w500,
                                            color: DarkColor,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        )
                                    ))
                                        .toList(),
                                    value: state.SelectedRoleValue!.isNotEmpty? state.SelectedRoleValue:null,
                                    onChanged: (value) {
                                      bloc2.add(ChangeRoleValue((b) => b..value=value as String));
                                    },
                                    icon:  Icon(
                                      Icons.keyboard_arrow_down,
                                      size: 20.w,
                                      color: Color(0xff292D32),
                                    ),
                                    iconSize: 20.w,
                                    iconEnabledColor: Colors.yellow,
                                    iconDisabledColor: Colors.grey,
                                    buttonHeight:44.h,
                                    buttonWidth:  396.w,
                                    buttonPadding:  EdgeInsets.only(left: 14.w, right: 14.w),
                                    buttonDecoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4.r),
                                      border: Border.all(
                                        color: DarkColor,
                                      ),
                                      color: Colors.white,
                                    ),
                                    buttonElevation: 2,
                                    itemHeight: 50.h,
                                    dropdownMaxHeight: 170.h,
                                    dropdownWidth:396.w,
                                    dropdownDecoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4.r),
                                        color: Colors.white
                                    ),
                                    dropdownElevation: 8,
                                    scrollbarRadius:  Radius.circular(2.r),
                                    scrollbarThickness: 6,
                                    scrollbarAlwaysShow: false,
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 18.w,right: 9.w),
                                    child:  Text(
                                      'Area of Interest',
                                      style: Font1.copyWith(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2.h
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 12.h),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton2(
                                    isExpanded: true,
                                    items: state.Interest_VaLues!
                                        .map((item) => DropdownMenuItem<String>(
                                        value:item,
                                        child:
                                        Text( item,
                                          style:Font1.copyWith(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w500,
                                            color: DarkColor,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        )
                                      //:Text("")
                                    ))
                                        .toList(),
                                    value: state.SelectedInterestValue!.isNotEmpty? state.SelectedInterestValue:null,
                                    onChanged: (value) {
                                      bloc2.add(ChangeInterestValue((b) => b..value=value as String));
                                    },
                                    icon:  Icon(
                                      Icons.keyboard_arrow_down,
                                      size: 20.w,
                                      color: Color(0xff292D32),
                                    ),

                                    iconSize: 20.w,
                                    iconEnabledColor: Colors.yellow,
                                    iconDisabledColor: Colors.grey,
                                    buttonHeight:44.h,
                                    buttonWidth:  396.w,
                                    buttonPadding:  EdgeInsets.only(left: 14.w, right: 14.w),
                                    buttonDecoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4.r),
                                      border: Border.all(
                                        color: DarkColor,
                                      ),
                                      color: Colors.white,
                                    ),
                                    buttonElevation: 2,
                                    itemHeight: 50.h,
                                    dropdownMaxHeight: 170.h,
                                    dropdownWidth:396.w,
                                    dropdownDecoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4.r),
                                        color: Colors.white
                                    ),
                                    dropdownElevation: 8,
                                    scrollbarRadius:  Radius.circular(2.r),
                                    scrollbarThickness: 6,
                                    scrollbarAlwaysShow: false,
                                  ),
                                ),
                              ),
                            ],
                          )
                                  :Container(
                                width: w,
                                height: 250.h,
                                child: state.isLoading == true
                                    ? Center(child: listLoader(context: context)):Container(),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 22.h),
                                child: CustomButton(
                                  onPressed:()async{
                                    widget.User!.Role= state.SelectedRoleValue!;
                                    widget.User!.AreaOF_Interest = state.SelectedInterestValue!;
                                    if (state.SelectedRoleValue!.toLowerCase()=="mentor")
                                      PushNavigator(context,SignUp8(widget.User!,state.SelectedInterestValue!));
                                    else{
                                      PushNavigator(context,SignUp5(widget.User!,state.SelectedInterestValue!));
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
                ]),
              ));
        });
  }
}
