// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







part of 'email_support_bloc.dart';

abstract class EmailSupportEvent extends Equatable {
  const EmailSupportEvent({List props = const <dynamic>[]});
}



class SendSupportTicketEvent extends EmailSupportEvent {

  final String? email;
  final String? issue;
  final List<String>? images;

  const SendSupportTicketEvent(this.email, this.issue, this.images);

  @override 
  List<Object?> get props => [email, issue, images];
  
}