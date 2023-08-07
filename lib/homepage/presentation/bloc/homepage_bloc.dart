// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../web_core/error/errors.dart';
import '../../domain/entity/homepage_entity.dart';
import '../../domain/use_cases/homepage_use_cases.dart';

part 'homepage_event.dart';
part 'homepage_state.dart';


const String NETWORK_ERROR_MESSAGE = 'No network connection at this time. Please connect to a network and try again';
const String SERVER_ERROR_MESSAGE = 'There\'s been a problem connecting to goyerv. Please try again later';



class HomepageBloc extends Bloc<HomepageEvent, HomepageState> {

  final QuickSearch quickSearch;


  HomepageBloc(this.quickSearch) : super(const HomepageInitial()) {
    on<HomepageEvent>((event, emit) async {
      if (event is QuickSearchEvent) {
        emit(const HomepageLoading());
        final quickSearchEither = await quickSearch.get(Parameters(query: event.query));

        emit(quickSearchEither.fold((l) => Err(mapErrorsToErrorMessage(l)), (r) => HomepageLoaded(r)));
      }
    });
  }




  String? mapErrorsToErrorMessage(Errors errors) {

    switch (errors.runtimeType) {
      case ServerError: 
        return  SERVER_ERROR_MESSAGE;
      
      case NetWorkError:
        return NETWORK_ERROR_MESSAGE;
      
      default:
        return null;
    }
    
  }


  
}
