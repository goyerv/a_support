// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







part of 'guides_bloc.dart';

abstract class GuidesEvent extends Equatable {
  const GuidesEvent({List props = const <dynamic>[]});
}


class FetchGuidesEvent extends GuidesEvent {

  final String? locale;
  final bool? isFAQ;

  const FetchGuidesEvent( this.locale, this.isFAQ);

  @override 
  List<Object?> get props => [locale, isFAQ];
  
}


class GuidesSearchEvent extends GuidesEvent {

  final String? query;
  final bool? isFAQ;

  const GuidesSearchEvent(this.query, this.isFAQ);

  @override 
  List<Object?> get props => [query, isFAQ];
  
}

class RateGuideEvent extends GuidesEvent {

  final String? guideID;
  final bool? isHelpful;

  const RateGuideEvent(this.guideID, this.isHelpful);

  @override 
  List<Object?> get props => [guideID, isHelpful];
  
}