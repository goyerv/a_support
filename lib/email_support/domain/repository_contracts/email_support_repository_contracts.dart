// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'package:dartz/dartz.dart';

import '../../../web_core/error/errors.dart';
import '../entity/email_support_entity.dart';

abstract class EmailSupportRepositoryContracts {
  Future<Either<Errors, EmailSupportEntity>> sendSupportTicket(String? email, String? issue, List<String>? images);
}