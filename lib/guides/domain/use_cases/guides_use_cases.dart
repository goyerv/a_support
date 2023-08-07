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
    return await repositoryContracts.guidesSearch(parameters.query, parameters.isFAQ,);
  }

  @override 
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);

}

class FetchGuides extends UseCases<GuidesEntity, Parameters> {

  final GuidesRepositoryContracts repositoryContracts;

  FetchGuides(this.repositoryContracts);

  @override
  Future<Either<Errors, GuidesEntity>> get(Parameters parameters) async {
    return await repositoryContracts.fetchGuides(parameters.isFAQ, parameters.locale);
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
  final bool? isFAQ;
  final String? locale;
  final bool? isHelpful;

  const Parameters({this.query, this.guideID, this.isFAQ, this.locale, this.isHelpful});

  @override 
  List<Object?> get props => [query, guideID, isFAQ, locale, isHelpful];

}