// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







part of 'package:goyerv_support_web_app/dependency_injections.dart';

Future<void> initEmailSupport() async {

  // Data sources
  sl.registerLazySingleton<EmailSupportRemoteDataSource>(() => EmailSupportRemoteDataSourceImpl());

  // Repository
  sl.registerLazySingleton<EmailSupportRepositoryContracts>(() => EmailSupportRepositoryContractsImpl());

  // Use cases
  sl.registerSingleton<SendSupportTicket>(SendSupportTicket(sl()));

  // Bloc
  sl.registerSingleton<EmailSupportBloc>(EmailSupportBloc(sl()));



}