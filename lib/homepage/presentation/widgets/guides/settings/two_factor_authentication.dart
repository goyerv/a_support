// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:footer/footer_view.dart';
import 'package:go_router/go_router.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../../guides/presentation/bloc/guides_bloc.dart';
import '../../../../../web_core/global_fields/fields.dart';
import '../../../../../web_core/internationalization/app_localizations.dart';
import '../../../../../web_core/util/hover.dart';
import '../../../../../widget/widget.dart';



class TwoFactorAuthentication extends StatefulWidget {

  final void Function(Locale) onLocaleChanged;
  
  const TwoFactorAuthentication(this.onLocaleChanged, {Key? key}) : super(key: key);

  @override
  State<TwoFactorAuthentication> createState() => _TwoFactorAuthenticationState();

}



class _TwoFactorAuthenticationState extends State<TwoFactorAuthentication> {


  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: Title(
        title: AppLocalizations.of(context).translate("Goyerv Support - Two-Factor Authentication"),
        color: Theme.of(context).primaryColor,
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: Theme.of(context).primaryColor,
          child: FooterView(
            footer: footer(context, widget.onLocaleChanged),
            flex: 8,
            children: [

              Padding(
                padding: EdgeInsets.all(MediaQuery.of(context).size.width >= 800? 50.0 : 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    sbhavg,

                    Text(AppLocalizations.of(context).translate("Two-Factor Authentication"), style: Theme.of(context).textTheme.headlineLarge),

                    sbhmin,

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

                    const SizedBox(height: 15),

                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () => Share.share("https://support.goyerv.com/guides/settings/two-factor-authentication.html"),
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 5),
                          decoration: BoxDecoration(
                            color: transparent,
                            border: Border.all(color: blue),
                            borderRadius: BorderRadius.circular(50)
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                                    
                              const Icon(Icons.share_rounded, color: blue, size: 20.0),
                                    
                              const SizedBox(width: 3),
                                    
                              Text(AppLocalizations.of(context).translate("Share"), style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: grey, fontWeight: FontWeight.bold))
                           
                            ],
                          ),
                        ),
                      ),
                    ),



                    sbhavg,

                    RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.bodyLarge,
                        children: [
                          
                          TextSpan(text: AppLocalizations.of(context).translate('Add an extra layer of security to your account by enabling 2FA.\n\n')),

                          TextSpan(text: AppLocalizations.of(context).translate('    1.	Go to ')),
                          TextSpan(text: AppLocalizations.of(context).translate('Settings\n\n'), style: TextStyle(fontWeight: FontWeight.bold)),

                          TextSpan(text: AppLocalizations.of(context).translate('    2.	Tap')),
                          TextSpan(text: AppLocalizations.of(context).translate('Security\n\n'), style: TextStyle(fontWeight: FontWeight.bold)),

                          TextSpan(text: AppLocalizations.of(context).translate('    3.	Select ')),
                          TextSpan(text: AppLocalizations.of(context).translate('Two-Factor Authentication '), style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: AppLocalizations.of(context).translate('and follow the prompts\n\n\n')),



                        ]
                      )
                    ),



                    Text(AppLocalizations.of(context).translate("Was this helpful?"), style: Theme.of(context).textTheme.bodyLarge),

                    sbhavg,


                    Row(
                      children: [

                        OutlinedButton(
                          onPressed: () => BlocProvider.of<GuidesBloc>(context).add(RateGuideEvent("2025/settings/9", true)),
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
                          onPressed: () => BlocProvider.of<GuidesBloc>(context).add(RateGuideEvent("2025/settings/9", false)),
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


                    sbhavg, sbhmax,


                    Text(AppLocalizations.of(context).translate("Related Articles"), style: Theme.of(context).textTheme.titleLarge),

                    sbhmin,


                    OnHover(builder: (isHovered, context) => TextButton(onPressed: () => context.go('/guides/wallet/how-do-I-make-deposits-into-my-account'), child: Text(AppLocalizations.of(context).translate("How do I make deposits into my account?"), style: Theme.of(context).textTheme.titleMedium!.copyWith(color: blue, decoration: isHovered? TextDecoration.underline : TextDecoration.none, decorationColor: blue)),)),

                    OnHover(builder: (isHovered, context) => TextButton(onPressed: () => context.go('/guides/wallet/how-do-I-make-withdrawals-from-my-account'), child: Text(AppLocalizations.of(context).translate("How do I make withdrawals from my account?"), style: Theme.of(context).textTheme.titleMedium!.copyWith(color: blue, decoration: isHovered? TextDecoration.underline : TextDecoration.none, decorationColor: blue)),)),

                    OnHover(builder: (isHovered, context) => TextButton(onPressed: () => context.go('/guides/wallet/what-do-the-locks-on-my-account-mean'), child: Text(AppLocalizations.of(context).translate("What do the locks on my account mean?"), style: Theme.of(context).textTheme.titleMedium!.copyWith(color: blue, decoration: isHovered? TextDecoration.underline : TextDecoration.none, decorationColor: blue)),)),

                    OnHover(builder: (isHovered, context) => TextButton(onPressed: () => context.go('/guides/wallet/how-do-I-make-transfers-on-goyerv'), child: Text(AppLocalizations.of(context).translate("How do I make transfers on Goyerv?"), style: Theme.of(context).textTheme.titleMedium!.copyWith(color: blue, decoration: isHovered? TextDecoration.underline : TextDecoration.none, decorationColor: blue)),)),


                    OnHover(builder: (isHovered, context) => TextButton(onPressed: () => context.go('/guides/wallet/wallet-balance'), child: Text(AppLocalizations.of(context).translate("Wallet balance"), style: Theme.of(context).textTheme.titleMedium!.copyWith(color: blue, decoration: isHovered? TextDecoration.underline : TextDecoration.none, decorationColor: blue)),)),


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