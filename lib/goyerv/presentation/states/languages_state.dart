// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../web_core/global_fields/fields.dart';
import '../../../web_core/internationalization/app_localizations.dart';
import '../../../web_core/internationalization/locales_preferences.dart';
import '../../../web_core/widget/widget.dart';


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
    languages = ['Arabic', 'Bangla', 'Bulgarian', 'Burmese', 'Cebuano', 'Chinese (Simplified)', 'Chinese (Traditional)', 'Croatian', 'Czech', 'Danish', 'Dutch', 'English', 'Estonian', 'Filipino', 'Finnish', 'French', 'Georgian', 'German', 'Greek', 'Gujarati', 'Hausa', 'Hindi', 'Hungarian', 'Igbo', 'Indonesian', 'Italian', 'Japanese', 'Kannada', 'Khmer', 'Korean', 'Malay', 'Malayalam', 'Marathi', 'Norwegian', 'Odia', 'Polish', 'Portuguese', 'Punjabi', 'Romanian', 'Russian', 'Spanish', 'Tamil', 'Thai', 'Turkish', 'Ukrainian', 'Vietnamese', 'Welsh', 'Yoruba'];
    locales = {'Arabic': ['ar', ''], 'Bangla': ['bn', ''], 'Bulgarian': ['bg', ''], 'Burmese': ['my', ''], 'Cebuano': ['ceb', ''], 'Chinese (Simplified)': ['zh', 'CN'], 'Chinese (Traditional)': ['zh' 'TW', 'zh_TW.UTF-8'], 'Croatian': ['hr', ''], 'Czech': ['cs', ''], 'Danish': ['da', ''], 'Dutch': ['nl', ''], 'English': ['en', 'AU', 'en_AU.UTF-8', 'BZ', 'en_BZ.UTF-8', 'CA', 'en_CA.UTF-8', 'CB', 'en_CB.UTF-8', 'GB', 'en_GB.UTF-8', 'IN', 'en_IN.UTF-8', 'IE', 'en_IE.UTF-8', 'JM', 'en_JM.UTF-8', 'NZ', 'en_NZ.UTF-8', 'PH', 'en_PH.UTF-8', 'ZA', 'en_ZA.UTF-8', 'TT', 'en_TT.UTF-8', 'US', 'en_US.UTF-8'], 'Estonian': ['et', ''], 'Filipino': ['fil', ''], 'Finnish': ['fi', ''], 'French': ['fr', 'BE', 'fr_BE.UTF-8', 'FR', 'fr_FR.UTF-8', 'LU', 'fr_LU.UTF-8', 'CH', 'fr_CH.UTF-8'], 'Georgian': ['ka', ''], 'German': ['de', 'AT', 'de_AT.UTF-8', 'DE', 'de_DE.UTF-8', 'LI', 'de_LI.UTF-8', 'LU', 'de_LU.UTF-8', 'CH', 'de_CH.UTF-8'], 'Greek': ['el', ''], 'Gujarati': ['gu', ''], 'Hausa': ['ha', 'NG', 'ha_NG.UTF-8'], 'Hindi': ['hi', ''], 'Hungarian': ['hu', ''], 'Igbo': ['ig', 'NG', 'ig_NG.UTF-8'], 'Indonesian': ['id', ''], 'Italian': ['it', 'IT', 'it_IT.UTF-8', 'CH', 'it_CH.UTF-8'], 'Japanese': ['ja', ''], 'Kannada': ['kn', ''], 'Khmer': ['km', ''], 'Korean': ['ko', ''], 'Malay': ['ms', 'MY', 'ms_MY.UTF-8'], 'Malayalam': ['ml', ''], 'Marathi': ['mr', ''], 'Norwegian': ['nb', 'NO', 'no_NO.UTF-8', 'nn', 'no_NO', 'no_NO.UTF-8'], 'Odia': ['or', ''], 'Polish': ['pl', ''], 'Portuguese': ['pt', 'BR', 'pt_BR.UTF-8', 'PT', 'pt_PT.UTF-8'], 'Punjabi': ['pa', ''], 'Romanian': ['ro', 'MO', 'ro_MO.UTF-8'], 'Russian': ['ru', 'MO', 'ru_MO.UTF-8'], 'Spanish': ['es', 'AR', 'es_AR.UTF-8', 'BO', 'es_BO.UTF-8', 'CI', 'es_CI.UTF-8', 'CO', 'es_CO.UTF-8', 'CR', 'es_CR.UTF-8', 'DO', 'es_DO.UTF-8', 'EC', 'es_EC.UTF-8', 'SV', 'es_SV.UTF-8', 'GT', 'es_GT.UTF-8', 'HN', 'es_HN.UTF-8', 'MX', 'es_MX.UTF-8', 'NI', 'NI.UTF-8', 'PA', 'es_PA.UTF-8', 'PY', 'es_PY.UTF-8', 'PE', 'es_PE.UTF-8', 'PR', 'es_PR.UTF-8', 'ES', 'es_ES.UTF-8', 'UY', 'es_UY.UTF-8', 'VE', 'es_VE.UTF-8'], 'Tamil': ['ta', ''], 'Thai': ['th', ''], 'Turkish': ['tr', ''], 'Ukrainian': ['uk', ''], 'Vietnamese': ['vi', ''], 'Welsh': ['cy', ''], 'Yoruba': ['yr', 'NG', 'yr_NG.UTF-8']};
    localesPreferences = LocalesPreferencesImpl(SharedPreferences.getInstance());
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),

      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Theme.of(context).primaryColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
         
              ListView.separated(
                shrinkWrap: true,
                itemCount: languages.length,
                separatorBuilder: (context, _) => sbhmin, 
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ListTile(
                    onTap: (){ localesPreferences.setPlatformLocale(locales[languages[index]]); localesPreferences.setLanguageKey(languages[index]);},
                    title: Text(AppLocalizations.of(context).translate(languages[index]), style: Theme.of(context).textTheme.bodyLarge),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                    contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                    hoverColor: Theme.of(context).primaryColorLight,
                  ),
                ), 
              ),
        
              sbhavg,
        
        
              //footer
              footer(context, setState),
        
            ],
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