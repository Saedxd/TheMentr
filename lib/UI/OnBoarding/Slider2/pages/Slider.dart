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
import 'package:thementr/Data/prefs_helper/iprefs_helper.dart';
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
  final pref = sl<IPrefsHelper>();
  Future<void> SetNotFirstTime() async {
    await pref.SetNOTnewUser();
  }
  @override
  void dispose() {
    _pageController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    SetNotFirstTime();
  }
  @override
  Widget build(BuildContext context) {
    TextTheme _TextTheme = Theme.of(context).textTheme;
    ColorScheme ColorS = Theme.of(context).colorScheme;
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return BlocBuilder(
        bloc: _SliderBloc,
        builder: (BuildContext context, SliderState state) {
          return Scaffold(
            key: _scaffoldKey,
            body: SafeArea(
              child: Column(
                children: [
                  Center(
                    child: Container(
                      padding: EdgeInsets.only(top: 156.h, bottom: 32.h),
                      child: Text(
                        'TheMentr',
                        style: Font1.copyWith(
                            fontSize: 32.sp, color: Color(0xff015595)),
                      ),
                    ),
                  ),
                  Container(
                      width: w,
                      height: 428.h,
                      child: ScrollConfiguration(
                        behavior: MyBehavior(),
                        child: PageView.builder(
                            physics: AlwaysScrollableScrollPhysics(),
                            controller: _pageController,
                            onPageChanged: (int index) {
                              _SliderBloc.add(
                                  ChangePageIndex(((b) => b..index = index)));
                            },
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              return Center(
                                child: Stack(children: [
                                  Column(
                                    children: [
                                      Container(
                                          margin: EdgeInsets.only(bottom: 32.h),
                                          width: 360.w,
                                          height: 332.h,
                                          decoration: BoxDecoration(
                                            color: Color(0xffCEEAFF),
                                            borderRadius: border(8, 8, 8, 8),
                                            image: DecorationImage(
                                                image: AssetImage(index == 0
                                                    ? 'Assets/images/Woman running an online business.png'
                                                    : index == 1
                                                        ? 'Assets/images/image 5.png'
                                                        : 'Assets/images/image 7.png'),
                                                fit: BoxFit.fitWidth),
                                          )),
                                      Center(
                                        child: Container(
                                          margin: EdgeInsets.only(
                                              left: 50.w, right: 50.w),
                                          child: Text(
                                              index == 0
                                                  ? 'Are you interested in finding mentors who can give you useful help and guidance so that you can succeed in your field?'
                                                  : index == 1
                                                      ? 'We make it easy to search for, and connect potential Mentors, as well as keep track of all conversations and resources'
                                                      : 'Meet highly qualified and experienced mentors who can help you on your journey and realize your potential. ',
                                              textAlign: TextAlign.center,
                                              style: Font1.copyWith(
                                                  fontSize: 16.sp,
                                                  fontWeight: FontWeight.w500,
                                                  height: 1.4.h)),
                                        ),
                                      ),
                                    ],
                                  )
                                ]),
                              );
                            }),
                      )),
                  Container(
                    height: 4.h,
                    margin: EdgeInsets.only(top: 16.h),
                    child: ListView.separated(
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
                                    borderRadius: border(8, 8, 8, 8),
                                    color: Color(state.Pageindex == index
                                        ? 0xff077BCD
                                        : 0xffCEEAFF)
                                    // color : Color.fromRGBO(206, 234, 255, 1),
                                    ))
                          ],
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          width: 14.w,
                        );
                      },
                    ),
                  ),
                  state.Pageindex != 2
                      ? RemoveHighlight(InkWell(
                          onTap: () {
                            if (state.Pageindex! != 2) {
                              _SliderBloc.add(ChangePageIndex(
                                  ((b) => b..index = state.Pageindex! + 1)));
                              _pageController.animateToPage(
                                state.Pageindex! + 1,
                                duration: Duration(milliseconds: 700),
                                curve: Curves.easeIn,
                              );
                            }
                          },
                          child: Container(
                            margin: EdgeInsets.only(top: 83.h),
                            child: Center(
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
                                  Icon(
                                    Icons.arrow_forward_rounded,
                                    color: Color(0xff001321),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ))
                      : Container(),
                  Container(
                    margin: EdgeInsets.only(
                        top: state.Pageindex != 2 ? 16.h : 131.h),
                    child: CustomButton(
                      onPressed: () async {
                        if (state.Pageindex == 2) {
                          WidgetsBinding.instance
                              .addPostFrameCallback((_) => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Login(),
                                    ),
                                  ));
                        }
                        if (state.Pageindex! != 2) {
                          _SliderBloc.add(ChangePageIndex(
                              ((b) => b..index = state.Pageindex! + 1)));
                          _pageController.animateToPage(
                            state.Pageindex! + 1,
                            duration: Duration(milliseconds: 700),
                            curve: Curves.easeIn,
                          );
                        }
                      },
                      ButtonText: state.Pageindex != 2 ? 'Skip' : 'Next',
                      btnColor: Color(0xff015595),
                      TxtColor: Color(0xffFFFFFF),
                      SocialName: 'null',
                      weight: FontWeight.w600,
                      fontsize: 20.sp,
                      HeigthBTN: 56.h,
                      Widthbtn: 354.w,
                      BorderColor: Color(0xff015595),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
