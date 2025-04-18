// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'package:universal_io/io.dart'; 
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


  LocalesPreferencesImpl(); 

  @override
  Future<List<String>> getPlatformLocale() async {
    

    final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();


    final locale = sharedPreferences.getStringList(platformKey);


    if (locale == null) {
      if (Platform.localeName.contains('_') && Platform.localeName.contains('.')) {
        var firstCut = Platform.localeName.split('.').first;
        return [firstCut.split('_').first, firstCut.split('_').last];
      
      } else 
      if (Platform.localeName.contains('_')) {
        return [Platform.localeName.split('_').first, Platform.localeName.split('_').last];
      }
    
    } return locale!; 
  }
  


  @override
  Future<void> setPlatformLocale(List<String> locale) async {

    final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    sharedPreferences.setStringList(platformKey, locale);

  }
  
  @override
  Future<String> getLanguageKey() async {

    final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    return Future(() => sharedPreferences.getString(languageKey) ?? 'English');

  }
  

  @override
  Future<void> setLanguageKey(String language) async {

    final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    sharedPreferences.setString(languageKey, language);

  }


}