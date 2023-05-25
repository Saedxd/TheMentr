
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:thementr/Core/Classes/Classes.dart';
import 'package:thementr/Data/repository/irepository.dart';
import 'package:thementr/Data/repository/irepository.dart';
import 'package:thementr/UI/Auth/LinkToPortfolio_Screen/bloc/LinkToPortfolio_state.dart';
import 'LinkToPortfolio_event.dart';



class LinkToPortfolioBloc extends Bloc<LinkToPortfolioEvent, LinkToPortfolioState> {

  IRepository _repository;

  LinkToPortfolioBloc(this._repository) : super(LinkToPortfolioState.initail()) ;

  @override
  LinkToPortfolioState get initialState => LinkToPortfolioState.initail();

  @override
  Stream<LinkToPortfolioState> mapEventToState(
      LinkToPortfolioEvent event,
      ) async* {

    if (event is AddForm) {
      try {

        yield state.rebuild((b) => b
          ..isLoading = true
        );

        state.Forms!.add(PortfolioForm());

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
