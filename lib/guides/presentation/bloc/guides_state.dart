// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







part of 'guides_bloc.dart';

abstract class GuidesState extends Equatable {

  const GuidesState();
  
  @override
  List<Object?> get props => [];

}

class GuidesInitial extends GuidesState {

  const GuidesInitial();

  @override 
  List<Object?> get props => [];

}

class GuidesLoading extends GuidesState {

  const GuidesLoading();

  @override 
  List<Object?> get props => [];

}

class GuidesLoaded extends GuidesState {

  final GuidesEntity guidesEntity;

  const GuidesLoaded(this.guidesEntity);

  @override 
  List<Object?> get props => [guidesEntity];
  
}

class Err extends GuidesState {

  final String? message;
  
  const Err(this.message);

  @override 
  List<Object?> get props => [message];
  
}