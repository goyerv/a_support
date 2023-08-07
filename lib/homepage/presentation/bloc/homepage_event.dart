// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







part of 'homepage_bloc.dart';

abstract class HomepageEvent extends Equatable {
  const HomepageEvent({List props = const <dynamic>[]});
}


class QuickSearchEvent extends HomepageEvent {

  final String? query;

  const QuickSearchEvent(this.query);

  @override 
  List<Object?> get props => [query];
  
}