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



class HowDoIVerifyMyIdentity extends StatefulWidget {

  final void Function(Locale) onLocaleChanged;
  final String locale;
  
  const HowDoIVerifyMyIdentity(this.onLocaleChanged, this.locale, {Key? key}) : super(key: key);

  @override
  State<HowDoIVerifyMyIdentity> createState() => _HowDoIVerifyMyIdentityState();

}



class _HowDoIVerifyMyIdentityState extends State<HowDoIVerifyMyIdentity> {





  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: Title(
        title: AppLocalizations.of(context).translate("Goyerv Support - How Do I Verify My Identity?"),
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

                    Text(AppLocalizations.of(context).translate("How Do I Verify My Identity?"), style: Theme.of(context).textTheme.headlineLarge),

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
                            text: AppLocalizations.of(context).translate("Identity Verification"),
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                          
                          
                        ]
                      )
                    ),

                    const SizedBox(height: 15),


                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () => Share.share("https://support.goyerv.com/${widget.locale}/guides/identity-verification/how-do-I-verify-my-identity.html"),
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

                    Text(
                      AppLocalizations.of(context).translate(
                        '''Identity verification on Goyerv is structured into three levels. Each level unlocks greater transaction capabilities and helps us keep the platform safe and secure for everyone.\n\nYou’ll be guided through the process, with each level requiring its own set of verification steps—starting with a government-issued ID, and progressing to additional documentation as needed.\n\nEvery level comes with its own verification requirements. This system is designed not just to build trust, but to ensure Goyerv isn't used for fraudulent activities like money laundering. The more verified your account, the more flexibility you’ll have when sending, receiving, or fulfilling requests.'''
                      ),
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),


                    sbhavg, sbhmax,

                    Text(AppLocalizations.of(context).translate("Was this helpful?"), style: Theme.of(context).textTheme.bodyLarge),

                    sbhavg,


                    Row(
                      children: [

                        OutlinedButton(
                          onPressed: () => BlocProvider.of<GuidesBloc>(context).add(RateGuideEvent("2025/identity-verification/1", true)),
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
                          onPressed: () => BlocProvider.of<GuidesBloc>(context).add(RateGuideEvent("2025/identity-verification/1", false)),
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




                    OnHover(builder: (isHovered, context) => TextButton(onPressed: () => context.go('/${widget.locale}/guides/post/how-do-I-delete-a-post'), child: Text(AppLocalizations.of(context).translate("How do I delete my post?"), style: Theme.of(context).textTheme.titleMedium!.copyWith(color: blue, decoration: isHovered? TextDecoration.underline : TextDecoration.none, decorationColor: blue)),)),

                    OnHover(builder: (isHovered, context) => TextButton(onPressed: () => context.go('/${widget.locale}/guides/post/how-do-I-schedule-a-post'), child: Text(AppLocalizations.of(context).translate("How do I schedule a post?"), style: Theme.of(context).textTheme.titleMedium!.copyWith(color: blue, decoration: isHovered? TextDecoration.underline : TextDecoration.none, decorationColor: blue)),)),

                    OnHover(builder: (isHovered, context) => TextButton(onPressed: () => context.go('/${widget.locale}/guides/post/how-do-I-make-a-post'), child: Text(AppLocalizations.of(context).translate("How do I create a post?"), style: Theme.of(context).textTheme.titleMedium!.copyWith(color: blue, decoration: isHovered? TextDecoration.underline : TextDecoration.none, decorationColor: blue)),)),

                    OnHover(builder: (isHovered, context) => TextButton(onPressed: () => context.go('/${widget.locale}/guides/qr-scanner/how-do-I-scan-qr-codes'), child: Text(AppLocalizations.of(context).translate("How do I scan QR-Codes?"), style: Theme.of(context).textTheme.titleMedium!.copyWith(color: blue, decoration: isHovered? TextDecoration.underline : TextDecoration.none, decorationColor: blue)),)),

                    OnHover(builder: (isHovered, context) => TextButton(onPressed: () => context.go('/${widget.locale}/guides/requests/how-do-I-counter-a-request'), child: Text(AppLocalizations.of(context).translate("How do I counter a request?"), style: Theme.of(context).textTheme.titleMedium!.copyWith(color: blue, decoration: isHovered? TextDecoration.underline : TextDecoration.none, decorationColor: blue)),)),


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