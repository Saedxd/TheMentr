import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:screenshot/screenshot.dart';
import 'package:thementr/App/app.dart';
import 'package:thementr/Core/Functions/Fucntions.dart';
import 'package:thementr/Core/theme/theme_constants.dart';
import 'package:thementr/Core/widgets/CustomButton.dart';
import 'package:thementr/Injection.dart';
import 'package:thementr/UI/Auth/Login_screen/pages/Login_Page.dart';
import 'package:thementr/UI/OnBoarding/Slider2/bloc/Slider_bloc.dart';
import 'package:thementr/UI/OnBoarding/Slider2/bloc/slider_event.dart';
import 'package:thementr/UI/OnBoarding/Slider2/bloc/slider_state.dart';

class slider extends StatefulWidget {
  const slider({Key? key}) : super(key: key);

  @override
  State<slider> createState() => _sliderState();
}

class _sliderState extends State<slider> {
  final PageController _pageController = PageController();
  final _SliderBloc = sl<SliderBloc>();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  void dispose() {
    _pageController.dispose();
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
TextTheme _TextTheme = Theme.of(context).textTheme;
ColorScheme ColorS = Theme.of(context).colorScheme;
var h = MediaQuery.of(context).size.height;
var w = MediaQuery.of(context).size.width;
    return BlocBuilder(
    bloc: _SliderBloc,
    builder: (BuildContext context, SliderState state)
{
  return
    Scaffold(
      key: _scaffoldKey,
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.only(top: 156.h, bottom: 32.h),
                child: Text(
                  'TheMentr', style: Font1.copyWith(fontSize: 32.sp,color: Color(0xff015595)),),
              ),
            ),
            Container(
                width: w,
                height: h/2.2,
                child:ScrollConfiguration(
                  behavior: MyBehavior(),
                  child: PageView.builder(
                    physics: AlwaysScrollableScrollPhysics(),
                    controller: _pageController,
                    onPageChanged: (int index) {
                      _SliderBloc.add(ChangePageIndex(((b) => b..index =index)));

                    },
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return

                        Center(
                          child: Stack(
                              children: [
                                // index == 0
                                //     ? Onboarding11(_TextTheme, w, h, state)
                                //     : index == 1
                                //     ? Onboarding12(w, h)
                                //     : Onboarding13(
                                //     h, _TextTheme, state, w, context)
                             Column(
                               children: [

                                 Container(
                                     margin: EdgeInsets.only(bottom: 32.h),
                                     width: 360.w,
                                     height: 332.h,
                                     decoration: BoxDecoration(
                                       color: Color(0xffCEEAFF),
                                       borderRadius: border(8,8,8,8),
                                       image: DecorationImage(
                                           image: AssetImage(
                                               index == 0
                                                   ?     'Assets/images/Woman running an online business.png'
                                                   : index == 1
                                                   ?     'Assets/images/image 5.png'
                                                   :     'Assets/images/image 7.png'

                                                  ),
                                           fit: BoxFit.fitWidth
                                       ),
                                     )
                                 ),
                                 Center(
                                   child: Container(
                                     margin: EdgeInsets.only(left: 50.w, right: 50.w),
                                     child: Text(
                                         index == 0
                                             ?   'Lorem Ipsum Lorem Ipsum  Lorem Ipsum'
                                             : index == 1
                                             ?    'Lorem Ipsum Lorem Ipsum  Lorem Ipsum'
                                             :    'Lorem Ipsum Lorem Ipsum  Lorem Ipsum'
                                         ,
                                         textAlign: TextAlign.center,
                                         style: Font1.copyWith(
                                           height: 1.2.h
                                         )
                                     ),
                                   ),
                                 ),


                               ],
                             )
                              ]),
                        );
                    }),)
              ),
            Container(
              height: 4.h,
              margin: EdgeInsets.only(top: 5.h),
              child:ListView.separated(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    children: [
                      Container(
                          width: 24.w,
                          height: 4.h,
                          decoration: BoxDecoration(
                              borderRadius: border(8,8,8,8),
                              color: Color(state.Pageindex==index?0xff077BCD : 0xffCEEAFF)
                            // color : Color.fromRGBO(206, 234, 255, 1),
                          )
                      )
                    ],
                  );
                }, separatorBuilder: (BuildContext context, int index) {
                return SizedBox(width: 14.w,);
              },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 103.h),
              child:Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Swipe to move to the next',
                        textAlign: TextAlign.left,
                        style: Font1.copyWith(
                          color: Color(0xff001321),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                        )),
                    Icon(Icons.arrow_forward_rounded,color: Color(0xff001321),)
                  ],
                ),
              ),
            ),


            Container(
              margin: EdgeInsets.only(top: 24.h),
              child: CustomButton(
                onPressed: () async {
                  if (state.Pageindex==2){
                      WidgetsBinding.instance.addPostFrameCallback( (_) => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Login(),
                        ),
                      ));
                  }
                if (state.Pageindex! != 2){
                    _SliderBloc.add(ChangePageIndex(((b) => b..index = state.Pageindex! +1)));
                    _pageController.animateToPage(
                      state.Pageindex ! + 1,
                      duration: Duration(milliseconds: 700),
                      curve: Curves.easeIn,
                    );
                  }
                  // bool result =await InternetConnectionChecker().hasConnection;
                  // if (result == true) {
                  //   // if (_formkey1.currentState! .validate()) {
                  //   //   WidgetsBinding.instance.addPostFrameCallback( (_) => Navigator.push(
                  //   //     context,
                  //   //     MaterialPageRoute(
                  //   //       builder: (context) => Login2(Email: _EmailController.text,),
                  //   //     ),
                  //   //   ));
                  //   // }
                  // } else {
                  //   AnimatedSnackBar.material(
                  //     'Check your internet connection',
                  //     duration: Duration(seconds: 2),
                  //     type: AnimatedSnackBarType.error,
                  //   ).show(
                  //     context,
                  //   );
                  // }
                },
                ButtonText: state.Pageindex!=2?'Next':'Continue',
                btnColor: Color(0xff015595),
                TxtColor: Color(0xffFFFFFF),
                SocialName: 'null',
                weight: FontWeight.w600,
                fontsize: 20.sp,
                HeigthBTN: 56.h,
                Widthbtn: 354.w,
                BorderColor:  Color(0xff015595),
              ),
            ),
            //      // Figma Flutter Generator LoremipsumWidget - TEXT
            //       Text('Lorem Ipsum', textAlign: TextAlign.left,
            //       style: TextStyle(
            //         color: Color.fromRGBO(43, 43, 43, 1),
            //         fontFamily: 'Inter',
            //         fontSize: 32,
            //         letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
            //         fontWeight: FontWeight.normal,
            //         height: 1
            //       ),)

          ],
        ),
      ),
    );
}
    );
  }
}
