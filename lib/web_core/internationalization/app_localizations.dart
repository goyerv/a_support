// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppLocalizations {

  final Locale locale;

  AppLocalizations(this.locale);

  late var localizedStrings;
  
  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = AppLocalizationsDelegate();

  Future<bool> load() async {
    String jsonString = await rootBundle.loadString(locale.languageCode == 'zh'? 'assets/languages/${locale.languageCode}-${locale.countryCode}.json' : 'assets/languages/${locale.languageCode}.json');
    var jsonMap = json.decode(jsonString);
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
    return ['es', 'fr', 'hi', 'ja', 'zh'].contains(locale.languageCode);
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