// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'package:dartz/dartz.dart';

import '../../../web_core/error/errors.dart';
import '../../../web_core/error/exceptions.dart';
import '../../../web_core/platform/network.dart';
import '../../domain/entity/guides_entity.dart';
import '../../domain/repository_contracts/guides_repository_contracts.dart';
import '../data_sources/remote/guides_remote_data_source.dart';
import '../models/guides_model.dart';

typedef getGuidesData = Future<GuidesModel> Function();

class GuidesRepositoryContractsImpl implements GuidesRepositoryContracts {


  GuidesRepositoryContractsImpl();

  final GuidesRemoteDataSource remoteDataSource = GuidesRemoteDataSourceImpl();
  final Network network = NetworkImpl();

  @override
  Future<Either<Errors, GuidesEntity>> supportSearch(String? query)async {
    return await _getGuidesData(() => remoteDataSource.supportSearch(query));
  }
  
  @override
  Future<Either<Errors, GuidesEntity>> guidesSearch(String? query) async {
    return await _getGuidesData(() => remoteDataSource.guidesSearch(query));
  }

  @override
  Future<Either<Errors, GuidesEntity>> rateGuide(String? guideID, bool? isHelpful) async {
    return await _getGuidesData(() => remoteDataSource.rateGuide(guideID, isHelpful));
  }



  Future<Either<Errors, GuidesEntity>> _getGuidesData(getGuidesData getGuidesData) async {

    if (await network.isConnected) {
      try {
        final remoteGuidesData  = await getGuidesData();
        return Right(remoteGuidesData );

      } on ServerException {
        return const Left(ServerError());
      
      }
    } else {
      return const Left(NetWorkError());
    
    }

  }
  
  


}