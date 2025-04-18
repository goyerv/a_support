// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'package:flutter/material.dart';
import 'package:footer/footer_view.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../../web_core/global_fields/fields.dart';
import '../../../../../web_core/internationalization/app_localizations.dart';


class HowDoIChangeMyPhoneNumber extends StatefulWidget {
  
  const HowDoIChangeMyPhoneNumber({Key? key}) : super(key: key);

  @override
  State<HowDoIChangeMyPhoneNumber> createState() => _HowDoIChangeMyPhoneNumberState();

}



class _HowDoIChangeMyPhoneNumberState extends State<HowDoIChangeMyPhoneNumber> {


  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: Title(
        title: AppLocalizations.of(context).translate("Goyerv Support - How Do I Change My Phone Number?"),
        color: Theme.of(context).primaryColor,
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: Theme.of(context).primaryColor,
          child: FooterView(
            footer: footer(context),
            children: [

              Padding(
                padding: EdgeInsets.all(MediaQuery.of(context).size.width >= 800? 50.0 : 16.0),
                child: Column(
                  children: [

                    Text(AppLocalizations.of(context).translate("How Do I Change My Phone Number?"), style: Theme.of(context).textTheme.headlineLarge),

                    RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.titleLarge,
                        children: [
                          
                          TextSpan(
                            text: AppLocalizations.of(context).translate("Feature: "),
                            style: TextStyle(fontWeight: FontWeight.bold)
                          ),


                          TextSpan(
                            text: AppLocalizations.of(context).translate("Settings"),
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                          
                        ]
                      )
                    ),


                    GestureDetector(
                      onTap: () => Share.share("https://support.goyerv.com/2025/settings/how-do-i-change-my-phone-number.html"),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 10),
                        decoration: BoxDecoration(
                          color: transparent,
                          border: Border.all(color: grey),
                          borderRadius: BorderRadius.circular(50)
                        ),
                        child: Row(
                          children: [
                                  
                            const Icon(Icons.share_rounded, color: grey),
                                  
                            sbwmin,
                                  
                            Text(AppLocalizations.of(context).translate("Share"), style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: grey, fontWeight: FontWeight.bold))
                         
                          ],
                        ),
                      ),
                    ),



                    sbhavg,

                    RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.bodyLarge,
                        children: [
                          
                          TextSpan(text: AppLocalizations.of(context).translate('You can update your phone number directly from your profile settings.\n\n')),

                          TextSpan(text: AppLocalizations.of(context).translate('    1.	Go to ')),
                          TextSpan(text: AppLocalizations.of(context).translate('Settings\n\n'), style: TextStyle(fontWeight: FontWeight.bold)),

                          TextSpan(text: AppLocalizations.of(context).translate('    2.	Tap')),
                          TextSpan(text: AppLocalizations.of(context).translate('Security\n\n'), style: TextStyle(fontWeight: FontWeight.bold)),

                          TextSpan(text: AppLocalizations.of(context).translate('    3.	Select ')),
                          TextSpan(text: AppLocalizations.of(context).translate('Password\n\n'), style: TextStyle(fontWeight: FontWeight.bold)),

                          TextSpan(text: AppLocalizations.of(context).translate('    4.	Enter your current password, then choose a new one and save changes\n\n\n')),




                        ]
                      )
                    ),


                  ],
                )
              )


            ]
          ),
        ),
      ),
    );
  }


}