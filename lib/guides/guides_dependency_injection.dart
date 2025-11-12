// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







part of 'package:goyerv_support_web_app/dependency_injections.dart';

Future<void> initGuides() async {

  // Data sources
  sl.registerLazySingleton<GuidesRemoteDataSource>(() => GuidesRemoteDataSourceImpl());

  // Repository
  sl.registerLazySingleton<GuidesRepositoryContracts>(() => GuidesRepositoryContractsImpl());

  // Use cases
  sl.registerSingleton<SupportSearch>(SupportSearch(sl()));
  sl.registerSingleton<GuidesSearch>(GuidesSearch(sl()));
  sl.registerSingleton<RateGuide>(RateGuide(sl()));

  // Bloc
  sl.registerSingleton<GuidesBloc>(GuidesBloc(sl(), sl(), sl()));

}
