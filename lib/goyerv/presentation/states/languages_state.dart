// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'package:flutter/material.dart';

import '../../../web_core/global_fields/fields.dart';
import '../../../web_core/internationalization/app_localizations.dart';
import '../../../web_core/internationalization/locales_preferences.dart';
import '../../../web_core/util/hover.dart';


class Languages extends StatefulWidget {

  const Languages({Key? key}) : super(key: key);

  @override
  State<Languages> createState() => _LanguagesState();

}

class _LanguagesState extends State<Languages> {



  late List<String> languages;
  late Map<String, dynamic> locales;


  late LocalesPreferencesImpl localesPreferences;



  @override 
  void initState() {
    languages = ['English', 'Chinese (Simplified)', 'Chinese (Traditional)', 'Spanish', 'French', 'Japanese', 'Hindi'];
    locales = {'English': ['en', 'AU', 'en_AU.UTF-8', 'BZ', 'en_BZ.UTF-8', 'CA', 'en_CA.UTF-8', 'CB', 'en_CB.UTF-8', 'GB', 'en_GB.UTF-8', 'IN', 'en_IN.UTF-8', 'IE', 'en_IE.UTF-8', 'JM', 'en_JM.UTF-8', 'NZ', 'en_NZ.UTF-8', 'PH', 'en_PH.UTF-8', 'ZA', 'en_ZA.UTF-8', 'TT', 'en_TT.UTF-8', 'US', 'en_US.UTF-8'], 'Chinese (Simplified)': ['zh', 'CN'], 'Chinese (Traditional)': ['zh' 'TW', 'zh_TW.UTF-8'], 'Spanish': ['es', 'AR', 'es_AR.UTF-8', 'BO', 'es_BO.UTF-8', 'CI', 'es_CI.UTF-8', 'CO', 'es_CO.UTF-8', 'CR', 'es_CR.UTF-8', 'DO', 'es_DO.UTF-8', 'EC', 'es_EC.UTF-8', 'SV', 'es_SV.UTF-8', 'GT', 'es_GT.UTF-8', 'HN', 'es_HN.UTF-8', 'MX', 'es_MX.UTF-8', 'NI', 'NI.UTF-8', 'PA', 'es_PA.UTF-8', 'PY', 'es_PY.UTF-8', 'PE', 'es_PE.UTF-8', 'PR', 'es_PR.UTF-8', 'ES', 'es_ES.UTF-8', 'UY', 'es_UY.UTF-8', 'VE', 'es_VE.UTF-8'], 'French': ['fr', 'BE', 'fr_BE.UTF-8', 'FR', 'fr_FR.UTF-8', 'LU', 'fr_LU.UTF-8', 'CH', 'fr_CH.UTF-8'], 'Japanese': ['ja', ''], 'Hindi': ['hi', '']};
    localesPreferences = LocalesPreferencesImpl();
    super.initState();
  }



  

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: MediaQuery.of(context).size.width >= 800? MediaQuery.of(context).size.width * 0.6 : MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.width >= 800? MediaQuery.of(context).size.width * 0.7 : null,
        padding: EdgeInsets.all(15.0),
        color: Theme.of(context).primaryColor,
        child: Scaffold(
          appBar: AppBar(
            leading: InkWell(onTap: () => Navigator.of(context).pop(), hoverColor: Theme.of(context).primaryColorLight, child: Icon(xMark, size: 20.0),),
          ),

          body: Wrap(
            spacing: 10,
            runSpacing: 10,
            children: List.generate(languages.length, (index) => OnHover(
              builder: (isHovered, context) => OutlinedButton(
                onPressed: (){ localesPreferences.setPlatformLocale(locales[languages[index]]); localesPreferences.setLanguageKey(languages[index]); }, 
                style: Theme.of(context).outlinedButtonTheme.style!.copyWith(padding: WidgetStateProperty.all(const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0)), backgroundColor: WidgetStateProperty.all(isHovered? defaultColor : transparent), side: WidgetStateProperty.all(BorderSide(color: isHovered? transparent : defaultColor))),
                child: Text(AppLocalizations.of(context).translate(languages[index]), style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: isHovered? white : Theme.of(context).textTheme.bodyLarge!.color))
              )
            )), 
          ),
        )
      ),
    );
  }








  @override 
  void dispose() {
    languages.clear();
    locales.clear();
    super.dispose();
  }

}