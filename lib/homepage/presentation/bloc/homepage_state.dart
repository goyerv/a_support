// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







part of 'homepage_bloc.dart';

abstract class HomepageState extends Equatable {

  const HomepageState();
  
  @override
  List<Object?> get props => [];

}

class HomepageInitial extends HomepageState {

  const HomepageInitial();

  @override 
  List<Object?> get props => [];

}

class HomepageLoading extends HomepageState {

  const HomepageLoading();

  @override 
  List<Object?> get props => [];

}

class HomepageLoaded extends HomepageState {

  final HomepageEntity homepageEntity;

  const HomepageLoaded(this.homepageEntity);

  @override 
  List<Object?> get props => [homepageEntity];
  
}

class Err extends HomepageState {

  final String? message;
  
  const Err(this.message);

  @override 
  List<Object?> get props => [message];
  
}