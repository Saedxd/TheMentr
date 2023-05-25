import 'dart:convert';
import 'dart:developer';


import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:built_collection/built_collection.dart';
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
import 'package:thementr/models/serializer/serializer.dart';

import 'Ihttp_helper.dart';
import 'dart:io';
import 'dart:core';

class HttpHelper implements IHttpHelper {
  Dio? _dio;
  Dio? _dio2;
  var cookieJar = CookieJar();

  HttpHelper(this._dio, this._dio2) {
    _dio!.interceptors.add(LogInterceptor(
      request: true,
      responseBody: true,
      requestBody: true,
    ));
    _dio!.interceptors.add(CookieManager(cookieJar));

    _dio2!.interceptors.add(LogInterceptor(
      request: true,
      responseBody: true,
      requestBody: true,
    ));
  }




  @override
  Future<UserDataModel> Login(String Email,String Password)async{
    try {
          final formData = {
            "email": Email,
            "password": Password,
          };
      final response = await _dio!
          .post('signInUser',data: formData, options: Options(headers: {
        "Accept" :"application/json"
      }));


      if (response.statusCode == 200){

        final baseResponse = serializers.deserialize(json.decode(response.data),
            specifiedType: const FullType(
              UserDataModel,
              [
                FullType(
                  BuiltList,
                  [
                    FullType(UserDataModel),
                  ],
                ),
              ],
            )) as UserDataModel;

        return baseResponse;
      }else{
        print("NetworkException 1st");
        throw NetworkException();
      }
    } on SocketException catch (e) {
      throw NetworkException();
    } catch (e) {
      print("NetworkException 2ed");
      print(e);
      throw NetworkException();
    }
  }
  @override
  Future<UserDataModel> SignUp(String Email,String Password,String firstName,String lastName)async{
    try {
          final formData = {
            "firstName": firstName,
            "lastName": lastName,
            "email": Email,
            "password": Password
          };
      final response = await _dio!
          .post('createUser',data: formData, options: Options(headers: {
        "Accept" :"application/json"
      }));

      if (response.statusCode == 200){

        final baseResponse = serializers.deserialize(json.decode(response.data),
            specifiedType: const FullType(
              UserDataModel,
              [
                FullType(
                  BuiltList,
                  [
                    FullType(UserDataModel),
                  ],
                ),
              ],
            )) as UserDataModel;

        return baseResponse;
      }else{
        throw NetworkException();
      }
    } on SocketException catch (e) {
      throw NetworkException();
    } catch (e) {
      print(e);
      throw NetworkException();
    }
  }
  @override
  Future<UserDataModel> SignInGoogle(String Email,String ProfileImage,String firstName,String lastName)async{
    try {
      final formData = {
        // "firstName": firstName,
        // "lastName": lastName,
        // "email": Email,
        // "password": Password
      };
      final response = await _dio!
          .post('createUser',data: formData, options: Options(headers: {
        "Accept" :"application/json"
      }));

      if (response.statusCode == 200){

        final baseResponse = serializers.deserialize(json.decode(response.data),
            specifiedType: const FullType(
              UserDataModel,
              [
                FullType(
                  BuiltList,
                  [
                    FullType(UserDataModel),
                  ],
                ),
              ],
            )) as UserDataModel;

        return baseResponse;
      }else{
        throw NetworkException();
      }
    } on SocketException catch (e) {
      throw NetworkException();
    } catch (e) {
      print(e);
      throw NetworkException();
    }
  }
  @override
  Future<UserDataModel> SignInFacebook(String Token)async{
    try {

      final response = await _dio!
          .get('facebookAuth', options: Options(headers: {
        "Accept" :"application/json",
        "Authorization" : "Bearer $Token"
      }));

      if (response.statusCode == 200){

        final baseResponse = serializers.deserialize(json.decode(response.data),
            specifiedType: const FullType(
              UserDataModel,
              [
                FullType(
                  BuiltList,
                  [
                    FullType(UserDataModel),
                  ],
                ),
              ],
            )) as UserDataModel;

        return baseResponse;
      }else{
        throw NetworkException();
      }
    } on SocketException catch (e) {
      throw NetworkException();
    } catch (e) {
      print(e);
      throw NetworkException();
    }
  }
  @override
  Future<GetInterestsModel> GetInterest()async{
    try {
      final response = await _dio!
          .get('getInterest', options: Options(headers: {
        "Accept" :"application/json"
      }));

      if (response.statusCode == 200){

        final baseResponse = serializers.deserialize(json.decode(response.data),
            specifiedType: const FullType(
              GetInterestsModel,
              [
                FullType(
                  BuiltList,
                  [
                    FullType(GetInterestsModel),
                  ],
                ),
              ],
            )) as GetInterestsModel;

        return baseResponse;
      }else{
        throw NetworkException();
      }
    } on SocketException catch (e) {
      throw NetworkException();
    } catch (e) {
      print(e);
      throw NetworkException();
    }
  }
  @override
  Future<GetRolesModel> GetRoles()async{
    try {
      final response = await _dio!
          .get('getRoles', options: Options(headers: {
        "Accept" :"application/json"
      }));

      if (response.statusCode == 200){

        final baseResponse = serializers.deserialize(json.decode(response.data),
            specifiedType: const FullType(
              GetRolesModel,
              [
                FullType(
                  BuiltList,
                  [
                    FullType(GetRolesModel),
                  ],
                ),
              ],
            )) as GetRolesModel;

        return baseResponse;
      }else{
        throw NetworkException();
      }
    } on SocketException catch (e) {
      throw NetworkException();
    } catch (e) {
      print(e);
      throw NetworkException();
    }
  }
  @override
  Future<ResendOtpModel> ReSendOTP(String Email)async{
    try {
      var formdata ={
        "email":Email
      };


      final response = await _dio!
          .post('resendOtp',data: formdata, options: Options(headers: {
        "Accept" :"application/json"
      }));

      if (response.statusCode == 200){

        final baseResponse = serializers.deserialize(json.decode(response.data),
            specifiedType: const FullType(
              ResendOtpModel,
              [
                FullType(
                  BuiltList,
                  [
                    FullType(ResendOtpModel),
                  ],
                ),
              ],
            )) as ResendOtpModel;

        return baseResponse;
      }else{
        throw NetworkException();
      }
    } on SocketException catch (e) {
      throw NetworkException();
    } catch (e) {
      print(e);
      throw NetworkException();
    }
  }
  @override
  Future<ResetPasswordModel> ResetPassword(String Email,String Password)async{
    try {

      var data = {
        "email": Email,
        "password": Password,
      };
      final response = await _dio!
          .post('changePassword',data: data, options: Options(headers: {
        "Accept" :"application/json"
      }));

      if (response.statusCode == 200){

        final baseResponse = serializers.deserialize(json.decode(response.data),
            specifiedType: const FullType(
              ResetPasswordModel,
              [
                FullType(
                  BuiltList,
                  [
                    FullType(ResetPasswordModel),
                  ],
                ),
              ],
            )) as ResetPasswordModel;

        return baseResponse;
      }else{
        throw NetworkException();
      }
    } on SocketException catch (e) {
      throw NetworkException();
    } catch (e) {
      print(e);
      throw NetworkException();
    }
  }

  @override
  Future<ValidateOTPModel> ValidateOTP(String Email,int otp)async{
    try {
      var formData = {
        "email": Email,
        "otp": otp.toString()
      };

      final response = await _dio!
          .post('verifyUserOtp',data: formData, options: Options(headers: {
        "Accept" :"application/json"
      }));

      if (response.statusCode == 200){

        final baseResponse = serializers.deserialize(json.decode(response.data),
            specifiedType: const FullType(
              ValidateOTPModel,
              [
                FullType(
                  BuiltList,
                  [
                    FullType(ValidateOTPModel),
                  ],
                ),
              ],
            )) as ValidateOTPModel;

        return baseResponse;
      }else{
        throw NetworkException();
      }
    } on SocketException catch (e) {
      throw NetworkException();
    } catch (e) {
      print(e);
      throw NetworkException();
    }
  }

  @override
  Future<OtpForResetPasswordModel> SendOtpForResetPassword(String Email)async{
    try {

      var data = {
        "email": Email,
      };
      final response = await _dio!
          .post('OtpForResetPassword',data: data, options: Options(headers: {
        "Accept" :"application/json"
      }));

      if (response.statusCode == 200){

        final baseResponse = serializers.deserialize(json.decode(response.data),
            specifiedType: const FullType(
              OtpForResetPasswordModel,
              [
                FullType(
                  BuiltList,
                  [
                    FullType(OtpForResetPasswordModel),
                  ],
                ),
              ],
            )) as OtpForResetPasswordModel;

        return baseResponse;
      }else{
        throw NetworkException();
      }
    } on SocketException catch (e) {
      throw NetworkException();
    } catch (e) {
      print(e);
      throw NetworkException();
    }
  }
  @override
  Future<VerifyUserModel> VerifyEmail(String Email,String otp)async{
    try {

      var data = {
      "email": Email,
      "otp": otp
      };
      final response = await _dio!
          .post('verifyUser',data: data, options: Options(headers: {
        "Accept" :"application/json"
      }));

      if (response.statusCode == 200){

        final baseResponse = serializers.deserialize(json.decode(response.data),
            specifiedType: const FullType(
              VerifyUserModel,
              [
                FullType(
                  BuiltList,
                  [
                    FullType(VerifyUserModel),
                  ],
                ),
              ],
            )) as VerifyUserModel;

        return baseResponse;
      }else{
        throw NetworkException();
      }
    } on SocketException catch (e) {
      throw NetworkException();
    } catch (e) {
      print(e);
      throw NetworkException();
    }
  }
  @override
  Future<GetSkillsModel> GetSkills(String InterestValue)async{
    try {

      var formData ={
        "interest": InterestValue
      };

      final response = await _dio!
          .post('getSkills',data: formData, options: Options(headers: {
        "Accept" :"application/json"
      }));


      if (response.statusCode == 200){

        final baseResponse = serializers.deserialize(json.decode(response.data),
            specifiedType: const FullType(
              GetSkillsModel,
              [
                FullType(
                  BuiltList,
                  [
                    FullType(GetSkillsModel),
                  ],
                ),
              ],
            )) as GetSkillsModel;

        return baseResponse;
      }else{
        throw NetworkException();
      }
    } on SocketException catch (e) {
      throw NetworkException();
    } catch (e) {
      print(e);
      throw NetworkException();
    }
  }
  @override
  Future<UserProfileModel> GetProfile(String Auth)async{
    try {

      final response = await _dio!
          .get('getUserById', options: Options(headers: {
        "Accept" :"application/json",
        "x-auth-token" :Auth
      }));

      if (response.statusCode == 200){

        final baseResponse = serializers.deserialize(json.decode(response.data),
            specifiedType: const FullType(
              UserProfileModel,
              [
                FullType(
                  BuiltList,
                  [
                    FullType(UserProfileModel),
                  ],
                ),
              ],
            )) as UserProfileModel;

        return baseResponse;
      }else{
        throw NetworkException();
      }
    } on SocketException catch (e) {
      throw NetworkException();
    } catch (e) {
      print(e);
      throw NetworkException();
    }
  }
  @override
  Future<GetOccupationModel> GetOccupations(String Keyword)async{
    try {
      var data = {
        "occupation":Keyword
      };

      final response = await _dio!
          .post('getOccupation',data: data, options: Options(headers: {
        "Accept" :"application/json"
      }));

      if (response.statusCode == 200){

        final baseResponse = serializers.deserialize(json.decode(response.data),
            specifiedType: const FullType(
              GetOccupationModel,
              [
                FullType(
                  BuiltList,
                  [
                    FullType(GetOccupationModel),
                  ],
                ),
              ],
            )) as GetOccupationModel;

        return baseResponse;
      }else{
        throw NetworkException();
      }
    } on SocketException catch (e) {
      throw NetworkException();
    } catch (e) {
      print(e);
      throw NetworkException();
    }
  }
  @override
  Future<GetAllCountriesModel> GetAllCountries()async{
    try {

      final response = await _dio!
          .get('getAllCountry', options: Options(headers: {
        "Accept" :"application/json"
      }));

      if (response.statusCode == 200){

        final baseResponse = serializers.deserialize(json.decode(response.data),
            specifiedType: const FullType(
              GetAllCountriesModel,
              [
                FullType(
                  BuiltList,
                  [
                    FullType(GetAllCountriesModel),
                  ],
                ),
              ],
            )) as GetAllCountriesModel;

        return baseResponse;
      }else{
        throw NetworkException();
      }
    } on SocketException catch (e) {
      throw NetworkException();
    } catch (e) {
      print(e);
      throw NetworkException();
    }
  }



}

class NetworkException implements Exception {}
