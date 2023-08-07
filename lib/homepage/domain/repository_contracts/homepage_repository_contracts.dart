// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'package:dartz/dartz.dart';
import 'package:goyerv_support_web_app/homepage/domain/entity/homepage_entity.dart';

import '../../../web_core/error/errors.dart';

abstract class HomepageRepositoryContracts {
  Future<Either<Errors, HomepageEntity>> quickSearch(String? query);
}