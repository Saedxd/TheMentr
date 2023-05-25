import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:thementr/Core/Functions/Fucntions.dart';
import 'package:thementr/Core/constants/strings.dart';
import 'package:thementr/Core/widgets/CustomButton.dart';
import 'package:thementr/Core/widgets/Custom_Textfield.dart';
import 'package:thementr/Data/prefs_helper/iprefs_helper.dart';
import 'package:thementr/Injection.dart';
import 'package:thementr/UI/Home/HomeScreen/bloc/HomePage_Bloc.dart';
import 'package:thementr/UI/Home/HomeScreen/bloc/HomePage_State.dart';
import '../../../../core/theme/theme_constants.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final pref = sl<IPrefsHelper>();
  final _HomeBloc = sl<HomePageBloc>();
  final _formkey3 = GlobalKey<FormState>();
  final TextEditingController _Controller = TextEditingController();
  // Container(
  // decoration: BoxDecoration(
  // color: const Color(0xfffa4f4d),
  // borderRadius: BorderRadius.circular(5.0),
  // ),
  // )
  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
        bloc: _HomeBloc,
        builder: (BuildContext context, HomePageState state)
    {
      return
        Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 36.h,left: 16.w),
                          child: Text('Hi Marvis, ✌🏻', textAlign: TextAlign.left,
                            style: Font1.copyWith(
                                color: DarkColor,
                                fontSize: 24.sp,
                                fontWeight: FontWeight.w600,
                                height: 1.h
                            ),),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 4.h,left: 16.w),
                          child: Text('Find your favourite mentor', textAlign: TextAlign.left,
                            style: Font1.copyWith(
                                color: DarkColor,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                height: 1.h
                            ),),
                        ),
                      ],
                    ),

                     Container(
                       margin: EdgeInsets.only(right: 16.w,top: 49.5.h),
                         child: SvgPicture.asset("Assets/images/notification.svg")),
                   ],
                 ),
    Container(
      width: 396.w,
    height: 190.h,
    margin: EdgeInsets.only(top: 8.h),
    decoration: BoxDecoration(
    borderRadius :Borderrr(4,4,4,4),
      gradient : LinearGradient(
          begin: Alignment(-1,6.123234262925839e-17),
          end: Alignment(6.123234262925839e-17,1),
          colors: [Color.fromRGBO(53, 166, 250, 1),Color.fromRGBO(196, 229, 255, 1)]
    ),
    ),
      child: Container(
        child: Column(
          children: [
            Container(
              width: 372.w,
              height: 65.h,
             margin: EdgeInsets.only(top: 12.h),
             // color: Colors.red,
              child: Form(
             autovalidateMode: AutovalidateMode.onUserInteraction,
                key: _formkey3,
                child:
                textfeild(
                  BorderType: "Outline",
                  Font_Style: Font1.copyWith(
                      fontWeight: FontWeight.w500,
                      fontSize: 12.sp,
                      color: Color(0xff2B2B2B),
                      height: 1.6.h
                  ),
                  type:  TextInputType.text,
                  BorderRaduis: 5,
                  BorderColor: Colors.transparent,
                  HintText_Style: Font1.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 12.sp,
                  ),
                  LeftContentPadding: 5,
                  textAlign: TextAlign.left,
                  FontSize: 12,
                  hidePass: false,
                  FillColor: Colors.white,
                  width: 372,
                  Hieght: 65,
                  topContentPadding: 30,
                  MaxLines: 1,
                  Margin: 0,
                  FoucesNode:FocusNode(),
                  Onsubmitted: (String){},
                  TextInputaction: TextInputAction.done,
                  Controller: _Controller, Hint_Text: "Search for mentor..",
                  Onchanged:(String){},
                  validator: (value){
                    // if (value!=_PassController.text){
                    //   return "Make sure passwords are equal";
                    // }
                  }, IconClicked: () {
                  // _Loginbloc.add(ChangeIconStatus());
                }, obscureText: true,
                  Want_Mic_Icon: true,
                  prefixIconClicked: () {  },
                  Want_prefixIconClicked: true,
                ),),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(children: [

                  Row(
                    children: [
                      Container(
                      width: 194.w,
                        margin: EdgeInsets.only(top: 0.h,left: 11.5.w,right: 60.w),
                        child: Text('Get connected with +500k best'
                            'mentors and get solutions to your'
                            'questions and get a lot of ideas'
                            'on interesting topics.', textAlign: TextAlign.left,
                          style: Font1.copyWith(
                              color: Color(0xff2B2B2B),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              height: 1.2.h
                          ),),
                      ),
                    ],
                  ),

                  Container(
                    width: 250.w,
                 //   color: Colors.red,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                        Container(
                          margin: EdgeInsets.only(top: 12.h,),
                          child: CustomButton(

                            onPressed: () async {
                              // if (
                              //     _formkey2.currentState!.validate()&&
                              //     _formkey1.currentState!.validate()
                              // )

                              // WidgetsBinding.instance.addPostFrameCallback( (_) => Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //     builder: (context) => SignUp2(),
                              //   ),
                              // ));
                            },
                            ButtonText: 'Learn More',
                            btnColor: Colors.white,
                            TxtColor: Colors.black,
                            SocialName: 'null',
                            weight: FontWeight.w500,
                            fontsize: 12.sp,
                            HeigthBTN: 28.h,
                            Widthbtn: 120.w, BorderColor:  Color(0xff015595),

                          ),
                        ),
                      ],
                    ),
                  ),
                ],),

                Container(
                    width: 119.w,
                    height: 104.h,
                    margin: EdgeInsets.only(right: 11.5.w),
                    decoration: BoxDecoration(
                      borderRadius : Borderrr(8,8,8,8),
                      gradient : LinearGradient(
                          begin: Alignment(6.123234262925839e-17,1),
                          end: Alignment(-1,6.123234262925839e-17),
                          colors: [Color.fromRGBO(0, 145, 255, 1),Color.fromRGBO(61, 169, 251, 1)]
                      ),
                    ),
                  child: Column(
                    children: [

                      Container(
                        margin: EdgeInsets.only(top: 21.h),
                        child: SvgPicture.asset("Assets/images/Frame 751.svg",
                          width: 55.5.w,
                          height: 40.h,
                        ),
                      ),
                      Container(
                        width: 61.w,
                        height: 24.h,
                        margin: EdgeInsets.only(top: 6.h,left: 29.w),
                        child: ListView.builder(
                          itemCount: 3,
                          scrollDirection: Axis.horizontal,
                          physics: AlwaysScrollableScrollPhysics(),
                          itemBuilder: (BuildContext context, int index) {
                          //  String Value = BackGroundColorTOAvatars[index];
                         //   var myInt = int.parse(Value);
                         //   var BackgroundColor= myInt;
                            return    Align(
                                widthFactor: 0.6,
                                alignment: Alignment.topCenter,
                                child:
                                Container(
                                  child: Column(
                                    children: [
                                      Wrap(
                                        children: [
                                          CircleAvatar(
                                            radius: 10.r,
                                            backgroundColor: Colors.purple
                                          )
                                        ],

                                      ),
                                    ],

                                  ),
                                )
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )

          ],
        ),
      ),
    ),


              ],
            ),
          ),
        );
    }
    );
        }
}
