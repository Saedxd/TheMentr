import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:thementr/Core/theme/theme_constants.dart';

Widget listLoader({context}) {
  return SpinKitThreeBounce(
    color: Color(0xff015595),
    size: 30.0.w,
  );
}

BorderRadiusGeometry border(
    double bottomLeft, double bottomRight, double topLeft, double topRight) {
  return BorderRadius.only(
    bottomLeft: Radius.circular(bottomLeft.r),
    bottomRight: Radius.circular(bottomRight.r),
    topLeft: Radius.circular(topLeft.r),
    topRight: Radius.circular(topRight.r),
  );
}

Theme RemoveHighlight(Widget W) {
  return Theme(
      data: ThemeData(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      child: W);
}

OutlineInputBorder OutlineBorderWidget(Color color, double BorderRaduis) {
  return OutlineInputBorder(
    borderSide: BorderSide(color: color, width: 2.w),
    borderRadius: BorderRadius.circular(BorderRaduis.r),
  );
}

UnderlineInputBorder UnderlineInputWidget(Color color, double BorderRaduis) {
  return UnderlineInputBorder(
      borderSide: BorderSide(color: color, width: 2.w),
      borderRadius: BorderRadius.circular(BorderRaduis.r));
}

Container AppLogoTitle() {
  return Container(
    padding: EdgeInsets.only(top: 136.h),
    child: Center(
      child: Text(
        'TheMentr',
        style: Font1.copyWith(fontSize: 32.sp, color: Color(0xff015595)),
      ),
    ),
  );
}

void ShowAnimatedTopbar(
    BuildContext c, String tEXT, AnimatedSnackBarType type) async {
  AnimatedSnackBar.material(
    tEXT,
    type: type,
    duration: Duration(seconds: 2),
    mobileSnackBarPosition: MobileSnackBarPosition.bottom,
  ).show(c);
}

void PushNavigator(BuildContext Context, Widget builder) async {
  WidgetsBinding.instance.addPostFrameCallback((_) => Navigator.push(
        Context,
        MaterialPageRoute(
          builder: (context) => builder,
        ),
      ));
}

void PushReplacementsNavigator(BuildContext Context, Widget builder) async {
  WidgetsBinding.instance.addPostFrameCallback((_) =>
  Navigator.pushReplacement(
    Context,
    MaterialPageRoute(
      builder: (context) => builder,
    ),
  ));
}

void PushAndRemoveUtil(BuildContext Context, Widget builder) async {
  WidgetsBinding.instance.addPostFrameCallback((_) =>
  Navigator.pushAndRemoveUntil<void>(
    Context,
    MaterialPageRoute<void>(builder: (BuildContext context) => builder),
          (Route<dynamic> route) => false
  ));
}

Widget OR_Widget(double w) {
  return Container(
    width: w,
    padding: EdgeInsets.only(left: 15.5.w, right: 15.5.w),
    margin: EdgeInsets.only(top: 28.h, bottom: 38.h),
    child: Row(
      children: [
        Container(
          width: 174.w,
          height: 1.h,
          color: Color(0xff077BCD),
        ),
        Container(
          margin: EdgeInsets.only(left: 16.w, right: 16.w),
          child: Text(
            'or',
            style: Font1.copyWith(
              fontWeight: FontWeight.w500,
              fontSize: 16.sp,
            ),
          ),
        ),
        Container(
          width: 174.w,
          height: 1.h,
          color: Color(0xff077BCD),
        ),
      ],
    ),
  );
}

Widget TwoLines(double w){
  return  Column(
    children: [
      Container(
          width: w,
          padding: EdgeInsets.only(left: 15.5.w, right: 15.5.w),
          child: Row(
              children: [
                Container(
                  width: 390.w,
                  height: 2.h,
                  color: Color(0xff077BCD),
                ),
              ]
          )
      ),
      SizedBox(height: 3.h,),
      Container(
          width: w,
          padding: EdgeInsets.only(left: 15.5.w, right: 15.5.w),
          child: Row(
              children: [
                Container(
                  width: 390.w,
                  height: 2.h,
                  color: Color(0xff077BCD),
                ),
              ]
          )
      )
    ],
  );
}

BorderRadiusGeometry Borderr(double Raduis){
  return BorderRadius.only(
    bottomLeft: Radius.circular(Raduis.r),
    bottomRight: Radius.circular(Raduis.r),
    topLeft: Radius.circular(Raduis.r),
    topRight: Radius.circular(Raduis.r),
  );
}
BorderRadiusGeometry Borderrr(double bottomLeft,double bottomRight,double topLeft,double topRight){
  return BorderRadius.only(
    bottomLeft: Radius.circular(bottomLeft.r),
    bottomRight: Radius.circular(bottomRight.r),
    topLeft: Radius.circular(topLeft.r),
    topRight: Radius.circular(topRight.r),
  );
}

Widget AddVerticalSpace(double num){
  return SizedBox(height: num,);
}
Widget AddHorizentalSpace(double num){
  return SizedBox(width: num,);
}


ShapeBorder shape(double num){
  return RoundedRectangleBorder(
    borderRadius: BorderRadius.vertical(
      top: Radius.circular(num.r),
    ),
  );
}