// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../web_core/error/errors.dart';
import '../../../web_core/use_cases/use_cases.dart';
import '../entity/email_support_entity.dart';
import '../repository_contracts/email_support_repository_contracts.dart';





class SendSupportTicket extends UseCases<EmailSupportEntity, Parameters> {

  final EmailSupportRepositoryContracts repositoryContracts;

  SendSupportTicket(this.repositoryContracts);

  @override
  Future<Either<Errors, EmailSupportEntity>> get(Parameters parameters) async {
    return await repositoryContracts.sendSupportTicket(parameters.email, parameters.issue, parameters.images);
  }

  @override 
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);

}







class Parameters extends Equatable {

  final String? email;
  final String? issue;
  final List<String>? images;

  const Parameters({this.email, this.issue, this.images});

  @override 
  List<Object?> get props => [email, issue, images];
  
}