// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:thementr/Core/Functions/Fucntions.dart';


class textfeild extends StatefulWidget {
  String Hint_Text;
  // final formkey1;
  final TextInputAction TextInputaction;
  final Function(String) Onchanged;
  final Function() IconClicked;
  final Function() prefixIconClicked;
  final Function(String) Onsubmitted;
  final FocusNode FoucesNode;
  TextEditingController? Controller;
  String? Function(String?)?  validator;
  List<TextInputFormatter>? inputFormatters;
  bool Want_Mic_Icon = false;
  bool Want_prefixIconClicked = false;
  final Margin;
  TextStyle HintText_Style;
  TextStyle Font_Style;
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
  TextInputType? type;
  String BorderType = "";
  textfeild({
    required this.FillColor,
    required this.prefixIconClicked,
    required this.Want_prefixIconClicked,
     required this.Want_Mic_Icon,
    required this.BorderType,
    required this.Font_Style,
    required this.type,
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
        cursorHeight: 26.h,
        onChanged: widget.Onchanged,
        onFieldSubmitted: widget.Onsubmitted,
       validator:widget.validator,
        cursorColor: Colors.black,
        inputFormatters: widget.inputFormatters,
        autovalidateMode: AutovalidateMode.onUserInteraction,

        style: widget.Font_Style,
        decoration: InputDecoration(

            helperText: ' ',
            errorStyle: TextStyle(
              color: Colors.red,
            ),
            errorBorder:
            widget.BorderType=="Outline"
            ?OutlineBorderWidget(Colors.red,widget.BorderRaduis.r)
                :UnderlineInputWidget(Colors.red, widget.BorderRaduis.r),

            focusedErrorBorder:
            widget.BorderType=="Outline"
                ?OutlineBorderWidget(Colors.red,widget.BorderRaduis.r)
                :UnderlineInputWidget(Colors.red, widget.BorderRaduis.r),

            border:
            widget.BorderType=="Outline"
                ?OutlineBorderWidget( widget.BorderColor,widget.BorderRaduis.r)
                :UnderlineInputWidget( widget.BorderColor, widget.BorderRaduis.r),

            counterText: ' ',

            enabledBorder:
            widget.BorderType=="Outline"
                ?OutlineBorderWidget( widget.BorderColor,widget.BorderRaduis.r)
                :UnderlineInputWidget( widget.BorderColor, widget.BorderRaduis.r),
            focusedBorder:
            widget.BorderType=="Outline"
                ?OutlineBorderWidget( widget.BorderColor,widget.BorderRaduis.r)
                :UnderlineInputWidget( widget.BorderColor, widget.BorderRaduis.r),
          suffixIcon:
              widget.Want_Mic_Icon
                  ?  IconButton(
                icon: SvgPicture.asset("Assets/images/microphone-2.svg",
                width: 24.w,
                  height: 24.h,
                ),
                onPressed:widget.IconClicked,
                color: Colors.black,
              )
                  :
          widget.hidePass?
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
            prefixIcon:widget.Want_prefixIconClicked? IconButton(
              onPressed:(){

              },
              icon: SvgPicture.asset("Assets/images/search-normal.svg"),
            ):null,
            filled: true,
            fillColor: widget.FillColor,
            contentPadding: EdgeInsets.only(
                left: widget.LeftContentPadding.w,
                top: widget.topContentPadding.h,
              bottom: 22.h
            ),
            hintText: widget.Hint_Text,
            hintStyle: widget.HintText_Style
        ),
        keyboardType: widget.type,
        obscureText: !widget.obscureText,
      ),
    );
  }
}
