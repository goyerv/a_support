// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'package:flutter/material.dart';
import 'package:footer/footer_view.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../../web_core/global_fields/fields.dart';
import '../../../../../web_core/internationalization/app_localizations.dart';


class HowDoIMakeWithdrawals extends StatefulWidget {
  
  const HowDoIMakeWithdrawals({Key? key}) : super(key: key);

  @override
  State<HowDoIMakeWithdrawals> createState() => _HowDoIMakeWithdrawalsState();

}



class _HowDoIMakeWithdrawalsState extends State<HowDoIMakeWithdrawals> {


  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: Title(
        title: AppLocalizations.of(context).translate("Goyerv Support - How Do I Make Withdrawals From My Account?"),
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

                    Text(AppLocalizations.of(context).translate("How Do I Make Withdrawals From My Account?"), style: Theme.of(context).textTheme.headlineLarge),

                    RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.titleLarge,
                        children: [
                          
                          TextSpan(
                            text: AppLocalizations.of(context).translate("Feature: "),
                            style: TextStyle(fontWeight: FontWeight.bold)
                          ),


                          TextSpan(
                            text: AppLocalizations.of(context).translate("Wallet"),
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                          
                        ]
                      )
                    ),


                    GestureDetector(
                      onTap: () => Share.share("https://support.goyerv.com/2025/wallet/how-do-i-make-withdrawals-from-my-account.html"),
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
                          
                          TextSpan(text: AppLocalizations.of(context).translate('To withdraw funds from your Goyerv wallet:\n\n')),

                          TextSpan(text: AppLocalizations.of(context).translate('    1.	Go to ')),
                          TextSpan(text: AppLocalizations.of(context).translate('Wallet\n\n'), style: TextStyle(fontWeight: FontWeight.bold)),

                          TextSpan(text: AppLocalizations.of(context).translate('    2.	Tap')),
                          TextSpan(text: AppLocalizations.of(context).translate('Withdraw\n\n'), style: TextStyle(fontWeight: FontWeight.bold)),

                          TextSpan(text: AppLocalizations.of(context).translate('    3.	Enter the amount and your bank details')),

                          TextSpan(text: AppLocalizations.of(context).translate('    4.	Click  ')),
                          TextSpan(text: AppLocalizations.of(context).translate('Withdraw\n\n'), style: TextStyle(fontWeight: FontWeight.bold)),

                          TextSpan(text: AppLocalizations.of(context).translate('''Withdrawals may take some time depending on your country. Note that this feature isn't available in all regions yet, but we're working hard to roll it out everywhere.\n\n\n''')),



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