// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'package:equatable/equatable.dart';

abstract class Errors extends Equatable{
  final List properties;

  const Errors([ this.properties = const <dynamic>[]]);

  @override
  List<Object> get props => [properties];
}

class ServerError extends Errors {
  const ServerError();
}

class CacheError extends Errors {
  const CacheError();
}

class NetWorkError extends Errors {
  const NetWorkError();
}

class InvalidInputError extends Errors {
  const InvalidInputError();
}

class UnexpectedError extends Errors {
  const UnexpectedError();
}