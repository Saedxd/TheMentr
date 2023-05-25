import 'dart:convert';
import 'dart:io';


import 'package:thementr/models/GetAllCountriesModel/GetAllCountriesModel.dart';
import 'package:thementr/models/GetInterestsModel/GetInterestsModel.dart';
import 'package:thementr/models/GetOccupation/GetOccupationModel.dart';
import 'package:thementr/models/GetRolesModel/GetRolesModel.dart';
import 'package:thementr/models/GetSkillsModel/GetSkillsModel.dart';
import 'package:thementr/models/OtpForResetPasswordModel/OtpForResetPasswordModel.dart';
import 'package:thementr/models/ResendOtpModel/ResendOtpModel.dart';
import 'package:thementr/models/ResetPasswordModel/ResetPasswordModel.dart';
import 'package:thementr/models/UserDataModel/UserDataModel.dart';
import 'package:thementr/models/UserProfileModel/UserProfileModel.dart';
import 'package:thementr/models/ValidateOTPModel/ValidateOTPModel.dart';
import 'package:thementr/models/VerifyUserModel/VerifyUserModel.dart';
import 'package:thementr/models/UserDataModel/UserDataModel.dart';

import '../http_helper/Ihttp_helper.dart';
import '../prefs_helper/iprefs_helper.dart';
import 'irepository.dart';

class Repository implements IRepository {
  IHttpHelper _ihttpHelper;
  IPrefsHelper _iprefHelper;

  Repository(this._ihttpHelper, this._iprefHelper);


  @override
  Future<UserDataModel> Login(String Email,String Password)async{
    final Data = await _ihttpHelper.Login(Email, Password);
    return Data;
  }

  @override
  Future<UserDataModel> SignUp(String Email,String Password,String firstName,String lastName)async{
    final Data = await _ihttpHelper.SignUp(Email, Password, firstName, lastName);
    return Data;
  }

  @override
  Future<UserDataModel> SignInGoogle(String Email,String ProfileImage,String firstName,String lastName)async{
    final Data = await _ihttpHelper.SignInGoogle(Email, ProfileImage, firstName, lastName);
    return Data;
  }

  @override
  Future<UserDataModel> SignInFacebook(String Token)async{
    final Data = await _ihttpHelper.SignInFacebook(Token);
    return Data;
  }

  @override
  Future<GetInterestsModel> GetInterest()async{
    final Data = await _ihttpHelper.GetInterest();
    return Data;
  }


  @override
  Future<ResendOtpModel> ReSendOTP(String Email)async{
    final Data = await _ihttpHelper.ReSendOTP(Email);
    return Data;
  }


  @override
  Future<ResetPasswordModel> ResetPassword(String Email,String Password)async{
    final Data = await _ihttpHelper.ResetPassword(Email, Password);
    return Data;
  }

  @override
  Future<OtpForResetPasswordModel> SendOtpForResetPassword(String Email)async{
    final Data = await _ihttpHelper.SendOtpForResetPassword(Email);
    return Data;
  }

  @override
  Future<VerifyUserModel> VerifyEmail(String Email,String otp)async{
    final Data = await _ihttpHelper.VerifyEmail(Email, otp);
    return Data;
  }

  @override
  Future<GetSkillsModel> GetSkills(String InterestValue)async{
    final Data = await _ihttpHelper.GetSkills(InterestValue);
    return Data;
  }


  @override
  Future<UserProfileModel> GetProfile(String Auth)async{
    final Data = await _ihttpHelper.GetProfile(Auth);
    return Data;
  }


  @override
  Future<GetRolesModel> GetRoles()async{
    final Data = await _ihttpHelper.GetRoles();
    return Data;
  }
  @override
  Future<GetOccupationModel> GetOccupations(String Keyword)async{
    final Data = await _ihttpHelper.GetOccupations(Keyword);
    return Data;
  }

  @override
  Future<GetAllCountriesModel> GetAllCountries()async{
    final Data = await _ihttpHelper.GetAllCountries();
    return Data;
  }

  @override
  Future<ValidateOTPModel> ValidateOTP(String Email,int otp)async{
    final Data = await _ihttpHelper.ValidateOTP(Email, otp);
    return Data;
  }

}
