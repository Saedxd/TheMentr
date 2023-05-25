// ignore_for_file: file_names


import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:thementr/Core/Classes/Classes.dart';
import 'package:thementr/Data/repository/irepository.dart';

import 'SignUp_event.dart';
import 'SignUp_state.dart';


class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {

  IRepository _repository;

  SignUpBloc(this._repository) : super(SignUpState.initail());

  @override
  SignUpState get initialState => SignUpState.initail();

  @override
  Stream<SignUpState> mapEventToState(SignUpEvent event,) async* {


    if (event is PostSignUp) {
      try {
        yield state.rebuild((b) =>
        b
          ..isLoading = true
          ..error = ""
          ..success = false
        );

        final date = await _repository.SignUp(
          event.Email!,
          event.password!,
          event.first_name!,
          event.last_name!,
        );
        print('get Success data ${date}');
        yield state.rebuild((b) =>
        b
          ..isLoading = false
          ..error = ""
          ..success = true
          ..User.replace(date)

        );
      } catch (e) {
        print('get Error $e');
        yield state.rebuild((b) =>
        b
          ..isLoading = false
          ..error = "Something went wrong"
          ..success = false
          ..User = null
        );
      }
    }
    if (event is ChangeRoleValue) {
      try {
        yield state.rebuild((b) =>
        b
          ..SelectedRoleValue = event.value!
        );

      } catch (e) {
        print('get Error $e');
      }
    }
    if (event is ChangeInterestValue) {
      try {
        yield state.rebuild((b) =>
        b
          ..SelectedInterestValue = event.value!
        );

      } catch (e) {
        print('get Error $e');
      }
    }
    if (event is SelectItemInList) {
      try {
        yield state.rebuild((b) =>
        b..isLoading = true
          ..SelectedListItems![event.Index!] = !state.SelectedListItems![event.Index!]
        );
        yield state.rebuild((b) =>
        b..isLoading = false
        );

      } catch (e) {
        print('get Error $e');
      }
    }
    if (event is ChangeCharLength) {
      try {
        yield state.rebuild((b) =>
        b
          ..CharLength = event.value!
        );

      } catch (e) {
        print('get Error $e');
      }
    }
    if (event is MentorInfoStatusChange) {
      try {
        yield state.rebuild((b) =>
        b..isLoading = true
          ..MentorInfoListAdded![event.Index!] = event.value!
        );
        yield state.rebuild((b) =>
        b..isLoading = false
        );

      } catch (e) {
        print('get Error $e');
      }
    }
    if (event is ChangeSelectedInInterest) {
      try {

        yield state.rebuild((b) =>
        b..isLoading = true
          ..SelectedInterestItems![event.Index!] =event.value!
        );
        yield state.rebuild((b) =>
        b..isLoading = false
        );

        // if (event.value! ==false)
        // state.SelectedIntersetIDs!.remove(event.ID);
        // else
        // state.SelectedIntersetIDs!.add(event.ID!);
        //

      } catch (e) {
        print('get Error $e');
      }
    }
    if (event is ValidateSkill_List) {
      try {

        yield state.rebuild((b) =>
        b..ValidateSkill_List = true
        );




        // if (event.value! ==false)
        // state.SelectedIntersetIDs!.remove(event.ID);
        // else
        // state.SelectedIntersetIDs!.add(event.ID!);
        //

      } catch (e) {
        print('get Error $e');
      }
    }
    if (event is AddSkill_List) {
      try {
        List<String> Skills_List =[
          "Add Hobbies",
          "Add Occupation",
          "Add Location",
          "Add Birth Date",
          "Add Years Of Experience"
          ,"Link to work portfolio"
        ];
        List<String> Screen_Info =[
          "What do you like? We'd like to learn more about you.",
          "What is your occupation or profession?",
          "Add Location",
          "",
          "Input years of experience"
          ,"Paste Links to Work portfolio"
        ];
        List<String> SkillsImage_List =[
          "Assets/images/Vector.svg",
          "Assets/images/Vector2.svg",
          // "Assets/images/Vector3.svg",
          "Assets/images/location.svg",
          "Assets/images/Vector4.svg",
          "Assets/images/Vector6.svg",
          "Assets/images/Vector12.svg",

        ];
        yield state.rebuild((b) =>
        b..isLoading = true
        );
       for(int i=0;i<Skills_List.length;i++){
         state.Skill_List!.add(
             Skills(Screen_Info[i],Skills_List[i],Skills_List[i],SkillsImage_List[i])
         );
       }

        yield state.rebuild((b) =>
        b..isLoading = false
        );



      } catch (e) {
        print('get Error $e');
      }
    }
    if (event is GetRoles) {
      try {
        yield state.rebuild((b) =>
        b ..isLoading = true
          ..error = ""
          ..success = false
          ..Roles = null
        );

        final date = await _repository.GetRoles();

        print('get Success data ${date}');
        yield state.rebuild((b) =>
        b
          ..isLoading = false
          ..error = ""
          ..success = true
          ..Roles.replace(date)
        );
        for(int i =0;i<state.Roles!.roles!.length;i++){
          state.Roles_Values!.add(state.Roles!.roles![i].name!);
        }
        if (state.Roles!.roles!.length!=0)
        yield state.rebuild((b) =>
        b
          ..SelectedRoleValue = state.Roles!.roles![0].name!
        );

        yield state.rebuild((b) =>
        b
          ..isLoading = false
          ..error = ""
          ..success = true

        );
      } catch (e) {
        print('get Error $e');
        yield state.rebuild((b) =>
        b
          ..isLoading = false
          ..error = "Something went wrong"
          ..success = false
          ..Roles = null
        );
      }
    }
    if (event is GetInterests) {
      try {
        yield state.rebuild((b) =>
        b ..isLoading = true
          ..error = ""
          ..success = false
          ..Interests = null
        );


        final date = await _repository.GetInterest();



        print('get Success data ${date}');
        yield state.rebuild((b) =>
        b
          ..Interests.replace(date)
        );
        for(int i =0;i<state.Interests!.interestList!.length;i++){
          state.Interest_VaLues!.add(state.Interests!.interestList![i].name!);
        }
        if (state.Interests!.interestList!.length!=0)
          yield state.rebuild((b) =>
          b
            ..SelectedInterestValue = state.Interests!.interestList![0].name!
          );

        yield state.rebuild((b) =>
        b
          ..isLoading = false
          ..error = ""
          ..success = true
        );
      } catch (e) {
        print('get Error $e');
        yield state.rebuild((b) =>
        b
          ..isLoading = false
          ..error = "Something went wrong"
          ..success = false
          ..Interests = null
        );
      }
    }

    if (event is getSkills) {
      try {
        yield state.rebuild((b) =>
        b ..isLoading = true
          ..error = ""
          ..success = false
          ..Skillss = null
        );


        final date = await _repository.GetSkills(event.interest!);



        print('get Success data ${date}');
        yield state.rebuild((b) =>
        b
          ..Skillss.replace(date)
        );
        for(int i =0;i<state.Skillss!.skills!.length;i++){
          state.Skills_VaLues!.add(state.Skillss!.skills![i].name!);
        }
        yield state.rebuild((b) =>
        b
          ..isLoading = false
          ..error = ""
          ..success = true
        );
      } catch (e) {
        print('get Error $e');
        yield state.rebuild((b) =>
        b
          ..isLoading = false
          ..error = "Something went wrong"
          ..success = false
          ..Skillss = null
        );
      }
    }

    if (event is GetAllCountries) {
      try {
        yield state.rebuild((b) =>
        b ..isLoading = true
          ..error = ""
          ..success = false
          ..OldValues_isLoading = true
          ..GetAllCountries = null
        );


        final date = await _repository.GetAllCountries();
        yield state.rebuild((b) =>
        b ..GetAllCountries.replace(date)

        );

       for(int i =0;i<state.GetAllCountries!.countries!.length;i++){
         state.Countries!.add(state.GetAllCountries!.countries![i].name!);
         for(int j=0;j<state.GetAllCountries!.countries![i].states!.length;j++){
           state.Cities!.add(state.GetAllCountries!.countries![i].states![j].name!);
           state.Country_Cities!.add(state.GetAllCountries!.countries![i].states![j].name!);
         }
       }
       String Country = state.GetAllCountries!.countries![0].name!;
       String City = state.GetAllCountries!.countries![0].states![0].name!;
        yield state.rebuild((b) =>
        b
          ..SelectedCityValue = City.isNotEmpty?City:""
        );
        yield state.rebuild((b) =>
        b
          ..SelectedCountryValue = Country.isNotEmpty?Country:""
        );
        yield state.rebuild((b) =>
        b ..OldValues_isLoading = false
        );

        yield state.rebuild((b) =>
        b..isLoading = false
          ..error = ""
          ..success = true
        );
       print(state.Countries!);
       print(state.Cities!);


        print('get Success data ${date}');
      } catch (e) {
        print('get Error $e');
        yield state.rebuild((b) =>
        b
          ..isLoading = false
          ..error = "Something went wrong"
          ..success = false
          ..GetAllCountries = null
        );
      }
    }
    if (event is ChangeCountryCitiesList) {
      try {
        yield state.rebuild((b) =>
        b
          ..SelectedCityValue = ""
        );

        state.Country_Cities!.clear();
        for(int i=0;i<state.GetAllCountries!.countries!.length;i++){
          if(event.Country==state.GetAllCountries!.countries![i].name){
            for(int j=0;j<state.GetAllCountries!.countries![i].states!.length;j++){
              state.Country_Cities!.add(state.GetAllCountries!.countries![i].states![j].name!);
            }
          }
        }






      }catch(e){
        print('get Error $e');

      }
    }
    if (event is ChangeCountryValue) {
      try {
        yield state.rebuild((b) =>
        b..OldValues_isLoading = true
        );


        yield state.rebuild((b) =>
        b
          ..SelectedCountryValue = event.Value
        );

        yield state.rebuild((b) =>
        b..OldValues_isLoading = false

        );


      }catch(e){
        print('get Error $e');

      }
    }
    if (event is ChangeCityValue) {
      try {
        yield state.rebuild((b) =>
        b ..OldValues_isLoading = true
        );
        yield state.rebuild((b) =>
        b ..OldValues_isLoading = true
          ..SelectedCityValue = event.Value
        );

        yield state.rebuild((b) =>
        b  ..OldValues_isLoading = false
        );

      }catch(e){
        print('get Error $e');

      }
    }

    if (event is GetOccupations) {
      try {
        yield state.rebuild((b) =>
        b ..isLoading = true
          ..error = ""
          ..success = false
          ..GetOccupations = null
        );


        final date = await _repository.GetOccupations(event.Keyword!);

        yield state.rebuild((b) =>
        b ..GetOccupations.replace(date)
          ..isLoading = false
          ..error = ""
          ..success = true
        );


        print('get Success data ${date}');
   
        
      } catch (e) {
        print('get Error $e');
        yield state.rebuild((b) =>
        b
          ..isLoading = false
          ..error = "Something went wrong"
          ..success = false
          ..GetOccupations = null
        );
      }
    }

  }
}
