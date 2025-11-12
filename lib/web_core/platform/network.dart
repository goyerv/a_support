// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'package:internet_connection_checker/internet_connection_checker.dart';



abstract class Network {
  Future<bool> get isConnected;
}

class NetworkImpl implements Network {
  
  final InternetConnectionChecker connectionChecker = InternetConnectionChecker.createInstance();

  NetworkImpl();

  @override 
  Future<bool> get isConnected => connectionChecker.hasConnection;

}