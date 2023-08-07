// Copyright (c) 2022 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'package:shared_preferences/shared_preferences.dart';

import '../error/exceptions.dart';

const String loginState = "login_state_key";

abstract class AutoLogin {
  Future<bool> getLoginState();
  Future<void> setLoginState(bool? bool);
}

class AutoLoginImpl implements AutoLogin {
  
  final SharedPreferences sharedPreferences;

  const AutoLoginImpl(this.sharedPreferences);

  @override
  Future<bool> getLoginState() async {

    final autoLog = sharedPreferences.getBool(loginState);

    if (autoLog != null) {
      return Future<bool>.value(autoLog);
    
    } else {
      throw CacheException();
    
    } 
  }

  @override
  Future<void> setLoginState(bool? bool) async {
    try {
      await sharedPreferences.setBool(loginState, bool ?? false);
    
    } on Exception {
      throw CacheException();
    
    }

  }
  
}