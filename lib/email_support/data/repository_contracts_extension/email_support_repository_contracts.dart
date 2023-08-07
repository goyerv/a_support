// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'package:goyerv_support_web_app/web_core/error/errors.dart';


import 'package:dartz/dartz.dart';

import '../../../web_core/error/exceptions.dart';
import '../../../web_core/platform/network.dart';
import '../../domain/entity/email_support_entity.dart';
import '../../domain/repository_contracts/email_support_repository_contracts.dart';
import '../data_sources/remote/email_support_remote_data_source.dart';
import '../models/email_support_model.dart';

typedef getEmailSupportData = Future<EmailSupportModel> Function();

class EmailSupportRepositoryContractsImpl implements EmailSupportRepositoryContracts {

  final EmailSupportRemoteDataSource remoteDataSource;
  final Network network;

  EmailSupportRepositoryContractsImpl(this.remoteDataSource, this.network);

  @override
  Future<Either<Errors, EmailSupportEntity>> sendSupportTicket(String? email, String? issue, List<String>? images) async {
    return await _getEmailSupportData(() => remoteDataSource.sendSupportTicket(email, issue, images));
  }



  Future<Either<Errors, EmailSupportEntity>> _getEmailSupportData(getEmailSupportData getEmailSupportData) async {

    if (await network.isConnected) {
      try {
        final remoteEmailSupportData  = await getEmailSupportData();
        return Right(remoteEmailSupportData );

      } on ServerException {
        return const Left(ServerError());
      
      }
    } else {
      return const Left(NetWorkError());
    
    }

  }

}