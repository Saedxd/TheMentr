// ignore: file_names
// ignore_for_file: file_names, non_constant_identifier_names
import 'dart:io';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:thementr/App/app.dart';
import 'package:thementr/Core/Classes/Classes.dart';
import 'package:thementr/Core/Functions/Fucntions.dart';
import 'package:thementr/Core/constants/strings.dart';
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
import '../../../../core/theme/theme_constants.dart';
import '../../Login_screen/pages/Login_Page.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';

class SignUp10 extends StatefulWidget {
  SignUp10(this.PageName, this.IS_dROPdOWN);
  Skills PageName;
  bool IS_dROPdOWN;

  @override
  _SignUp10State createState() => _SignUp10State();
}

List<String> Hobbies = [];
List<String> Work_Links = [];
int Y_OF_Experience = 0;
String CountryValue = "";
String CityValue = "";
String occupation = "";
String BirthDay = "";

class _SignUp10State extends State<SignUp10> with WidgetsBindingObserver {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final Pref = PrefsHelper();
  final bloc2 = sl<SignUpBloc>();
  ScrollController scrollController = ScrollController();
  TextEditingController notesController = TextEditingController();
  bool newLine = false;
  final _formkey2 = GlobalKey<FormState>();
  DateRangePickerController _pickerController = DateRangePickerController();
  //List<String> Interests = ["Designer", "Dentist", "Definer"];
  // List<String> Country = ["Designer", "Mentor"];
  // List<String> City = ["Designer", "Mentor"];

  FocusNode searchFocusNode = FocusNode();
  FocusNode textFieldFocusNode = FocusNode();
  late SingleValueDropDownController _cnt;


  @override
  void initState() {

  //  bloc2.add(ChangeRoleValue((b) => b..value = Interests[0]));
    notesController.text = '\u2022 ';

    if ((widget.PageName.Skill_Type == "Link to work portfolio") && Work_Links.isNotEmpty) {
      notesController.text += Work_Links[0];
      for (int i = 1; i < Work_Links.length; i++) {
        notesController.text += "\n\u2022 ${Work_Links[i]}";
      }
    } else if (widget.PageName.Skill_Type == "Add Hobbies" && Hobbies.isNotEmpty){
      notesController.text += Hobbies[0];
      for (int i = 1; i < Hobbies.length; i++) {
        notesController.text += "\n\u2022 ${Hobbies[i]}";
      }
    } else if (widget.PageName.Skill_Type == "Add Years Of Experience") {
      notesController.text += Y_OF_Experience.toString();
    }else if (widget.PageName.Skill_Type == "Add Occupation"){
      _cnt = SingleValueDropDownController();
      bloc2.add(GetOccupations((b) => b..Keyword = ""));
    }else if (widget.PageName.Skill_Type == "Add Location"){
      bloc2.add(ChangeCityValue((b) => b..Value=CityValue));
      bloc2.add(ChangeCountryValue((b) => b..Value=CountryValue));
      if (CityValue.isEmpty &&CountryValue.isEmpty )
     bloc2.add(GetAllCountries());
    }

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
                child: Stack(children: [

                  Container(
                      width: w,
                      height: h,
                      child: Column(children: [
                        Container(
                          padding: EdgeInsets.only(top: 136.h),
                          child: Center(
                            child: Text(
                              widget.PageName.Screen_type,
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
                              margin: EdgeInsets.only(top: 31.h, left: 5.w),
                              child: IconButton(
                                onPressed:(){
                                  WidgetsBinding.instance.addPostFrameCallback((_) =>Navigator.pop(context, "No"));
                                },
                                icon: Icon(Icons.arrow_back),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [

                            widget.PageName.Skill_Type == "Add Location"
                                ? Column(
                                    children:[

                                      Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(
                                                left: 18.w,
                                                right: 9.w,
                                                top: 21.h),
                                            child: Text(
                                              'Add Country',
                                              style: Font1.copyWith(
                                                  fontSize: 16.sp,
                                                  fontWeight: FontWeight.w500,
                                                  height: 1.2.h,
                                                  color: Color(0xff2B2B2B)),
                                            ),
                                          ),
                                        ],
                                      ),

                                      Container(
                                        margin: EdgeInsets.only(top: 12.h,bottom: 28.h),
                                        child: DropdownButtonHideUnderline(
                                          child: DropdownButton2(
                                            isExpanded: true,
                                            items: state.Countries!.map((item) =>
                                                DropdownMenuItem<String>(
                                                    value: item,
                                                    child:Text(
                                                      item,
                                                      style:Font1.copyWith(
                                                        fontSize: 16.sp,
                                                        fontWeight: FontWeight.w500,
                                                        color: DarkColor,),
                                                      overflow: TextOverflow.ellipsis,
                                                    ))).toList(),
                                            value:!state.OldValues_isLoading!
                                                ? state.SelectedCountryValue!.isNotEmpty ? state.SelectedCountryValue   : "null"

                                             :null,
                                            onChanged:(value){
                                              bloc2.add(ChangeCountryValue((b) => b..Value = value as String));
                                              bloc2.add(ChangeCountryCitiesList((b) => b..Country = value as String));
                                              CountryValue = value as String;


                                            },
                                            icon: Icon(
                                              Icons.keyboard_arrow_down,
                                              size: 20.w,
                                              color: Color(0xff292D32),
                                            ),
                                            iconSize: 20.w,
                                            iconEnabledColor: Colors.yellow,
                                            iconDisabledColor: Colors.grey,
                                            buttonHeight: 44.h,
                                            buttonWidth: 396.w,
                                            buttonPadding: EdgeInsets.only(
                                                left: 14.w, right: 14.w),
                                            buttonDecoration:BoxDecoration(
                                              borderRadius:BorderRadius.circular(4.r),
                                              border:Border.all(
                                                color:DarkColor,
                                              ),
                                              color: Colors.white,
                                            ),
                                            buttonElevation: 2,
                                            itemHeight: 50.h,
                                            dropdownMaxHeight: 170.h,
                                            dropdownWidth: 396.w,
                                            dropdownDecoration: BoxDecoration(
                                                borderRadius:BorderRadius.circular(4.r),
                                                color: Colors.white
                                            ),
                                            dropdownElevation: 8,
                                            scrollbarRadius:Radius.circular(2.r),
                                            scrollbarThickness: 6,
                                            scrollbarAlwaysShow: false,
                                          ),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(
                                                left: 18.w, right: 9.w),
                                            child: Text(
                                              'Choose City',
                                              style: Font1.copyWith(
                                                  fontSize: 16.sp,
                                                  fontWeight: FontWeight.w500,
                                                  height: 1.2.h,
                                                  color: Color(0xff2B2B2B)),
                                            ),
                                          ),
                                        ],
                                      ),

                                      Container(
                                        margin: EdgeInsets.only(top: 12.h),
                                        child: DropdownButtonHideUnderline(
                                          child: DropdownButton2(
                                            isExpanded: true,
                                            items: state.Country_Cities!.map((item) =>
                                                DropdownMenuItem<String>(
                                                    value:item,
                                                    child:Text(
                                                      item,
                                                      style: Font1.copyWith(
                                                        fontSize:16.sp,
                                                        fontWeight:FontWeight.w500,
                                                        color:DarkColor,
                                                      ),
                                                      overflow:TextOverflow.ellipsis,
                                                    )
                                                    )).toList(),
                                            value:!state.OldValues_isLoading!
                                                ?state.SelectedCityValue!.isNotEmpty ? state.SelectedCityValue  : null
                                              :"null",
                                            onChanged: (value) {
                                              CityValue = value as String;
                                              bloc2.add(ChangeCityValue((b) => b..Value = value as String));
                                            },
                                            icon: Icon(
                                              Icons.keyboard_arrow_down,
                                              size: 20.w,
                                              color: Color(0xff292D32),
                                            ),
                                            iconSize: 20.w,
                                            iconEnabledColor: Colors.yellow,
                                            iconDisabledColor: Colors.grey,
                                            buttonHeight: 44.h,
                                            buttonWidth: 396.w,
                                            buttonPadding:EdgeInsets.only(left: 14.w,right: 14.w),
                                            buttonDecoration: BoxDecoration(
                                              borderRadius:BorderRadius.circular(4.r),
                                              border:Border.all(color:DarkColor),
                                              color:Colors.white,
                                            ),
                                            buttonElevation: 2,
                                            itemHeight: 50.h,
                                            dropdownMaxHeight: 170.h,
                                            dropdownWidth: 396.w,
                                            dropdownDecoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(4.r),
                                                color: Colors.white
                                            ),
                                            dropdownElevation: 8,
                                            scrollbarRadius:Radius.circular(2.r),
                                            scrollbarThickness: 6,
                                            scrollbarAlwaysShow: false,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                : widget.PageName.Skill_Type == "Add Birth Date"
                                    ? DatePicker()
                                    : widget.PageName.Skill_Type == "Add Years Of Experience"
                                        ? Container(
                                            child: Column(
                                              children:[
                                                Container(
                                                  padding: EdgeInsets.only( top: 21.h, left: 16.w),

                                                  child: Center(
                                                    child: Row(
                                                      children: [
                                                        Text(
                                                          widget.PageName
                                                              .Screen_Info,
                                                          style: Font1.copyWith(
                                                              fontSize: 16.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              color:
                                                                  Colors.black),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  width: 396.w,
                                                  height: 80.h,
                                                  margin: EdgeInsets.only(
                                                      top: 15.h),
                                                  child: Form(
                                                    autovalidateMode:
                                                        AutovalidateMode
                                                            .onUserInteraction,
                                                    key: _formkey2,
                                                    child: textfeild(
                                                      prefixIconClicked: () {},
                                                      Want_prefixIconClicked:
                                                          false,
                                                      Want_Mic_Icon: false,
                                                      BorderType: "Outline",
                                                      Font_Style:
                                                          Font1.copyWith(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontSize: 16.sp,
                                                              color: Color(
                                                                  0xff2B2B2B),
                                                              height: 1.6.h),
                                                      type: TextInputType
                                                          .multiline,
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
                                                      Controller: notesController,
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
                                                ),
                                              ],
                                            ),
                                          )
                                        : widget.PageName.Skill_Type ==
                                                "Add Occupation"
                                            ? Column(
                                                children: [
                                                  SizedBox(
                                                    height: 10.h,
                                                  ),


                                                  state.success!
                                                      ? Container(
                                                          width: 370.w,
                                                          height: 40.h,
                                                          child: DropDownTextField(
                                                            padding: EdgeInsets.only(top: 40.h),
                                                          //  initialValue: "Occupation",
                                                            searchAutofocus: true,
                                                            searchShowCursor: true,
                                                            controller: _cnt,
                                                            clearOption: true,
                                                            enableSearch: true,
                                                            searchDecoration: InputDecoration(  hintText: "Search"),
                                                            dropDownItemCount:3,
                                                            dropDownList: [
                                                              for (int i = 0;
                                                                  i <
                                                                      state
                                                                          .GetOccupations!
                                                                          .occupations!
                                                                          .length;
                                                                  i++)
                                                                DropDownValueModel(
                                                                    name: state
                                                                        .GetOccupations!
                                                                        .occupations![
                                                                            i]
                                                                        .occupation!,
                                                                    value:
                                                                    state
                                                                        .GetOccupations!
                                                                        .occupations![
                                                                    i]
                                                                        .occupation!)
                                                            ],
                                                            onChanged: (val) {

                                                              occupation =_cnt.dropDownValue!.value;
                                                            },
                                                          ),
                                                        )
                                                      :       state.isLoading == true
                                                      ? Center(child: listLoader(context: context))
                                                      : Container(),
                                                ],
                                              )
                                            : Column(
                                                children: [
                                                  Container(
                                                    padding: EdgeInsets.only(
                                                        top: 21.h, left: 16.w),
                                                    child: Center(
                                                      child: Row(
                                                        children: [
                                                          Text(
                                                            widget.PageName.Screen_Info,
                                                            style: Font1.copyWith(
                                                                fontSize: 16.sp,
                                                                fontWeight:FontWeight.w500,
                                                                color:Colors.black
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),

                                                  Container(
                                                    width: 396.w,
                                                    height: 122.h,
                                                    margin: EdgeInsets.only(top: 15.h),
                                                    child: Form(
                                                      autovalidateMode:
                                                          AutovalidateMode
                                                              .onUserInteraction,
                                                      key: _formkey2,
                                                      child: textfeild(
                                                        prefixIconClicked:(){},
                                                        Want_prefixIconClicked:false,
                                                        Want_Mic_Icon: false,
                                                        BorderType: "Outline",
                                                        Font_Style:Font1.copyWith(
                                                            fontWeight:FontWeight.w500,
                                                            fontSize: 16.sp,
                                                            color:Color(0xff2B2B2B),
                                                            height: 1.6.h
                                                        ),
                                                        type:TextInputType.multiline,
                                                        textAlign: TextAlign.left,
                                                        FontSize: 20,
                                                        hidePass: false,
                                                        FillColor:Color(0xffCEEAFF),
                                                        width: 396,
                                                        Hieght: 122,
                                                        topContentPadding: 15,
                                                        MaxLines: 6,
                                                        Margin: 0,
                                                        FoucesNode: FocusNode(),
                                                        Onsubmitted: (String) {},
                                                        TextInputaction:TextInputAction.newline,
                                                        Controller:notesController,
                                                        Hint_Text:"",
                                                        Onchanged:(va) {
                                                          Future.delayed(Duration(milliseconds:100),() {
                                                            if (newLine) {
                                                              return;
                                                            }
                                                            String note = notesController.text;
                                                            if (note.isEmpty) {
                                                              notesController.text = notesController.text + '\u2022 ';
                                                              notesController.selection = TextSelection.fromPosition(TextPosition(offset: notesController.text.length));
                                                            }
                                                            if (note.isNotEmpty && note.substring(note.length-1)=='\n') {
                                                              notesController.text =notesController.text +'\u2022 ';
                                                              notesController.selection =
                                                                  TextSelection.fromPosition(TextPosition(offset:notesController.text.length));
                                                            }
                                                          });
                                                        },
                                                        validator:
                                                            MultiValidator([
                                                        ]),
                                                        IconClicked: () {},
                                                        obscureText: true,
                                                        LeftContentPadding: 20,
                                                        HintText_Style:Font1.copyWith(
                                                          fontWeight: FontWeight.w500,
                                                          fontSize: 16.sp,
                                                        ),
                                                        BorderColor: Color(0xff077BCD),
                                                        BorderRaduis: 10,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),

                            Container(
                              margin: EdgeInsets.only(
                                  top: widget.PageName.Skill_Type ==
                                          "Add Birth Date"
                                      ? 20.h
                                      : 115.h),
                              child: CustomButton(
                                onPressed: OnPRESS,
                                ButtonText: 'OK',
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
                        )
                      ])),

                ]),
              ));
        });
  }

  Container DatePicker() {
    return Container(
                                      width: 375.w,
                                      height: 424.h,
                                      margin: EdgeInsets.only(top: 50.h),
                                      decoration: BoxDecoration(
                                        color: Color(0xff015595),
                                        borderRadius: border(4, 4, 4, 4),
                                      ),
                                      child: Container(
                                        padding: EdgeInsets.only(
                                            top: 16.h,
                                            right: 16.w,
                                            left: 16.w),
                                        child: SfDateRangePicker(
                                          todayHighlightColor: Colors.white,
                                          minDate: DateTime(1900),
                                          maxDate: DateTime.now(),
                                          monthCellStyle:
                                              DateRangePickerMonthCellStyle(
                                            textStyle: Font1.copyWith(
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 1),
                                                fontSize: 18.sp,
                                                fontWeight: FontWeight.w400,
                                                height: 1.5714285376177157.h),
                                            disabledDatesTextStyle:
                                                Font1.copyWith(
                                                    color: Color(0xffFFFFFF)
                                                        .withOpacity(0.4),
                                                    fontSize: 18.sp,
                                                    fontWeight:
                                                        FontWeight.w400,
                                                    height:
                                                        1.5714285376177157.h),
                                            trailingDatesTextStyle:
                                                Font1.copyWith(
                                                    color: Colors.red,
                                                    fontSize: 18.sp,
                                                    fontWeight:
                                                        FontWeight.w400,
                                                    height:
                                                        1.5714285376177157.h),
                                          ),
                                          controller: _pickerController,
                                          showNavigationArrow: true,
                                          toggleDaySelection: false,
                                          selectionColor: Color(0xffCEEAFF),
                                          selectionTextStyle: Font1.copyWith(
                                            color: Color(0xff015595),
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.w400,
                                          ),
                                          selectionRadius: 50.r,
                                          onSelectionChanged:
                                              _onSelectionChanged2,
                                          view: DateRangePickerView.century,
                                          selectionMode:
                                              DateRangePickerSelectionMode
                                                  .single,
                                        ),
                                      ),
                                    );
  }

  void OnPRESS()async
  {

      print("hello");
      List<String> temp = [];
      int j = 0;
      String value = notesController.text
          .replaceAll("\u2022 ", "");
      value = value.replaceAll("\n", " ");
      value = value + " ";
      print(value);
      for (int i = 0; i < value.length; i++) {
        if (value[i] == " ") {
          String Index = value.substring(j, i);
          Index = Index.replaceAll(" ", "");
          Index.isNotEmpty
              ? temp.add(Index)
              : print("empty");
          print("index:$Index");
          j = i;
        }
      }
      if (widget.PageName.Skill_Type ==
          "Link to work portfolio") {
        Work_Links = temp;
        print("Work_Links :$Work_Links");
        print("temp :$temp");

        if (Work_Links.isEmpty) {
          Navigator.pop(context, "No");
        } else {
          Navigator.pop(context, "Yes");
        }
      } else if (widget.PageName.Skill_Type ==
          "Add Hobbies") {
        Hobbies = temp;

        print("Hobbies : $Hobbies");

        if (Hobbies.isEmpty) {
          print("NO");
          Navigator.pop(context, "No");
        } else {
          print("Yeds");
          Navigator.pop(context, "Yes");
        }
      } else if (widget.PageName.Skill_Type ==
          "Add Years Of Experience") {
        Y_OF_Experience = int.parse(notesController
            .text
            .replaceAll("\u2022 ", ""));
        String value = notesController.text
            .replaceAll("\u2022 ", "");

        if (value.isEmpty) {
          Navigator.pop(context, "No");
        } else {
          Navigator.pop(context, "Yes");
        }
      } else if (widget.PageName.Skill_Type ==
          "Add Location") {
        Navigator.pop(context, "Yes");
      } else if (widget.PageName.Skill_Type ==
          "Add Birth Date") {
        if (BirthDay.isNotEmpty) {
          Navigator.pop(context, "Yes");
        } else {
          Navigator.pop(context, "No");
        }
      } else if (widget.IS_dROPdOWN) {
        Navigator.pop(context, "Yes");
      }


  }



  void _onSelectionChanged2(DateRangePickerSelectionChangedArgs args) {
    try {
      String TimeSelected = DateFormat.yMMMMd('en_US').format(args.value);
      BirthDay = TimeSelected.toString();
      print(BirthDay);
    } catch (e) {
      print(e);
    }
  }
}
