// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:footer/footer_view.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../../guides/presentation/bloc/guides_bloc.dart';
import '../../../../../web_core/global_fields/fields.dart';
import '../../../../../web_core/internationalization/app_localizations.dart';
import '../../../../../web_core/util/hover.dart';
import '../../../../../widget/widget.dart';
import 'delete_saved_bank_account.dart';
import 'delete_saved_card.dart';
import 'how_do_I_change_my_name.dart';
import 'how_do_i_change_my_email_address.dart';
import 'how_do_i_change_my_phone_number.dart';


class HowDoIDeleteMyAccount extends StatefulWidget {
  
  const HowDoIDeleteMyAccount({Key? key}) : super(key: key);

  @override
  State<HowDoIDeleteMyAccount> createState() => _HowDoIDeleteMyAccountState();

}



class _HowDoIDeleteMyAccountState extends State<HowDoIDeleteMyAccount> {


  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: Title(
        title: AppLocalizations.of(context).translate("Goyerv Support - How Do I Delete My Account?"),
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

                    Text(AppLocalizations.of(context).translate("How Do I Delete My Account?"), style: Theme.of(context).textTheme.headlineLarge),

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
                      onTap: () => Share.share("https://support.goyerv.com/2025/settings/how-do-I-delete-my-account.html"),
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
                          
                          TextSpan(text: AppLocalizations.of(context).translate('To permanently delete your account, follow the steps below. Note that this action will not be successful if you have any pending requests, locks, or money left in your wallet. Be sure to resolve these issues before proceeding.\n\n')),

                          TextSpan(text: AppLocalizations.of(context).translate('    1.	Go to ')),
                          TextSpan(text: AppLocalizations.of(context).translate('Settings\n\n'), style: TextStyle(fontWeight: FontWeight.bold)),

                          TextSpan(text: AppLocalizations.of(context).translate('    2.	Tap')),
                          TextSpan(text: AppLocalizations.of(context).translate('Account\n\n'), style: TextStyle(fontWeight: FontWeight.bold)),

                          TextSpan(text: AppLocalizations.of(context).translate('    3.	Select ')),
                          TextSpan(text: AppLocalizations.of(context).translate('Delete Account\n\n'), style: TextStyle(fontWeight: FontWeight.bold)),

                          TextSpan(text: AppLocalizations.of(context).translate('    4.	Ensure all pending requests, locks, and wallet balances are cleared before confirming deletion.\n\n\n')),



                        ]
                      )
                    ),



                    sbhavg,

                    Text(AppLocalizations.of(context).translate("Was this helpful?"), style: Theme.of(context).textTheme.bodyLarge),

                    sbhavg,


                    Row(
                      children: [

                        OutlinedButton(
                          onPressed: () => BlocProvider.of<GuidesBloc>(context).add(RateGuideEvent("2025/settings/1", true)),
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(color: grey),
                            shape: StadiumBorder(),
                            backgroundColor: transparent,
                            foregroundColor: grey,
                            padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
                          ),
                          child: Text(AppLocalizations.of(context).translate("Helpful"), style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: grey),),
                        ),


                        sbwmin,

                        OutlinedButton(
                          onPressed: () => BlocProvider.of<GuidesBloc>(context).add(RateGuideEvent("2025/settings/1", false)),
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(color: grey),
                            shape: StadiumBorder(),
                            backgroundColor: transparent,
                            foregroundColor: grey,
                            padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
                          ),
                          child: Text(AppLocalizations.of(context).translate("Not Helpful"), style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: grey),),
                        ),


                      ],
                    ),


                    sbhavg,


                    Text(AppLocalizations.of(context).translate("Related Articles"), style: Theme.of(context).textTheme.bodyLarge),

                    sbhmin,


                    OnHover(builder: (isHovered, context) => TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const HowDoIDeleteSavedBankAccount())), child: Text(AppLocalizations.of(context).translate("How do I delete a saved bank account?\n\n"), style: Theme.of(context).textTheme.titleLarge!.copyWith(color: blue, decoration: isHovered? TextDecoration.underline : TextDecoration.underline)),)),

                    OnHover(builder: (isHovered, context) => TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const HowDoIDeleteSavedCard())), child: Text(AppLocalizations.of(context).translate("How do I delete a saved card?\n\n"), style: Theme.of(context).textTheme.titleLarge!.copyWith(color: blue, decoration: isHovered? TextDecoration.underline : TextDecoration.underline)),)),

                    OnHover(builder: (isHovered, context) => TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const HowDoIChangeMyEmailAddress())), child: Text(AppLocalizations.of(context).translate("How do I change my email address?\n\n"), style: Theme.of(context).textTheme.titleLarge!.copyWith(color: blue, decoration: isHovered? TextDecoration.underline : TextDecoration.underline)),)),

                    OnHover(builder: (isHovered, context) => TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const HowDoIChangeMyName())), child: Text(AppLocalizations.of(context).translate("How do I change my name?\n\n"), style: Theme.of(context).textTheme.titleLarge!.copyWith(color: blue, decoration: isHovered? TextDecoration.underline : TextDecoration.underline)),)),

                    OnHover(builder: (isHovered, context) => TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const HowDoIChangeMyPhoneNumber())), child: Text(AppLocalizations.of(context).translate("How do I change my phone number?\n\n"), style: Theme.of(context).textTheme.titleLarge!.copyWith(color: blue, decoration: isHovered? TextDecoration.underline : TextDecoration.underline)),)),


                    sbhavg,

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