import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:thementr/App/app.dart';
import 'package:thementr/Core/Classes/Classes.dart';
import 'package:thementr/Core/Functions/Fucntions.dart';
import 'package:thementr/Core/constants/strings.dart';
import 'package:thementr/Core/theme/theme_constants.dart';
import 'package:thementr/Core/widgets/CustomButton.dart';
import 'package:thementr/Core/widgets/Custom_Textfield.dart';
import 'package:thementr/Injection.dart';
import 'package:thementr/UI/Auth/EducationBackGround_Screen/bloc/EducationBackground_bloc.dart';
import 'package:thementr/UI/Auth/EducationBackGround_Screen/bloc/EducationBackground_event.dart';
import 'package:thementr/UI/Auth/EducationBackGround_Screen/bloc/EducationBackground_state.dart';



import '../../Verification_Screen/pages/Verification.dart';

class EducationBackground extends StatefulWidget {

  @override
  State<EducationBackground> createState() => _EducationBackgroundState();
}

class _EducationBackgroundState extends State<EducationBackground> {
  late FocusNode _EmailFocusNode;
 ScrollController scrollController = ScrollController();

  var _formkey1 = GlobalKey<FormState>();
  final _EducationBackgroundBloc = sl<EducationBackgroundBloc>();
  bool diditonce = false;



  @override
  void initState() {
    _EmailFocusNode = FocusNode();
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return BlocBuilder(
        bloc: _EducationBackgroundBloc,
        builder: (BuildContext context, EducationBackgroundState state) {

          return Scaffold(
            resizeToAvoidBottomInset: false,
            body: SafeArea(
                child: Stack(children: [
                    Form(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    key: _formkey1,
              child:
              Container(
                  width: w,
                  height: h,
                  child: Column(children: [
                    Container(
                      padding: EdgeInsets.only(top: 136.h),
                      child: Center(
                        child: Text(
                          "Education Background",
                          style: Font1.copyWith(
                              fontSize: 28.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                      ),
                    ),

                    Row(
                      children: [
                        Container(
                          height: 36.h,
                          width: 36.w,
                          margin: EdgeInsets.only(top: 5.h, left: 4.w),
                          child: IconButton(
                            onPressed:(){
                              WidgetsBinding.instance.addPostFrameCallback((_) =>Navigator.pop(context,));
                            },
                            icon: Icon(Icons.arrow_back),
                          ),
                        ),
                      ],
                    ),
                !state.isLoading!?
                Container(
                  width: w,
                  height: 500.h,
                  child: ScrollConfiguration(
                        behavior: MyBehavior(),
                        child:ListView.builder(
                        controller: scrollController,
                        shrinkWrap: true,
                        padding: EdgeInsets.zero,
                        physics: AlwaysScrollableScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        itemCount: state.Forms!.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            children: [

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 17.h,left: 16.w),
                          child: Text("Institution Name",
                            textAlign: TextAlign.center,
                            style: Font1.copyWith(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                height: 1.45.h
                            ),
                          ),
                        ),
                        index!=0?
                        InkWell(
                          onTap: (){
                            _EducationBackgroundBloc.add(RemoveForm((b) => b..Index=index));
                          },
                          child: Container(
                            margin: EdgeInsets.only(top: 17.h,right: 16.w),
                            child: Text("Remove",
                              textAlign: TextAlign.center,
                              style: Font1.copyWith(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.black,
                                  height: 1.45.h
                              ),
                            ),
                          ),
                        ):Container(),
                      ],
                    ),

                              Container(
                                width: 396.w,
                                height: 80.h,
                                margin: EdgeInsets.only( top: 15.h),
                                child: textfeild(
                                  prefixIconClicked: () {},
                                  Want_prefixIconClicked:  false,
                                  Want_Mic_Icon: false,
                                  BorderType: "Outline",
                                  Font_Style:
                                  Font1.copyWith(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16.sp,
                                      color: Color( 0xff2B2B2B),
                                      height: 1.6.h),
                                  type: TextInputType .multiline,
                                  textAlign: TextAlign.left,
                                  FontSize: 20,
                                  hidePass: false,
                                  FillColor:
                                  Color(0xffCEEAFF),
                                  width: 396,
                                  Hieght: 80,
                                  topContentPadding: 15,
                                  MaxLines: 1,
                                  Margin: 0,
                                  FoucesNode: FocusNode(),
                                  Onsubmitted: (String) {},
                                  TextInputaction: TextInputAction.newline,
                                  Controller: state.Forms![index].InstitutionNameController,
                                  Hint_Text: "",
                                  Onchanged: (va) {},
                                  validator:
                                  MultiValidator([
                                    // RequiredValidator(errorText: "Required"),
                                  ]),
                                  IconClicked: () {},
                                  obscureText: true,
                                  LeftContentPadding: 20,
                                  HintText_Style:
                                  Font1.copyWith(
                                    fontWeight:
                                    FontWeight.w500,
                                    fontSize: 16.sp,
                                  ),
                                  BorderColor:
                                  Color(0xff077BCD),
                                  BorderRaduis: 10,
                                ),
                              ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 0.h,left: 16.w),
                          child: Text("Educational Level",
                            textAlign: TextAlign.center,
                            style: Font1.copyWith(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                height: 1.45.h
                            ),
                          ),
                        ),
                      ],
                    ),

                              Container(
                                width: 396.w,
                                height: 80.h,
                                margin: EdgeInsets.only( top: 15.h),
                                child: textfeild(
                                  prefixIconClicked: () {},
                                  Want_prefixIconClicked:  false,
                                  Want_Mic_Icon: false,
                                  BorderType: "Outline",
                                  Font_Style:
                                  Font1.copyWith(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16.sp,
                                      color: Color( 0xff2B2B2B),
                                      height: 1.6.h),
                                  type: TextInputType .multiline,
                                  textAlign: TextAlign.left,
                                  FontSize: 20,
                                  hidePass: false,
                                  FillColor:
                                  Color(0xffCEEAFF),
                                  width: 396,
                                  Hieght: 80,
                                  topContentPadding: 15,
                                  MaxLines: 1,
                                  Margin: 0,
                                  FoucesNode: FocusNode(),
                                  Onsubmitted: (String) {},
                                  TextInputaction: TextInputAction.newline,
                                  Controller: state.Forms![index].EducationLevelController,
                                  Hint_Text: "",
                                  Onchanged: (va) {},
                                  validator:
                                  MultiValidator([
                                    // RequiredValidator(errorText: "Required"),
                                  ]),
                                  IconClicked: () {},
                                  obscureText: true,
                                  LeftContentPadding: 20,
                                  HintText_Style:
                                  Font1.copyWith(
                                    fontWeight:
                                    FontWeight.w500,
                                    fontSize: 16.sp,
                                  ),
                                  BorderColor:
                                  Color(0xff077BCD),
                                  BorderRaduis: 10,
                                ),
                              ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 5.h,left: 16.w),
                          child: Text("Course of Study",
                            textAlign: TextAlign.center,
                            style: Font1.copyWith(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                height: 1.45.h
                            ),
                          ),
                        ),
                      ],
                    ),

                    Container(
                      width: 396.w,
                      height: 80.h,
                      margin: EdgeInsets.only( top: 15.h),
                      child: textfeild(
                        prefixIconClicked: () {},
                        Want_prefixIconClicked:  false,
                        Want_Mic_Icon: false,
                        BorderType: "Outline",
                        Font_Style:
                        Font1.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 16.sp,
                            color: Color( 0xff2B2B2B),
                            height: 1.6.h),
                        type: TextInputType .multiline,
                        textAlign: TextAlign.left,
                        FontSize: 20,
                        hidePass: false,
                        FillColor:
                        Color(0xffCEEAFF),
                        width: 396,
                        Hieght: 80,
                        topContentPadding: 15,
                        MaxLines: 1,
                        Margin: 0,
                        FoucesNode: FocusNode(),
                        Onsubmitted: (String) {},
                        TextInputaction: TextInputAction.newline,
                        Controller: state.Forms![index].COStudyController,
                        Hint_Text: "",
                        Onchanged: (va) {},
                        validator:
                        MultiValidator([
                          // RequiredValidator(errorText: "Required"),
                        ]),
                        IconClicked: () {},
                        obscureText: true,
                        LeftContentPadding: 20,
                        HintText_Style:
                        Font1.copyWith(
                          fontWeight:
                          FontWeight.w500,
                          fontSize: 16.sp,
                        ),
                        BorderColor:
                        Color(0xff077BCD),
                        BorderRaduis: 10,
                      ),
                    ),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 5.h,left: 16.w),
                                    child: Text("Year of Graduation",
                                      textAlign: TextAlign.center,
                                      style: Font1.copyWith(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                          height: 1.45.h
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                              Container(
                                width: 396.w,
                                height: 80.h,
                                margin: EdgeInsets.only( top: 15.h),
                                child: textfeild(
                                  prefixIconClicked: () {},
                                  Want_prefixIconClicked:  false,
                                  Want_Mic_Icon: false,
                                  BorderType: "Outline",
                                  Font_Style:
                                  Font1.copyWith(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16.sp,
                                      color: Color( 0xff2B2B2B),
                                      height: 1.6.h),
                                  type: TextInputType .multiline,
                                  textAlign: TextAlign.left,
                                  FontSize: 20,
                                  hidePass: false,
                                  FillColor:
                                  Color(0xffCEEAFF),
                                  width: 396,
                                  Hieght: 80,
                                  topContentPadding: 15,
                                  MaxLines: 1,
                                  Margin: 0,
                                  FoucesNode: FocusNode(),
                                  Onsubmitted: (String) {},
                                  TextInputaction: TextInputAction.newline,
                                  Controller: state.Forms![index].YOeducationController,
                                  Hint_Text: "",
                                  Onchanged: (va) {},
                                  validator:
                                  MultiValidator([
                                    // RequiredValidator(errorText: "Required"),
                                  ]),
                                  IconClicked: () {},
                                  obscureText: true,
                                  LeftContentPadding: 20,
                                  HintText_Style:
                                  Font1.copyWith(
                                    fontWeight:
                                    FontWeight.w500,
                                    fontSize: 16.sp,
                                  ),
                                  BorderColor:
                                  Color(0xff077BCD),
                                  BorderRaduis: 10,
                                ),
                              ),
                     TwoLines(w),
                            ],
                          );

                        }
                        )
                  )

                ):Container(),
                    InkWell(
                      onTap:(){
                        _EducationBackgroundBloc.add(AddForm());
                        Future.delayed(Duration(milliseconds: 1000), () {
                          scrollController.animateTo(
                                    scrollController.position.maxScrollExtent,
                                    duration: Duration( milliseconds: 400),
                                    curve: Curves.easeIn,
                                  );
                        });

                      },
                      child: Container(
                        width: 90.w,
                        height: 40.h,
                        margin: EdgeInsets.only(left: 320.w,top: 30.h),
                        child: Text("Add more +", style: Font1.copyWith(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            height: 1.45.h
                        ),),
                      ),
                    )

                  ]))),
            ])),
          );
        });
  }
}
