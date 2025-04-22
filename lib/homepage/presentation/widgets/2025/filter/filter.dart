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
import '../identity_verification/identity_verification.dart';
import '../post/how_do_i_delete_a_post.dart';
import '../post/how_do_i_schedule_a_post.dart';
import '../post/posts.dart';
import '../qr_scanner/how_do_i_scan_qr_code.dart';


class Filters extends StatefulWidget {
  
  const Filters({Key? key}) : super(key: key);

  @override
  State<Filters> createState() => _FiltersState();

}



class _FiltersState extends State<Filters> {


  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: Title(
        title: AppLocalizations.of(context).translate("Goyerv Support - Filters"),
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

                    Text(AppLocalizations.of(context).translate("Filters"), style: Theme.of(context).textTheme.headlineLarge),

                    RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.titleLarge,
                        children: [
                          
                          TextSpan(
                            text: AppLocalizations.of(context).translate("Feature: "),
                            style: TextStyle(fontWeight: FontWeight.bold)
                          ),


                          TextSpan(
                            text: AppLocalizations.of(context).translate("Filter"),
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                          
                          
                        ]
                      )
                    ),


                    GestureDetector(
                      onTap: () => Share.share("https://support.goyerv.com/2025/filter/filters.html"),
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
                      AppLocalizations.of(context).translate('''The filters you have toggled on or off directly shape what you see in your runner post feed. Goyerv’s filtering system is designed to surface the most relevant posts based on your preferences, and it’s broken down into three main categories: Location, Run Category, and Medium of Transportation.\n\nUnder Location, the filters work by priority. The Local filter has the highest priority—when it’s on, you’ll first see posts from runners who share your exact address or are in close proximity. With Intrastate, posts from runners within the same state appear next. Intranational shows posts from anywhere within your country, while Intracontinental expands your view to runners located anywhere on your continent. Finally, International opens up your feed to posts from runners around the globe.\n\nThe second category, Run Category, allows you to choose the type of requests you’re interested in. Turning on Delivery will show posts from runners focused on local deliveries, while Shipping reveals posts from runners handling longer-distance or more logistics-heavy shipping requests.\n\nThe third category is Medium of Transportation, which refers to how runners intend to complete their tasks. You can filter posts based on whether the runner is traveling by foot—ideal for shorter distances—or using a bike, scooter, car, bus (public transport), train, or airplane. These filters work alongside your other selections to fine-tune your feed to match your preferences.'''),
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),


                    sbhavg,

                    Text(AppLocalizations.of(context).translate("Was this helpful?"), style: Theme.of(context).textTheme.bodyLarge),

                    sbhavg,


                    Row(
                      children: [

                        OutlinedButton(
                          onPressed: () => BlocProvider.of<GuidesBloc>(context).add(RateGuideEvent("2025/filter/1", true)),
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
                          onPressed: () => BlocProvider.of<GuidesBloc>(context).add(RateGuideEvent("2025/filter/1", false)),
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



                    OnHover(builder: (isHovered, context) => TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const HowDoIVerifyMyIdentity())), child: Text(AppLocalizations.of(context).translate("How do I verify my identity?\n\n"), style: Theme.of(context).textTheme.titleLarge!.copyWith(color: blue, decoration: isHovered? TextDecoration.underline : TextDecoration.underline)),)),

                    OnHover(builder: (isHovered, context) => TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const HowDoIDeleteAPost())), child: Text(AppLocalizations.of(context).translate("How do I delete my post?\n\n"), style: Theme.of(context).textTheme.titleLarge!.copyWith(color: blue, decoration: isHovered? TextDecoration.underline : TextDecoration.underline)),)),

                    OnHover(builder: (isHovered, context) => TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const HowDoIScheduleAPost())), child: Text(AppLocalizations.of(context).translate("How do I schedule a post?\n\n"), style: Theme.of(context).textTheme.titleLarge!.copyWith(color: blue, decoration: isHovered? TextDecoration.underline : TextDecoration.underline)),)),

                    OnHover(builder: (isHovered, context) => TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const HowDoIMakeAPost())), child: Text(AppLocalizations.of(context).translate("How do I create a post?\n\n"), style: Theme.of(context).textTheme.titleLarge!.copyWith(color: blue, decoration: isHovered? TextDecoration.underline : TextDecoration.underline)),)),

                    OnHover(builder: (isHovered, context) => TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const HowDoIScanAQRCode())), child: Text(AppLocalizations.of(context).translate("How do I scan QR-Codes?\n\n\n"), style: Theme.of(context).textTheme.titleLarge!.copyWith(color: blue, decoration: isHovered? TextDecoration.underline : TextDecoration.underline)),)),



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