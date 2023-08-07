// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'dart:io';
import 'package:shared_preferences/shared_preferences.dart';

const String platformKey = "platform_Key";
const String languageKey = 'language_Key'; 

abstract class LocalesPreferences {
  Future<List<String>> getPlatformLocale();
  Future<void> setPlatformLocale(List<String> locale);

  Future<String> getLanguageKey();
  Future<void> setLanguageKey(String language);
}

class LocalesPreferencesImpl implements LocalesPreferences {

  final SharedPreferences sharedPreferences;

  LocalesPreferencesImpl(this.sharedPreferences); // At the end, use VSCode's reges to remove the required keyword.

  @override
  Future<List<String>> getPlatformLocale() async {
    final locale = sharedPreferences.getStringList(platformKey);

    if (locale == null) {
      if (Platform.localeName.contains('.UTF-8', 5) || Platform.localeName.contains('.UTF-8', 6) || Platform.localeName.contains('_.UTF-8')) {
        var firstCut = Platform.localeName.split('.').first;
        return [firstCut.split('_').first, firstCut.split('_').last];
      
      } else 
      if (Platform.localeName.contains('_', 2) || Platform.localeName.contains('_', 3) || Platform.localeName.contains('_') && !(Platform.localeName.contains('.UTF-8', 5) || Platform.localeName.contains('.UTF-8', 6) || Platform.localeName.contains('.UTF-8')) ) {
        return [Platform.localeName.split('_').first, Platform.localeName.split('_').last];
      
      } else 
      if ((Platform.localeName.contains('.UTF-8', 5) && Platform.localeName.contains('.UTF-8', 6) && Platform.localeName.contains('_.UTF-8') && Platform.localeName.contains('_', 2) && Platform.localeName.contains('_', 3) && Platform.localeName.contains('_') )) {
        return [Platform.localeName, ''];
      }
    
    } return locale!; 
  }
  
  @override
  Future<void> setPlatformLocale(List<String> locale) async {
    // sharedPreferences.setString(platformKey, locale);
    sharedPreferences.setStringList(platformKey, locale);
  }
  
  @override
  Future<String> getLanguageKey() async {
    return sharedPreferences.getString(languageKey) ?? 'English';
  }
  
  @override
  Future<void> setLanguageKey(String language) async {
    sharedPreferences.setString(languageKey, language);
  }


}