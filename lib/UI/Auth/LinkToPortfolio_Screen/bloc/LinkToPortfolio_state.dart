library LinkToPortfolio_state;

import 'dart:convert';


import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter/material.dart' as i;
import 'package:thementr/Core/Classes/Classes.dart';

import 'package:thementr/models/OtpForResetPasswordModel/OtpForResetPasswordModel.dart';
import 'package:thementr/models/ResetPasswordModel/ResetPasswordModel.dart';

import 'package:thementr/models/UserDataModel/UserDataModel.dart';

part 'LinkToPortfolio_state.g.dart';

abstract class LinkToPortfolioState implements Built<LinkToPortfolioState, LinkToPortfolioStateBuilder> {
  // fields go here

  String? get error;
  bool? get isLoading;
  bool? get success;
  List<PortfolioForm>? get Forms;

  LinkToPortfolioState._();

  factory LinkToPortfolioState([updates(LinkToPortfolioStateBuilder b)]) = _$LinkToPortfolioState;

  factory LinkToPortfolioState.initail() {
    return LinkToPortfolioState((b) => b
      ..error = ""
      ..isLoading = false
      ..success = false
      ..Forms = [PortfolioForm()]



    );
  }
}
