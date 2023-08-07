// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







part of 'package:goyerv_support_web_app/dependency_injections.dart';

Future<void> initGuides() async {

  // Data sources
  sl.registerLazySingleton<GuidesRemoteDataSource>(() => GuidesRemoteDataSourceImpl(sl(), sl()));

  // Use cases
  sl.registerLazySingleton(() => FetchGuides(sl()));
  sl.registerLazySingleton(() => GuidesSearch(sl()));
  sl.registerLazySingleton(() => RateGuide(sl()));

  // Repository
  sl.registerLazySingleton<GuidesRepositoryContracts>(() => GuidesRepositoryContractsImpl(sl(), sl()));


  // Bloc
  sl.registerFactory(() => GuidesBloc(sl(), sl(), sl()));


  // External
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
  sl.registerLazySingleton(() => HttpClient());
  sl.registerLazySingleton(() => InternetConnectionChecker());


}
