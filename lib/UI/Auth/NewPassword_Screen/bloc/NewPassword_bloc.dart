
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:thementr/Data/repository/irepository.dart';
import 'package:thementr/Data/repository/irepository.dart';
import 'NewPassword_event.dart';
import 'NewPassword_State.dart';


class NewPasswordBloc extends Bloc<NewPasswordEvent, NewPasswordState> {

  IRepository _repository;

  NewPasswordBloc(this._repository) : super(NewPasswordState.initail()) ;

  @override
  NewPasswordState get initialState => NewPasswordState.initail();

  @override
  Stream<NewPasswordState> mapEventToState(
      NewPasswordEvent event,
      ) async* {

    if (event is ChangePassword) {
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = ""
          ..success = false
          ..ResetPassword = null
        );

       final date = await _repository.ResetPassword(event.Email!,event.password!);
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
          ..error = ""
          ..success = false
           ..ResetPassword = null
        );
      }
    }

  }
}
