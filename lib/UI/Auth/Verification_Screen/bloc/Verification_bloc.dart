
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:thementr/Data/repository/irepository.dart';
import 'package:thementr/Data/repository/irepository.dart';
import 'Verification_event.dart';
import 'Verification_state.dart';


class VerificationBloc extends Bloc<VerificationEvent, VerificationState> {

  IRepository _repository;

  VerificationBloc(this._repository) : super(VerificationState.initail()) ;

  @override
  VerificationState get initialState => VerificationState.initail();

  @override
  Stream<VerificationState> mapEventToState(
      VerificationEvent event,
      ) async* {


    if (event is ResendOTP) {
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = ""
          ..success = false
          ..ResendOtp = null
          ..ValidateOTP = null
          ..VerifyUser = null
        );

       final date = await _repository.ReSendOTP(event.Email!);
        print(date);

        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ""
          ..success= true
          ..Error= false
          ..ResendOtp.replace(date)
        );

      } catch (e) {
        print('get Error $e');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = "Invalid code passed."
          ..success = false
          ..Error= true
           ..ResendOtp = null
        );
      }
    }
    if (event is ValidateOTP) {
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = ""
          ..success = false
          ..Error= false
          ..ResendOtp = null
          ..ValidateOTP = null
          ..VerifyUser = null
        );

       final date = await _repository.ValidateOTP(event.Email!,event.otp!);
        print(date);

        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ""
          ..success= true
          ..Error= false
         ..ValidateOTP.replace(date)

        );

      } catch (e) {
        print('get Error $e');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = "Invalid code passed."
          ..success = false
          ..Error= true
           ..ValidateOTP = null
        );
      }
    }
    if (event is VerifyAccount) {
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = ""
          ..success = false
          ..Error= false
          ..ResendOtp = null
          ..ValidateOTP = null
          ..VerifyUser = null
        );

       final date = await _repository.VerifyEmail(event.Email!,event.otp!.toString());
        print(date);

        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ""
          ..success= true
          ..Error= false
         ..VerifyUser.replace(date)

        );

      } catch (e) {
        print('get Error $e');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = "Invalid code passed."
          ..success = false
          ..Error= true
           ..VerifyUser = null
        );
      }
    }

  }
}
