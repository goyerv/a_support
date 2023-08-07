// Copyright (c) 2022 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor








import 'package:shared_preferences/shared_preferences.dart';

import '../error/exceptions.dart';

const String authStateKey = "auth_state_key";


abstract class AuthState {
  Future<bool> getAuthState();
  Future<void> setAuthState(bool state);
}

class AuthStateImpl implements AuthState {

  final SharedPreferences sharedPreferences;

  AuthStateImpl(this.sharedPreferences);
    
  @override
  Future<bool> getAuthState() async {

    final state = sharedPreferences.getBool(authStateKey);

    if (state != null) {
      return state;
    
    } else {
      throw CacheException();
    
    }
  }

  @override
  Future<void> setAuthState(bool state) async {

    try {
      await sharedPreferences.setBool(authStateKey, state);
    
    } on CacheException {
      throw CacheException();
    
    }
  }
 
}