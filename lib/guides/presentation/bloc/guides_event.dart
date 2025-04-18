// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







part of 'guides_bloc.dart';

abstract class GuidesEvent extends Equatable {
  const GuidesEvent({List props = const <dynamic>[]});
}


class SupportSearchEvent extends GuidesEvent {

  final String? query;

  const SupportSearchEvent(this.query);

  @override 
  List<Object?> get props => [query];
  
}


class GuidesSearchEvent extends GuidesEvent {

  final String? query;

  const GuidesSearchEvent(this.query);

  @override 
  List<Object?> get props => [query];
  
}

class RateGuideEvent extends GuidesEvent {

  final String? guideID;
  final bool? isHelpful;

  const RateGuideEvent(this.guideID, this.isHelpful);

  @override 
  List<Object?> get props => [guideID, isHelpful];
  
}