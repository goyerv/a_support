// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../web_core/error/errors.dart';
import '../../../web_core/use_cases/use_cases.dart';
import '../entity/guides_entity.dart';
import '../repository_contracts/guides_repository_contracts.dart';


class GuidesSearch extends UseCases<GuidesEntity, Parameters> {

  final GuidesRepositoryContracts repositoryContracts;

  GuidesSearch(this.repositoryContracts);

  @override
  Future<Either<Errors, GuidesEntity>> get(Parameters parameters) async {
    return await repositoryContracts.guidesSearch(parameters.query,);
  }

  @override 
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);

}

class SupportSearch extends UseCases<GuidesEntity, Parameters> {

  final GuidesRepositoryContracts repositoryContracts;

  SupportSearch(this.repositoryContracts);

  @override
  Future<Either<Errors, GuidesEntity>> get(Parameters parameters) async {
    return await repositoryContracts.supportSearch(parameters.query);
  }

  @override 
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);

}

class RateGuide extends UseCases<GuidesEntity, Parameters> {

  final GuidesRepositoryContracts repositoryContracts;

  RateGuide(this.repositoryContracts);

  @override
  Future<Either<Errors, GuidesEntity>> get(Parameters parameters) async {
    return await repositoryContracts.rateGuide(parameters.guideID, parameters.isHelpful);
  }

  @override 
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);

}







class Parameters extends Equatable {
  
  final String? query;
  final String? guideID;
  final bool? isHelpful;

  const Parameters({this.query, this.guideID, this.isHelpful});

  @override 
  List<Object?> get props => [query, guideID, isHelpful];

}