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
import '../qr_scanner/how_do_i_scan_qr_code.dart';
import '../requests/how_do_I_make_a_request.dart';
import '../requests/how_do_i_counter_a_request.dart';
import 'how_do_i_schedule_a_post.dart';
import 'posts.dart';


class HowDoIDeleteAPost extends StatefulWidget {
  
  const HowDoIDeleteAPost({Key? key}) : super(key: key);

  @override
  State<HowDoIDeleteAPost> createState() => _HowDoIDeleteAPostState();

}



class _HowDoIDeleteAPostState extends State<HowDoIDeleteAPost> {


  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: Title(
        title: AppLocalizations.of(context).translate("Goyerv Support - How Do I Delete My Post?"),
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

                    Text(AppLocalizations.of(context).translate("How Do I Delete My Post?"), style: Theme.of(context).textTheme.headlineLarge),

                    RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.titleLarge,
                        children: [
                          
                          TextSpan(
                            text: AppLocalizations.of(context).translate("Feature: "),
                            style: TextStyle(fontWeight: FontWeight.bold)
                          ),


                          TextSpan(
                            text: AppLocalizations.of(context).translate("Post"),
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                          
                        ]
                      )
                    ),


                    GestureDetector(
                      onTap: () => Share.share("https://support.goyerv.com/2025/post/how-do-I-delete-a-post.html"),
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
                      AppLocalizations.of(context).translate(
                        '''To delete a post, tap the menu icon on the post and select "Delete." This action permanently removes the post from your profile and feed.\n\nPlease note that posts cannot be edited after they have been shared. We recommend reviewing all details carefully before posting to avoid any errors.\n\nOnce a post has expired, it will remain visible on your profile for reference, but you will no longer be able to accept new requests from it.'''
                      ),
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),


                    sbhavg,

                    Text(AppLocalizations.of(context).translate("Was this helpful?"), style: Theme.of(context).textTheme.bodyLarge),

                    sbhavg,


                    Row(
                      children: [

                        OutlinedButton(
                          onPressed: () => BlocProvider.of<GuidesBloc>(context).add(RateGuideEvent("2025/post/1", true)),
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
                          onPressed: () => BlocProvider.of<GuidesBloc>(context).add(RateGuideEvent("2025/post/1", false)),
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


                    OnHover(builder: (isHovered, context) => TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const HowDoIScheduleAPost())), child: Text(AppLocalizations.of(context).translate("How do I schedule a post?\n\n"), style: Theme.of(context).textTheme.titleLarge!.copyWith(color: blue, decoration: isHovered? TextDecoration.underline : TextDecoration.underline)),)),

                    OnHover(builder: (isHovered, context) => TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const HowDoIMakeAPost())), child: Text(AppLocalizations.of(context).translate("How do I create a post?\n\n"), style: Theme.of(context).textTheme.titleLarge!.copyWith(color: blue, decoration: isHovered? TextDecoration.underline : TextDecoration.underline)),)),

                    OnHover(builder: (isHovered, context) => TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const HowDoIScanAQRCode())), child: Text(AppLocalizations.of(context).translate("How do I scan QR-Codes?\n\n"), style: Theme.of(context).textTheme.titleLarge!.copyWith(color: blue, decoration: isHovered? TextDecoration.underline : TextDecoration.underline)),)),

                    OnHover(builder: (isHovered, context) => TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const HowDoICounterARequest())), child: Text(AppLocalizations.of(context).translate("How do I counter a request?\n\n"), style: Theme.of(context).textTheme.titleLarge!.copyWith(color: blue, decoration: isHovered? TextDecoration.underline : TextDecoration.underline)),)),

                    OnHover(builder: (isHovered, context) => TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const HowDoIMakeARequest())), child: Text(AppLocalizations.of(context).translate("How do I make a request?\n\n\n"), style: Theme.of(context).textTheme.titleLarge!.copyWith(color: blue, decoration: isHovered? TextDecoration.underline : TextDecoration.underline)),)),


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