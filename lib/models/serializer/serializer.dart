library serializer;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:thementr/models/GetAllCountriesModel/CountriesListModel.dart';
import 'package:thementr/models/GetAllCountriesModel/GetAllCountriesModel.dart';
import 'package:thementr/models/GetAllCountriesModel/StatesListModel.dart';
import 'package:thementr/models/GetInterestsModel/InterestListModel.dart';
import 'package:thementr/models/GetOccupation/GetOccupationModel.dart';
import 'package:thementr/models/GetOccupation/OccupationsListModel.dart';
import 'package:thementr/models/GetRolesModel/GetRolesModel.dart';
import 'package:thementr/models/GetRolesModel/RolesListModel.dart';
import 'package:thementr/models/GetSkillsModel/SkillsListModel.dart';
import 'package:thementr/models/UserDataModel/LastLocationModel.dart';

import 'package:thementr/models/UserDataModel/UserDataModel.dart';

import 'package:thementr/models/GetInterestsModel/GetInterestsModel.dart';
import 'package:thementr/models/GetSkillsModel/GetSkillsModel.dart';
import 'package:thementr/models/OtpForResetPasswordModel/OtpForResetPasswordModel.dart';
import 'package:thementr/models/ResendOtpModel/ResendOtpModel.dart';
import 'package:thementr/models/ResetPasswordModel/ResetPasswordModel.dart';
import 'package:thementr/models/UserDataModel/UserDataModel.dart';
import 'package:thementr/models/UserDataModel/UserModel.dart';
import 'package:thementr/models/UserProfileModel/EducationsListModel.dart';
import 'package:thementr/models/UserProfileModel/PortfolioLinksModel.dart';
import 'package:thementr/models/UserProfileModel/UserProfileModel.dart';
import 'package:thementr/models/UserProfileModel/WorksListModel.dart';
import 'package:thementr/models/ValidateOTPModel/ValidateOTPModel.dart';
import 'package:thementr/models/VerifyUserModel/VerifyUserModel.dart';

part 'serializer.g.dart';

@SerializersFor([
  VerifyUserModel,
  GetOccupationModel,
  OccupationsListModel,
  EducationsListModel,
  PortfolioLinksModel,
  UserProfileModel,
  WorksListModel,
  LastLocationModel,
  UserDataModel,
  UserModel,
  ResetPasswordModel,
  ResendOtpModel,
  OtpForResetPasswordModel,
  GetSkillsModel,
  SkillsListModel,
  GetInterestsModel,
  InterestListModel,
  RolesListModel,
  GetRolesModel,
  GetAllCountriesModel,
  CountriesListModel,
  StatesListModel,
  ValidateOTPModel,
])
final Serializers serializers = (_$serializers.toBuilder()
      ..addPlugin(StandardJsonPlugin())
  ..addBuilderFactory(
      (const FullType(
        BuiltList,
        [
          FullType(GetAllCountriesModel),
        ],
      )),
          () => ListBuilder<GetAllCountriesModel>())
  ..addBuilderFactory(
      (const FullType(
        BuiltList,
        [
          FullType(ValidateOTPModel),
        ],
      )),
          () => ListBuilder<ValidateOTPModel>())


  ..addBuilderFactory(
      (const FullType(
        BuiltList,
        [
          FullType(StatesListModel),
        ],
      )),
          () => ListBuilder<StatesListModel>())
  ..addBuilderFactory(
      (const FullType(
        BuiltList,
        [
          FullType(CountriesListModel),
        ],
      )),
          () => ListBuilder<CountriesListModel>())
  ..addBuilderFactory(
      (const FullType(
        BuiltList,
        [
          FullType(RolesListModel),
        ],
      )),
          () => ListBuilder<RolesListModel>())
  ..addBuilderFactory(
      (const FullType(
        BuiltList,
        [
          FullType(GetOccupationModel),
        ],
      )),
          () => ListBuilder<GetOccupationModel>())
  ..addBuilderFactory(
      (const FullType(
        BuiltList,
        [
          FullType(OccupationsListModel),
        ],
      )),
          () => ListBuilder<OccupationsListModel>())
  ..addBuilderFactory(
      (const FullType(
        BuiltList,
        [
          FullType(GetRolesModel),
        ],
      )),
          () => ListBuilder<GetRolesModel>())
      ..addBuilderFactory(
          (const FullType(
            BuiltList,
            [
              FullType(OtpForResetPasswordModel),
            ],
          )),
          () => ListBuilder<OtpForResetPasswordModel>())
      ..addBuilderFactory(
          (const FullType(
            BuiltList,
            [
              FullType(ResendOtpModel),
            ],
          )),
          () => ListBuilder<ResendOtpModel>())
      ..addBuilderFactory(
          (const FullType(
            BuiltList,
            [
              FullType(ResetPasswordModel),
            ],
          )),
          () => ListBuilder<ResetPasswordModel>())
      ..addBuilderFactory(
          (const FullType(
            BuiltList,
            [
              FullType(UserModel),
            ],
          )),
          () => ListBuilder<UserModel>())
      ..addBuilderFactory(
          (const FullType(
            BuiltList,
            [
              FullType(UserDataModel),
            ],
          )),
          () => ListBuilder<UserDataModel>())
      ..addBuilderFactory(
          (const FullType(
            BuiltList,
            [
              FullType(LastLocationModel),
            ],
          )),
          () => ListBuilder<LastLocationModel>())
      ..addBuilderFactory(
          (const FullType(
            BuiltList,
            [
              FullType(WorksListModel),
            ],
          )),
          () => ListBuilder<WorksListModel>())
      ..addBuilderFactory(
          (const FullType(
            BuiltList,
            [
              FullType(UserProfileModel),
            ],
          )),
          () => ListBuilder<UserProfileModel>())
      ..addBuilderFactory(
          (const FullType(
            BuiltList,
            [
              FullType(VerifyUserModel),
            ],
          )),
          () => ListBuilder<VerifyUserModel>())
      ..addBuilderFactory(
          (const FullType(
            BuiltList,
            [
              FullType(EducationsListModel),
            ],
          )),
          () => ListBuilder<EducationsListModel>())
      ..addBuilderFactory(
          (const FullType(
            BuiltList,
            [
              FullType(PortfolioLinksModel),
            ],
          )),
          () => ListBuilder<PortfolioLinksModel>())
      ..addBuilderFactory(
          (const FullType(
            BuiltList,
            [
              FullType(GetSkillsModel),
            ],
          )),
          () => ListBuilder<GetSkillsModel>())
      ..addBuilderFactory(
          (const FullType(
            BuiltList,
            [
              FullType(InterestListModel),
            ],
          )),
          () => ListBuilder<InterestListModel>())
      ..addBuilderFactory(
          (const FullType(
            BuiltList,
            [
              FullType(GetInterestsModel),
            ],
          )),
          () => ListBuilder<GetInterestsModel>())
      ..addBuilderFactory(
          (const FullType(
            BuiltList,
            [
              FullType(SkillsListModel),
            ],
          )),
          () => ListBuilder<SkillsListModel>()))
    .build();
//Serializers used for converting json unUsed Code to a code of object
//which i can intract with and use serializer is one of the ways of handleing this
// json data thing. we have chosen this way because it gets genrated easily and
//fastly and has lots of features.

//Make sure you add the StandardJsonPlugin whenever you want to use the generated
// JSON with a RESTful API. By default, BuiltValue's JSON output aren't key-value
// pairs, but instead a list containing [key1, value1, key2, value2, ...]. This is
// not what most of the APIs expect.
