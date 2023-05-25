
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:thementr/Core/Classes/Classes.dart';
import 'package:thementr/Data/repository/irepository.dart';
import 'package:thementr/Data/repository/irepository.dart';
import 'package:thementr/UI/Auth/EducationBackGround_Screen/bloc/EducationBackground_state.dart';
import 'package:thementr/UI/Auth/LinkToPortfolio_Screen/bloc/LinkToPortfolio_state.dart';
import 'package:thementr/UI/Auth/WorkExperience_Screen/bloc/WorkExperience_state.dart';
import 'EducationBackground_event.dart';



class EducationBackgroundBloc extends Bloc<EducationBackgroundEvent, EducationBackgroundState> {

  IRepository _repository;

  EducationBackgroundBloc(this._repository) : super(EducationBackgroundState.initail()) ;

  @override
  EducationBackgroundState get initialState => EducationBackgroundState.initail();

  @override
  Stream<EducationBackgroundState> mapEventToState(
      EducationBackgroundEvent event,
      ) async* {

    if (event is AddForm) {
      try {

        yield state.rebuild((b) => b
          ..isLoading = true
        );

        state.Forms!.add(EducationBackGroundForm());

        yield state.rebuild((b) => b
          ..isLoading = false
        );

      } catch (e) {
        print('get Error $e');
      }
    }
    if (event is RemoveForm) {
      try {

        yield state.rebuild((b) => b
          ..isLoading = true
        );

        state.Forms!.removeAt(event.Index!);

        yield state.rebuild((b) => b
          ..isLoading = false
        );


      } catch (e) {
        print('get Error $e');
      }
    }


  }
}
