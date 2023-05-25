
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:thementr/Data/repository/irepository.dart';
import 'package:thementr/Data/repository/irepository.dart';
import 'ForgotPassword_event.dart';
import 'ForgotPassword_state.dart';


class ForgotPasswordBloc extends Bloc<ForgotPasswordEvent, ForgotPasswordState> {

  IRepository _repository;

  ForgotPasswordBloc(this._repository) : super(ForgotPasswordState.initail()) ;

  @override
  ForgotPasswordState get initialState => ForgotPasswordState.initail();

  @override
  Stream<ForgotPasswordState> mapEventToState(
      ForgotPasswordEvent event,
      ) async* {

    if (event is RequestPassReset) {
      try {

        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = ""
          ..success = false
          ..ResetPassword = null
        );


    final date = await _repository.SendOtpForResetPassword(event.Email!);
        print(date);

        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ""
          ..success= true
          ..ResetPassword.replace(date)
        );

      } catch (e) {
        print('get Error $e');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = "Something went wrong"
          ..success = false
          ..ResetPassword = null
        );
      }
    }


  }
}
