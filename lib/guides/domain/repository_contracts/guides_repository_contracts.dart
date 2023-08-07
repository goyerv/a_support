// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'package:dartz/dartz.dart';

import '../../../web_core/error/errors.dart';
import '../entity/guides_entity.dart';


abstract class GuidesRepositoryContracts {
  Future<Either<Errors, GuidesEntity>> guidesSearch(String? query, bool? isFAQ);
  Future<Either<Errors, GuidesEntity>> fetchGuides(bool? isFAQ, String? locale);
  Future<Either<Errors, GuidesEntity>> rateGuide(String? guideID, bool? isHelpful);
}