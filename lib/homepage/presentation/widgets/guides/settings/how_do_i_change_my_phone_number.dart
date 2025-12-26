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


class HowDoIChangeMyPhoneNumber extends StatefulWidget {

  final void Function(Locale) onLocaleChanged;
  final String locale;
  
  const HowDoIChangeMyPhoneNumber(this.onLocaleChanged, this.locale, {Key? key}) : super(key: key);

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
            footer: footer(context, widget.onLocaleChanged),
            flex: 8,
            children: [

              Padding(
                padding: EdgeInsets.all(MediaQuery.of(context).size.width >= 800? 50.0 : 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    sbhavg,

                    Text(AppLocalizations.of(context).translate("How Do I Change My Phone Number?"), style: Theme.of(context).textTheme.headlineLarge),

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
                        onTap: () => Share.share("https://support.goyerv.com/${widget.locale}/guides/settings/how-do-I-change-my-phone-number.html"),
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
                                    
                              const Icon(Icons.share_rounded, color: grey, size: 20.0),
                                    
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



                    Text(AppLocalizations.of(context).translate("Was this helpful?"), style: Theme.of(context).textTheme.bodyLarge),

                    sbhavg,


                    Row(
                      children: [

                        OutlinedButton(
                          onPressed: () => BlocProvider.of<GuidesBloc>(context).add(RateGuideEvent("2025/settings/6", true)),
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
                          onPressed: () => BlocProvider.of<GuidesBloc>(context).add(RateGuideEvent("2025/settings/6", false)),
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

                    OnHover(builder: (isHovered, context) => TextButton(onPressed: () => context.go('/${widget.locale}/guides/settings/set-transaction-pin'), child: Text(AppLocalizations.of(context).translate("Set transaction pin"), style: Theme.of(context).textTheme.titleMedium!.copyWith(color: blue, decoration: isHovered? TextDecoration.underline : TextDecoration.none, decorationColor: blue)),)),

                    OnHover(builder: (isHovered, context) => TextButton(onPressed: () => context.go('/${widget.locale}/guides/settings/web-indexing'), child: Text(AppLocalizations.of(context).translate("Web indexing"), style: Theme.of(context).textTheme.titleMedium!.copyWith(color: blue, decoration: isHovered? TextDecoration.underline : TextDecoration.none, decorationColor: blue)),)),

                    OnHover(builder: (isHovered, context) => TextButton(onPressed: () => context.go('/${widget.locale}/guides/settings/two-factor-authentication'), child: Text(AppLocalizations.of(context).translate("Two-Factor authentication"), style: Theme.of(context).textTheme.titleMedium!.copyWith(color: blue, decoration: isHovered? TextDecoration.underline : TextDecoration.none, decorationColor: blue)),)),

                    OnHover(builder: (isHovered, context) => TextButton(onPressed: () => context.go('/${widget.locale}/guides/wallet/how-do-I-make-deposits-into-my-account'), child: Text(AppLocalizations.of(context).translate("How do I make deposits into my account?"), style: Theme.of(context).textTheme.titleMedium!.copyWith(color: blue, decoration: isHovered? TextDecoration.underline : TextDecoration.none, decorationColor: blue)),)),

                    OnHover(builder: (isHovered, context) => TextButton(onPressed: () => context.go('/${widget.locale}/guides/wallet/how-do-I-make-withdrawals-from-my-account'), child: Text(AppLocalizations.of(context).translate("How do I make withdrawals from my account?"), style: Theme.of(context).textTheme.titleMedium!.copyWith(color: blue, decoration: isHovered? TextDecoration.underline : TextDecoration.none, decorationColor: blue)),)),

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