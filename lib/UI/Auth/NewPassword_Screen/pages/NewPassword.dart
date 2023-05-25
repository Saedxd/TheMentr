import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thementr/Core/Functions/Fucntions.dart';
import 'package:thementr/Core/theme/theme_constants.dart';
import 'package:thementr/Core/widgets/CustomButton.dart';
import 'package:thementr/Core/widgets/Custom_Textfield.dart';
import 'package:thementr/Injection.dart';
import 'package:thementr/UI/Auth/Login_screen/pages/Login_Page.dart';
import 'package:thementr/UI/Auth/NewPassword_Screen/bloc/NewPassword_State.dart';
import 'package:thementr/UI/Auth/NewPassword_Screen/bloc/NewPassword_bloc.dart';
import 'package:thementr/UI/Auth/NewPassword_Screen/bloc/NewPassword_event.dart';

class NewPassword_Screen extends StatefulWidget {
   NewPassword_Screen({Key? key,required this.email}) : super(key: key);
String email ='';
  @override
  State<NewPassword_Screen> createState() => _NewPassword_ScreenState();
}

class _NewPassword_ScreenState extends State<NewPassword_Screen> {
  final NewPassword_Bloc = sl<NewPasswordBloc>();
  final _formkey1 = GlobalKey<FormState>();
  final _formkey2 = GlobalKey<FormState>();
  late FocusNode FoucesNodePass;
  late FocusNode FoucesNodeConfirm;
  final TextEditingController _PassController = TextEditingController();
  final TextEditingController _CPassController = TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final AtleastOneUperCase = RegExp("(?=.*[A-Z])");
  final containAtleastOneLowercase = RegExp("(?=.*[a-z])");
  final shouldContainAtleastOneDigit = RegExp("(?=.*?[0-9])");
  final least8CharactersInLength = RegExp(".{8,}");
  bool diditonce = false;

  @override
  void initState() {
    super.initState();
    FoucesNodePass = FocusNode();
    FoucesNodeConfirm = FocusNode();
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return BlocBuilder(
        bloc: NewPassword_Bloc,
        builder: (BuildContext context, NewPasswordState state)
    {


      if(state.success! && diditonce){
        if (state.ResetPassword!.error==null){
          ShowAnimatedTopbar(context, state.ResetPassword!.message.toString(), AnimatedSnackBarType.success);
          PushAndRemoveUtil(context,Login());
        }else{
          ShowAnimatedTopbar(context, state.ResetPassword!.error.toString(), AnimatedSnackBarType.error);

        }

        diditonce = false;
      }
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
                          Container(
                            margin: EdgeInsets.only(top: 120.h),
                            child: Text('Confirm',
                                textAlign: TextAlign.left,
                                style: Font1.copyWith(
                                    color: Color(0xff2B2B2B),
                                    fontSize: 28.sp,
                                    fontWeight: FontWeight.w600,
                                    height: 1.h
                                )),
                          ),
                          Container(
                            width: 300.w,
                            margin: EdgeInsets.only(top: 56.h),
                            child: Text('Enter new password and confirm.',
                                textAlign: TextAlign.center,
                                style: Font1.copyWith(
                                    color: Colors.black,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500,
                                    height: 1.4.h
                                )),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 22.h),
                            child: Form(
                              autovalidateMode: AutovalidateMode.onUserInteraction,
                              key: _formkey1,
                              child:
                              textfeild(
                                prefixIconClicked: () {  },
                                Want_prefixIconClicked: false,
                                Want_Mic_Icon: false,
                                BorderType: "UnderLine",
                                Font_Style:Font1.copyWith(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16.sp,
                                    color: Color(0xff2B2B2B),
                                    height: 1.6.h
                                ),
                                type:  TextInputType.text,
                                BorderRaduis: 5,
                                BorderColor: Color(0xff077BCD),
                                HintText_Style: Font1.copyWith(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.sp,
                                ),
                                LeftContentPadding: 5,
                                textAlign: TextAlign.left,
                                FontSize: 20,
                                hidePass: false,
                                FillColor: Colors.transparent,
                                width: 393,
                                Hieght: 76,
                                topContentPadding: 0,
                                MaxLines: 1,
                                Margin: 0,
                                FoucesNode:FoucesNodePass,
                                Onsubmitted: (String){},
                                TextInputaction: TextInputAction.done,
                                Controller: _PassController, Hint_Text: "New Password",
                                Onchanged:(String){},
                                validator:(value) {
                                  if (!AtleastOneUperCase.hasMatch(value!)) {
                                    return "Password must contain at least 1 upperCase character";
                                  } else if (!containAtleastOneLowercase.hasMatch(value)){
                                    return "Password must contain at least 1 lowerCase character";
                                  } else if (!shouldContainAtleastOneDigit.hasMatch(value)){
                                    return "Password must contain at least 1 digit";
                                  } else if (!least8CharactersInLength.hasMatch(value)){
                                    return "Password minimum length is 8 characters";
                                  }
                                },
                                IconClicked: () {
                                  // _Loginbloc.add(ChangeIconStatus());
                                }, obscureText: false,
                              ),),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20.h),
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
                                type:  TextInputType.text,
                                BorderRaduis: 5,
                                BorderColor: Color(0xff077BCD),
                                HintText_Style: Font1.copyWith(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.sp,
                                ),
                                LeftContentPadding: 5,
                                textAlign: TextAlign.left,
                                FontSize: 20,
                                hidePass: false,
                                FillColor: Colors.transparent,
                                width: 393,
                                Hieght: 76,
                                topContentPadding: 0,
                                MaxLines: 1,
                                Margin: 0,
                                FoucesNode:FoucesNodeConfirm,
                                Onsubmitted: (String){},
                                TextInputaction: TextInputAction.done,
                                Controller: _CPassController, Hint_Text: "Confirm Password",
                                Onchanged:(String){},
                                validator: (value){
                                  if (value!=_PassController.text){
                                    return "Make sure passwords are equal";
                                  }
                                }, IconClicked: () {
                                // _Loginbloc.add(ChangeIconStatus());
                              }, obscureText: false,
                              ),),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 98.h),
                            child: CustomButton(
                              onPressed:() async {
                              if (_formkey1.currentState!.validate()&& _formkey2.currentState!.validate()){
                                diditonce = true;
                                NewPassword_Bloc.add(ChangePassword((b) => b
                                  ..Email = widget.email
                                  ..password =  _PassController.text
                                ));
                              }
                              },
                              ButtonText: 'Submit',
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

                        ]
                    )
                ),
                state.isLoading == true
                    ? Center(child: listLoader(context: context))
                    : Container(),
              ]
              )
          )
      );
    }
    );


  }

}
