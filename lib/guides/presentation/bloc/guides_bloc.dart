// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../web_core/error/errors.dart';
import '../../domain/entity/guides_entity.dart';
import '../../domain/use_cases/guides_use_cases.dart';

part 'guides_event.dart';
part 'guides_state.dart';


const String NETWORK_ERROR_MESSAGE = 'No network connection at this time. Please connect to a network and try again';
const String SERVER_ERROR_MESSAGE = 'There\'s been a problem connecting to goyerv. Please try again later';



class GuidesBloc extends Bloc<GuidesEvent, GuidesState> {

  final GuidesSearch guidesSearch;
  final FetchGuides fetchGuides;
  final RateGuide rateGuide;

  GuidesBloc(this.guidesSearch, this.fetchGuides, this.rateGuide) : super(const GuidesInitial()) {
    on<GuidesEvent>((event, emit) async {
      if (event is  GuidesSearchEvent) {
        emit(const GuidesLoading());
        final guidesSearchEither = await guidesSearch.get(Parameters(query: event.query, isFAQ: event.isFAQ));

        emit(guidesSearchEither.fold((l) => Err(mapErrorsToErrorMessage(l)), (r) => GuidesLoaded(r)));

      } else 
      if (event is FetchGuidesEvent) {
        emit(const GuidesLoading());

        final fetchGuidesEither = await fetchGuides.get(Parameters(isFAQ: event.isFAQ, locale: event.locale));

        emit(fetchGuidesEither.fold((l) => Err(mapErrorsToErrorMessage(l)), (r) => GuidesLoaded(r)));
      
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
