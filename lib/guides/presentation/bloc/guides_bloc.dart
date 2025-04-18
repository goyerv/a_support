// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../web_core/error/errors.dart';
import '../../domain/entity/guides_entity.dart';
import '../../domain/use_cases/guides_use_cases.dart';

part 'guides_event.dart';
part 'guides_state.dart';


const String NETWORK_ERROR_MESSAGE = "Slow or no internet connection";
const String SERVER_ERROR_MESSAGE = "There's been a problem connecting to goyerv. Please try again later";



class GuidesBloc extends Bloc<GuidesEvent, GuidesState> {

  final GuidesSearch guidesSearch;
  final SupportSearch supportSearch;
  final RateGuide rateGuide;

  GuidesBloc(this.guidesSearch, this.supportSearch, this.rateGuide) : super(const GuidesInitial()) {
    on<GuidesEvent>((event, emit) async {
      if (event is  GuidesSearchEvent) {
        emit(const GuidesLoading());
        final guidesSearchEither = await guidesSearch.get(Parameters(query: event.query));

        emit(guidesSearchEither.fold((l) => Err(mapErrorsToErrorMessage(l)), (r) => GuidesLoaded(r)));

      } else 
      if (event is SupportSearchEvent) {
        emit(const GuidesLoading());

        final supportSearchEither = await supportSearch.get(Parameters(query: event.query));

        emit(supportSearchEither.fold((l) => Err(mapErrorsToErrorMessage(l)), (r) => GuidesLoaded(r)));
      
      } else 
      if (event is RateGuideEvent) {
        final rateGuideEvent = await rateGuide.get(Parameters(guideID: event.guideID, isHelpful: event.isHelpful));

        emit(rateGuideEvent.fold((l) => Err(mapErrorsToErrorMessage(l)), (r) => GuidesLoaded(r)));
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
