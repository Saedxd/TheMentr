// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:thementr/Core/theme/theme_constants.dart';

class textfeild extends StatefulWidget {
  String Hint_Text;
  // final formkey1;
  final TextInputAction TextInputaction;
  final Function(String) Onchanged;
  final Function() IconClicked;
  final Function(String) Onsubmitted;
  final FocusNode FoucesNode;
  TextEditingController? Controller;
  String? Function(String?)?  validator;
  List<TextInputFormatter>? inputFormatters;
  final Margin;
  TextStyle HintText_Style;
  int Hieght;
  int width;
  double? FontSize;
  final Color FillColor;
  final Color BorderColor;
  bool hidePass = false;
  int MaxLines = 0;
  int BorderRaduis = 0;
  double topContentPadding = 0;
  double LeftContentPadding = 0;
  bool obscureText = false;
  TextAlign? textAlign;
  textfeild({
    required this.FillColor,
    required this.BorderRaduis,
    required this.BorderColor,
    required this.HintText_Style,
    required this.LeftContentPadding,
    required this.textAlign,
    required this.obscureText,
    required this.FontSize,
    required this.hidePass,
    required this.Margin,
    required this.width,
    required this.validator,
    required this.Controller,
    required this.Hint_Text,
    required this.Onchanged,
    required this.IconClicked,
    required this.Onsubmitted,
    required this.TextInputaction,
    required this.FoucesNode,
    this.inputFormatters,
    required this.Hieght,
    required this.MaxLines,
    required this.topContentPadding,
  });

  @override
  _State createState() => _State();
}

class _State extends State<textfeild> {

  void initState() {
    super.initState();
  }

  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    TextTheme _TextTheme = Theme.of(context).textTheme;
    return Container(
      width:  widget.width.w,
      height:  widget.Hieght.h,

      child: TextFormField(
        textAlign:widget.textAlign!,
        maxLines: widget.MaxLines,
        keyboardAppearance: Brightness.dark,
        textInputAction: widget.TextInputaction,
        controller: widget.Controller,
        cursorHeight: 20.h,
        onChanged: widget.Onchanged,
        onFieldSubmitted: widget.Onsubmitted,
        validator:widget.validator,
        cursorColor: Colors.black,
        inputFormatters: widget.inputFormatters,

        style: TextStyle(
            // fontSize: 15.sp,
            // fontWeight: FontWeight.w500,
            // height: 1.h,
            // color: Colors.brown
        ),
        decoration: InputDecoration(
            errorStyle: TextStyle(
              color: Colors.red,
            ),
            errorBorder: UnderlineInputBorder(
                borderSide: BorderSide(color:  Colors.red, width: 2.w),
                borderRadius: BorderRadius.circular(widget.BorderRaduis.r)),
            focusedErrorBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.red,width: 2.w),
                borderRadius: BorderRadius.circular(widget.BorderRaduis.r)),
            border: UnderlineInputBorder(
                                        borderSide: BorderSide(color: widget.BorderColor,width: 2.w),
                                        borderRadius: BorderRadius.circular(widget.BorderRaduis.r)),
            counterText: ' ',

            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color:widget.BorderColor,width: 2.w),
                borderRadius: BorderRadius.circular(widget.BorderRaduis.r)),
            focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color:widget.BorderColor,width: 2.w),
                            borderRadius: BorderRadius.circular(widget.BorderRaduis.r)),
          suffixIcon: widget.hidePass?
          IconButton(
            icon: Icon(
              // Based on passwordVisible state choose the icon
              widget.obscureText
                  ? Icons.visibility
                  : Icons.visibility_off,
              color: Theme.of(context).primaryColorDark,
            ),
            onPressed:widget.IconClicked,

          ):null,

            filled: true,
            fillColor: widget.FillColor,
            contentPadding: EdgeInsets.only(left: widget.LeftContentPadding.w, top: widget.topContentPadding.h),
            hintText: widget.Hint_Text,
            hintStyle: widget.HintText_Style
        ),
        keyboardType: TextInputType.text,
        obscureText: !widget.obscureText,
      ),
    );
  }
}
