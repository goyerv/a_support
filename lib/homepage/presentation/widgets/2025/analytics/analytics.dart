// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:footer/footer_view.dart';
import 'package:goyerv_support_web_app/web_core/util/hover.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../../guides/presentation/bloc/guides_bloc.dart';
import '../../../../../web_core/global_fields/fields.dart';
import '../../../../../web_core/internationalization/app_localizations.dart';
import '../convert/becoming_a_runner.dart';
import '../filter/filter.dart';
import '../identity_verification/identity_verification.dart';
import '../post/how_do_I_delete_a_post.dart';


class Analytics extends StatefulWidget {
  
  const Analytics({Key? key}) : super(key: key);

  @override
  State<Analytics> createState() => _AnalyticsState();

}



class _AnalyticsState extends State<Analytics> {


  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: Title(
        title: AppLocalizations.of(context).translate("Goyerv Support - Analytics"),
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

                    Text(AppLocalizations.of(context).translate("Analytics"), style: Theme.of(context).textTheme.headlineLarge),

                    RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.titleLarge,
                        children: [
                          
                          TextSpan(
                            text: AppLocalizations.of(context).translate("Feature: "),
                            style: TextStyle(fontWeight: FontWeight.bold)
                          ),


                          TextSpan(
                            text: AppLocalizations.of(context).translate("Analytics"),
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                          
                          
                        ]
                      )
                    ),


                    GestureDetector(
                      onTap: () => Share.share("https://support.goyerv.com/2025/analytics/analytics.html"),
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

                    Text(
                      AppLocalizations.of(context).translate('''Analytics is your personal performance dashboard, built to help runners measure progress over time—whether it's daily, over the past five days, six months, a year, or year-to-date. It tracks your successful and unsuccessful requests, completed deliveries, and earnings growth at a glance.\n\nA request is deemed unsuccessful if Goyerv had to automatically terminate it.'''),
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),



                    sbhavg,

                    Text(AppLocalizations.of(context).translate("Was this helpful?"), style: Theme.of(context).textTheme.bodyLarge),

                    sbhavg,


                    Row(
                      children: [

                        OutlinedButton(
                          onPressed: () => BlocProvider.of<GuidesBloc>(context).add(RateGuideEvent("2025/analytics/1", true)),
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(color: grey),
                            shape: StadiumBorder(),
                            backgroundColor: transparent,
                            foregroundColor: grey,
                            padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
                          ),
                          child: Text("Helpful", style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: grey),),
                        ),


                        sbwmin,

                        OutlinedButton(
                          onPressed: () => BlocProvider.of<GuidesBloc>(context).add(RateGuideEvent("2025/analytics/1", false)),
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(color: grey),
                            shape: StadiumBorder(),
                            backgroundColor: transparent,
                            foregroundColor: grey,
                            padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
                          ),
                          child: Text("Not Helpful", style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: grey),),
                        ),


                      ],
                    ),


                    sbhavg,


                    Text(AppLocalizations.of(context).translate("Related Articles"), style: Theme.of(context).textTheme.bodyLarge),

                    sbhmin,

                    OnHover(builder: (isHovered, context) => TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const BecomingARunner())), child: Text(AppLocalizations.of(context).translate("Becoming a runner\n\n"), style: Theme.of(context).textTheme.titleLarge!.copyWith(color: blue, decoration: isHovered? TextDecoration.underline : TextDecoration.underline)),)),

                    OnHover(builder: (isHovered, context) => TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const BecomingARunner())), child: Text(AppLocalizations.of(context).translate("How do I stop becoming a runner?\n\n"), style: Theme.of(context).textTheme.titleLarge!.copyWith(color: blue, decoration: isHovered? TextDecoration.underline : TextDecoration.underline)),)),

                    OnHover(builder: (isHovered, context) => TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const Filters())), child: Text(AppLocalizations.of(context).translate("Filters?\n\n"), style: Theme.of(context).textTheme.titleLarge!.copyWith(color: blue, decoration: isHovered? TextDecoration.underline : TextDecoration.underline)),)),

                    OnHover(builder: (isHovered, context) => TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const HowDoIVerifyMyIdentity())), child: Text(AppLocalizations.of(context).translate("How do I verify my identity?\n\n"), style: Theme.of(context).textTheme.titleLarge!.copyWith(color: blue, decoration: isHovered? TextDecoration.underline : TextDecoration.underline)),)),

                    OnHover(builder: (isHovered, context) => TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const HowDoIDeleteAPost())), child: Text(AppLocalizations.of(context).translate("How do I delete my post?\n\n\n"), style: Theme.of(context).textTheme.titleLarge!.copyWith(color: blue, decoration: isHovered? TextDecoration.underline : TextDecoration.underline)),)),



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