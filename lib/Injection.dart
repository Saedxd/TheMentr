// ignore_for_file: constant_identifier_names, file_names
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:thementr/UI/Auth/EducationBackGround_Screen/bloc/EducationBackground_bloc.dart';
import 'package:thementr/UI/Auth/ForgetPassword_Screen/bloc/ForgotPassword_bloc.dart';
import 'package:thementr/UI/Auth/LinkToPortfolio_Screen/bloc/LinkToPortfolio_bloc.dart';
import 'package:thementr/UI/Auth/Login_screen/bloc/login_bloc.dart';
import 'package:thementr/UI/Auth/NewPassword_Screen/bloc/NewPassword_bloc.dart';
import 'package:thementr/UI/Auth/SignUp_Screen/bloc/SignUp_bloc.dart';
import 'package:thementr/UI/Auth/Verification_Screen/bloc/Verification_bloc.dart';
import 'package:thementr/UI/Auth/WorkExperience_Screen/bloc/WorkExperienceBloc.dart';
import 'package:thementr/UI/Home/HomeScreen/bloc/HomePage_Bloc.dart';
import 'package:thementr/UI/OnBoarding/Slider2/bloc/Slider_bloc.dart';
import 'Data/http_helper/Ihttp_helper.dart';
import 'Data/http_helper/http_helper.dart';
import 'Data/prefs_helper/iprefs_helper.dart';
import 'Data/prefs_helper/prefs_helper.dart';
import 'Data/repository/irepository.dart';
import 'Data/repository/repository.dart';

final sl = GetIt.instance;


const BaseUrl = "https://the-mentr.onrender.com/api/";


Future iniGetIt() async {
  sl.registerLazySingleton(() => Dio(
      BaseOptions(baseUrl: BaseUrl, headers: {

      }, responseType: ResponseType.plain)

  ));

//DATA
  sl.registerLazySingleton<IHttpHelper>(() => HttpHelper(sl(), sl()));
  sl.registerLazySingleton<IRepository>(() => Repository(sl(), sl()));
  sl.registerLazySingleton<IPrefsHelper>(() => PrefsHelper());

  //factory means this dependency injection will provide us with new instance of get it everytime its called
  //so sometimes we call bloc in dispose which leads stream to close so useing the same instance that means it will be closed.
 sl.registerFactory(() => loginBloc(sl()));
 sl.registerFactory(() => SignUpBloc(sl()));
 sl.registerFactory(() => SliderBloc(sl()));
 sl.registerFactory(() => HomePageBloc(sl()));
 sl.registerFactory(() => ForgotPasswordBloc(sl()));
 sl.registerFactory(() => VerificationBloc(sl()));
 sl.registerFactory(() => NewPasswordBloc(sl()));
 sl.registerFactory(() => LinkToPortfolioBloc(sl()));
 sl.registerFactory(() => WorkExperienceBloc(sl()));
 sl.registerFactory(() => EducationBackgroundBloc(sl()));
 // sl.registerFactory(() => HomePageBloc(sl()));


}
//we use this package for dependency injection and use for connecting all our APP with each other
//for example we give in constructor this get_it in both http and repository so the object can come IN the Easy Way.

