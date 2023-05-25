
 
import 'package:thementr/models/GetAllCountriesModel/GetAllCountriesModel.dart';
import 'package:thementr/models/GetOccupation/GetOccupationModel.dart';
import 'package:thementr/models/GetRolesModel/GetRolesModel.dart';
import 'package:thementr/models/UserDataModel/UserDataModel.dart';

import 'package:thementr/models/GetInterestsModel/GetInterestsModel.dart';
import 'package:thementr/models/GetSkillsModel/GetSkillsModel.dart';
import 'package:thementr/models/OtpForResetPasswordModel/OtpForResetPasswordModel.dart';
import 'package:thementr/models/ResendOtpModel/ResendOtpModel.dart';
import 'package:thementr/models/ResetPasswordModel/ResetPasswordModel.dart';
import 'package:thementr/models/UserDataModel/UserDataModel.dart';
import 'package:thementr/models/UserProfileModel/UserProfileModel.dart';
import 'package:thementr/models/ValidateOTPModel/ValidateOTPModel.dart';
import 'package:thementr/models/VerifyUserModel/VerifyUserModel.dart';
abstract class IRepository {
  Future<UserDataModel> Login(String Email,String Password);
  Future<UserDataModel> SignUp(String Email,String Password,String firstName,String lastName);
  Future<UserDataModel> SignInGoogle(String Email,String ProfileImage,String firstName,String lastName);
  Future<UserDataModel> SignInFacebook(String Token);
  Future<GetInterestsModel> GetInterest();
  Future<ResendOtpModel> ReSendOTP(String Email);
  Future<ResetPasswordModel> ResetPassword(String Email,String Password);
  Future<OtpForResetPasswordModel> SendOtpForResetPassword(String Email);
  Future<VerifyUserModel> VerifyEmail(String Email,String otp);
  Future<GetSkillsModel> GetSkills(String InterestValue);
  Future<UserProfileModel> GetProfile(String Auth);
  Future<GetRolesModel> GetRoles();
  Future<GetOccupationModel> GetOccupations(String Keyword);
  Future<GetAllCountriesModel> GetAllCountries();
  Future<ValidateOTPModel> ValidateOTP(String Email,int otp);
}
