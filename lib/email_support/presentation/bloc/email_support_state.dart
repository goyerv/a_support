// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







part of 'email_support_bloc.dart';

abstract class EmailSupportState extends Equatable {

  const EmailSupportState();
  
  @override
  List<Object?> get props => [];

}

class EmailSupportInitial extends EmailSupportState {

  const EmailSupportInitial();
  
  @override
  List<Object?> get props => [];

}

class EmailSupportLoading extends EmailSupportState {

  const EmailSupportLoading();
  
  @override
  List<Object?> get props => [];

}

class EmailSupportLoaded extends EmailSupportState {

  final EmailSupportEntity emailSupportEntity;

  const EmailSupportLoaded(this.emailSupportEntity);
  
  @override
  List<Object?> get props => [emailSupportEntity];

}


class Err extends EmailSupportState {

  final String? message;
  
  const Err(this.message);

  @override 
  List<Object?> get props => [message];
  
}