// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../web_core/error/errors.dart';
import '../../domain/entity/email_support_entity.dart';
import '../../domain/use_cases/email_support_use_cases.dart';

part 'email_support_event.dart';
part 'email_support_state.dart';


const String NETWORK_ERROR_MESSAGE = "Slow or no internet connection";
const String SERVER_ERROR_MESSAGE = "There's been a problem connecting to goyerv. Please try again later";



class EmailSupportBloc extends Bloc<EmailSupportEvent, EmailSupportState> {

  final SendSupportTicket sendSupportTicket;
  
  EmailSupportBloc(this.sendSupportTicket) : super(const EmailSupportInitial()) {
    on<EmailSupportEvent>((event, emit) async {
      if (event is SendSupportTicketEvent) {
        emit(const EmailSupportLoading());

        final sendSupportTicketEither = await sendSupportTicket.get(Parameters(email: event.email, issue: event.issue, images: event.images));

        emit(sendSupportTicketEither.fold((l) => Err(mapErrorsToErrorMessage(l)), (r) => EmailSupportLoaded(r)));

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
