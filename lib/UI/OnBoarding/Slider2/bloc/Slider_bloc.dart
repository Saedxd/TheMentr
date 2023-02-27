import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:thementr/Data/repository/irepository.dart';
import 'package:thementr/Data/repository/irepository.dart';
import 'slider_event.dart';
import 'slider_state.dart';


class SliderBloc extends Bloc<SliderEvent, SliderState> {

  IRepository _repository;

  SliderBloc(this._repository) : super(SliderState.initail()) ;

  @override
  SliderState get initialState => SliderState.initail();

  @override
  Stream<SliderState> mapEventToState(
      SliderEvent event,
      ) async* {
    if (event is ChangePageIndex) {
      yield state.rebuild((b) =>
      b
        ..Pageindex = event.index
      );
    }
//
//     if (event is SignInApple) {
//       try {
//
//         yield state.rebuild((b) => b
//           ..isLoading = true
//           ..error = ""
//           ..success = false
//           ..data = null
//         );
//
//     //    final date = await _repository.AppleSignIN(event.Email!, event.FirstName!, event.Lastname!, event.fcmToken!);
//         print(date);
//
//         yield state.rebuild((b) => b
//           ..isLoading = false
//           ..error = ""
//           ..success= true
//           ..data.replace(date)
//         );
//
//       } catch (e) {
//         print('get Error $e');
//         yield state.rebuild((b) => b
//           ..isLoading = false
//           ..error = "Something went wrong"
//           ..success = false
//           ..data = null
//         );
//       }
//     }
//
//     if (event is ClearError) {
//       yield state.rebuild((b) => b
//         ..error = ""
//       );
//     }
//
//     if (event is PostLOgin) {
//       try {
//
//         yield state.rebuild((b) => b
//           ..isLoading = true
//           ..error = ""
//           ..success = false
//           ..data = null
//         );
// // print("im here");
// // print(event.Email!);
// // print(event.fcmToken!);
// // print(event.password!);
//       //  final date = await _repository.login(event.Email!, event.password!,event.fcmToken!);
// print(date);
//
//         yield state.rebuild((b) => b
//           ..isLoading = false
//           ..error = ""
//           ..success= true
//           ..data.replace(date)
//         );
//
//       } catch (e) {
//         print('get Error $e');
//         yield state.rebuild((b) => b
//           ..isLoading = false
//           ..error = "Something went wrong"
//           ..success = false
//           ..data = null
//         );
//       }
//     }
//     if (event is LoginWithPhone) {
//       try {
//
//         yield state.rebuild((b) => b
//           ..isLoading = true
//           ..error = ""
//           ..success = false
//           ..data = null
//         );
//
//    //     final date = await _repository.SignInWithPhone(event.Phone!, event.fcmToken!);
//
//
//         yield state.rebuild((b) => b
//           ..isLoading = false
//           ..error = ""
//           ..success= true
//           ..data.replace(date)
//         );
//
//       } catch (e) {
//         print('get Error $e');
//         yield state.rebuild((b) => b
//           ..isLoading = false
//           ..error = "Something went wrong"
//           ..success = false
//           ..data = null
//         );
//       }
//     }
//
//     if (event is LoginSocial) {
//       try {
//
//         yield state.rebuild((b) => b
//           ..isLoading = true
//           ..error = ""
//           ..success = false
//           ..data = null
//         );
//
//     //    final date = await _repository.LoginSocial(event.Token!,event.fcmToken!);
// print(date);
//
//         yield state.rebuild((b) => b
//           ..isLoading = false
//           ..error = ""
//           ..success= true
//           ..data.replace(date)
//         );
//
//       } catch (e) {
//         print('get Error $e');
//         yield state.rebuild((b) => b
//           ..isLoading = false
//           ..error = "Something went wrong"
//           ..success = false
//           ..data = null
//         );
//       }
//     }
//
//     if (event is LoginGoogle) {
//       try {
//
//         yield state.rebuild((b) => b
//           ..isLoading = true
//           ..error = ""
//           ..success = false
//           ..data = null
//         );
//
//         final date = await _repository.GoogleLogin(event.Email!,event.name!, event.fcmToken!,event.avatar!);
//         print(date);
//         yield state.rebuild((b) => b
//           ..isLoading = false
//           ..error = ""
//           ..success= true
//           ..data.replace(date)
//         );
//
//       } catch (e) {
//         print('get Error $e');
//         yield state.rebuild((b) => b
//           ..isLoading = false
//           ..error = "Something went wrong"
//           ..success = false
//           ..data = null
//         );
//       }
//     }


  }
}
