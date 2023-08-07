// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppLocalizations {

  final Locale locale;

  AppLocalizations(this.locale);

  late Map<String, String> localizedStrings;
  
  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = AppLocalizationsDelegate();

  Future<bool> load() async {
    String jsonString = await rootBundle.loadString(locale.languageCode == 'zh'? 'assets/languages/${locale.languageCode}_${locale.countryCode}.json' : 'assets/languages/${locale.languageCode}.json');
    Map<String, String> jsonMap = json.decode(jsonString);
    localizedStrings = jsonMap.map((key, value) => MapEntry(key, value.toString()));
    return true;
  }

  String translate(String text) {
    return localizedStrings[text]!;
  }


}


class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {

  const AppLocalizationsDelegate();

  @override 
  bool isSupported(Locale locale) {
    return ['ar', 'bn', 'bg', 'my', 'ce', 'zh', 'zh_CN', 'zh_TW', 'hr', 'cs', 'da', 'nl', 'en', 'et', 'fi', 'fi', 'fr', 'ka', 'de', 'el', 'gu', 'ha', 'hi', 'hu', 'ig', 'id', 'it', 'it', 'ja', 'kn', 'km', 'ko', 'ms', 'ml', 'mr', 'nb', 'or', 'pl', 'pt', 'pa', 'ro', 'ru', 'es', 'ta', 'th', 'tr', 'uk', 'vi', 'cy', 'yr'].contains(locale.languageCode);
  }

  @override 
  Future<AppLocalizations> load(Locale locale) async {
    AppLocalizations localizations = AppLocalizations(locale);
    await localizations.load();
    return localizations;
  }

  @override 
  bool shouldReload(AppLocalizationsDelegate old) => false;

}