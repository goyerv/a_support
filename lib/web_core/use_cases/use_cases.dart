// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import '../error/errors.dart';

abstract class UseCases<Type, Parameters> {
  // Future<Either<Errors, Either<void, Type>>> post(Parameters parameters);
  Future<Either<Errors, Type>> post(Parameters parameters);
  Future<Either<Errors, Type>> get(Parameters parameters);
  Future<Either<Errors, Type>> delete(Parameters parameters);
  Future<Either<Errors, Type>> create(Parameters parameters);
  Future<Either<Errors, Type>> update(Parameters parameters);
}

class NoParams extends Equatable {  
  @override
  noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}