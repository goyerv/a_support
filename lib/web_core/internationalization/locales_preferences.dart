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
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();

    final stored = sharedPreferences.getStringList(platformKey);
    if (stored != null && stored.isNotEmpty) {
      return stored;
    }

    // Fallback to device platform locale
    final raw = Platform.localeName.trim();
    if (raw.isEmpty) {
      return ['en']; // default fallback
    }

    // Remove encoding/variant suffixes like ".UTF-8" or "@euro"
    final base = raw.split('.').first.split('@').first;

    // Accept separators '_' or '-'
    List<String> parts;
    if (base.contains('_')) {
      parts = base.split('_');
    } else if (base.contains('-')) {
      parts = base.split('-');
    } else {
      parts = [base];
    }

    // Return language or [language, country] depending on availability
    if (parts.length >= 2) {
      return [parts[0], parts[1]];
    }
    return [parts[0]];
  }

  @override
  Future<void> setPlatformLocale(List<String> locale) async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    await sharedPreferences.setStringList(platformKey, locale);
  }

  @override
  Future<String> getLanguageKey() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    return sharedPreferences.getString(languageKey) ?? 'English';
  }

  @override
  Future<void> setLanguageKey(String language) async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    await sharedPreferences.setString(languageKey, language);
  }
}