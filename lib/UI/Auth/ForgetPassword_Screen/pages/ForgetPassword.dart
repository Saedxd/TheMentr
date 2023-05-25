import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:thementr/Core/Classes/Classes.dart';
import 'package:thementr/Core/Functions/Fucntions.dart';
import 'package:thementr/Core/constants/strings.dart';
import 'package:thementr/Core/theme/theme_constants.dart';
import 'package:thementr/Core/widgets/CustomButton.dart';
import 'package:thementr/Core/widgets/Custom_Textfield.dart';
import 'package:thementr/Injection.dart';
import 'package:thementr/UI/Auth/ForgetPassword_Screen/bloc/ForgotPassword_bloc.dart';
import 'package:thementr/UI/Auth/ForgetPassword_Screen/bloc/ForgotPassword_event.dart';
import 'package:thementr/UI/Auth/ForgetPassword_Screen/bloc/ForgotPassword_state.dart';

import '../../Verification_Screen/pages/Verification.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  late FocusNode _EmailFocusNode;
  final TextEditingController _EmailController = TextEditingController();
  var _formkey1 = GlobalKey<FormState>();
  final _ForgotPassBloc = sl<ForgotPasswordBloc>();
  bool diditonce = false;
  @override
  void initState() {
    _EmailFocusNode = FocusNode();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return BlocBuilder(
        bloc: _ForgotPassBloc,
        builder: (BuildContext context, ForgotPasswordState state) {
          if (state.success! && diditonce) {
            if (state.ResetPassword!.error != null) {
              ShowAnimatedTopbar(context, state.ResetPassword!.error!,
                  AnimatedSnackBarType.error);
            } else {
              user User = user();
              User.email = _EmailController.text;
              PushNavigator(context, Verification(User, "Reset Password"));
              ShowAnimatedTopbar(context, state.ResetPassword!.message!,
                  AnimatedSnackBarType.info);
            }
            diditonce = false;
          }

          return Container(
              width: w,
              child: Stack(children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 120.h),
                      child: Text('Forgot Password',
                          textAlign: TextAlign.left,
                          style: Font1.copyWith(
                              color: Color(0xff2B2B2B),
                              fontSize: 28.sp,
                              fontWeight: FontWeight.w600,
                              height: 1.h)),
                    ),
                    Container(
                      width: 300.w,
                      margin: EdgeInsets.only(top: 56.h),
                      child: Text(
                          'Enter your registered Email Address to receive a code',
                          textAlign: TextAlign.center,
                          style: Font1.copyWith(
                              color: Colors.black,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              height: 1.4.h)),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 24.h),
                      child: Form(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        key: _formkey1,
                        child: textfeild(
                          prefixIconClicked: () {},
                          Want_prefixIconClicked: false,
                          Want_Mic_Icon: false,
                          BorderType: "UnderLine",
                          Font_Style: Font1.copyWith(
                              fontWeight: FontWeight.w500,
                              fontSize: 16.sp,
                              color: Color(0xff2B2B2B),
                              height: 1.6.h),
                          type: TextInputType.text,
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
                          topContentPadding: -25,
                          MaxLines: 1,
                          Margin: 0,
                          FoucesNode: _EmailFocusNode,
                          Onsubmitted: (String) {},
                          TextInputaction: TextInputAction.next,
                          Controller: _EmailController,
                          Hint_Text: "Email",
                          Onchanged: (String) {},
                          validator: MultiValidator([
                            RequiredValidator(errorText: "Required"),
                            EmailValidator(errorText: "That's not an Email"),
                          ]),
                          IconClicked: () {},
                          obscureText: true,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5.h),
                      child: CustomButton(
                        onPressed: () async {
                          diditonce = true;
                          _ForgotPassBloc.add(RequestPassReset(
                              (b) => b..Email = _EmailController.text));
                        },
                        ButtonText: 'Send',
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
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 30.h),
                        child: RichText(
                            textAlign: TextAlign.left,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                    text: 'Back to ',
                                    style: Font1.copyWith(
                                      color: DarkColor,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16.sp,
                                    )),
                                TextSpan(
                                  text: 'Register',
                                  style: Font1.copyWith(
                                    color: Color(0xff015595),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16.sp,
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ),
                    OR_Widget(w),
                  ],
                ),
                state.isLoading == true
                    ? Positioned(
                        top: h / 2,
                        left: 0,
                        right: 0,
                        child: Center(child: listLoader(context: context)))
                    : Container(),
              ]));
        });
  }
}
