
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:thementr/Core/Classes/Classes.dart';
import 'package:thementr/Data/repository/irepository.dart';
import 'package:thementr/Data/repository/irepository.dart';
import 'package:thementr/UI/Auth/LinkToPortfolio_Screen/bloc/LinkToPortfolio_state.dart';
import 'package:thementr/UI/Auth/WorkExperience_Screen/bloc/WorkExperience_state.dart';
import 'WorkExperience_event.dart';



class WorkExperienceBloc extends Bloc<WorkExperienceEvent, WorkExperienceState> {

  IRepository _repository;

  WorkExperienceBloc(this._repository) : super(WorkExperienceState.initail()) ;

  @override
  WorkExperienceState get initialState => WorkExperienceState.initail();

  @override
  Stream<WorkExperienceState> mapEventToState(
      WorkExperienceEvent event,
      ) async* {

    if (event is AddForm) {
      try {

        yield state.rebuild((b) => b
          ..isLoading = true
        );

        state.Forms!.add(WorkExperienceForm());

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
