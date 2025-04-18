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
import '../qr_scanner/how_do_I_scan_a_qr_code.dart';
import '../requests/how_do_I_make_a_request.dart';
import '../requests/how_do_i_counter_a_request.dart';
import '../requests/terminating_requests.dart';
import '../settings/delete_account.dart';


class HowDoIMakeAPost extends StatefulWidget {
  
  const HowDoIMakeAPost({Key? key}) : super(key: key);

  @override
  State<HowDoIMakeAPost> createState() => _HowDoIMakeAPostState();

}



class _HowDoIMakeAPostState extends State<HowDoIMakeAPost> {


  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: Title(
        title: AppLocalizations.of(context).translate("Goyerv Support - How Do I Create A Post?"),
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

                    Text(AppLocalizations.of(context).translate("How Do I Create A Post?"), style: Theme.of(context).textTheme.headlineLarge),

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
                      onTap: () => Share.share("https://support.goyerv.com/2025/post/how-do-I-make-a-post.html"),
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
                          
                          TextSpan(text: AppLocalizations.of(context).translate('Posts on Goyerv fall into two categories: ')),

                          TextSpan(text: AppLocalizations.of(context).translate('Delivery '), style: TextStyle(fontWeight: FontWeight.bold)),

                          TextSpan(text: AppLocalizations.of(context).translate('and ')),

                          TextSpan(text: AppLocalizations.of(context).translate('Shipping'), style: TextStyle(fontWeight: FontWeight.bold)),

                          TextSpan(text: AppLocalizations.of(context).translate('. To switch between them, simply ')),

                          TextSpan(text: AppLocalizations.of(context).translate('toggle the switch '), style: TextStyle(fontWeight: FontWeight.bold)),

                          TextSpan(text: AppLocalizations.of(context).translate('on the ')),

                          TextSpan(text: AppLocalizations.of(context).translate('left-hand '), style: TextStyle(fontWeight: FontWeight.bold)),

                          TextSpan(text: AppLocalizations.of(context).translate('side of the Create Post screen.\n\nIn a ')),

                          TextSpan(text: AppLocalizations.of(context).translate('Delivery post'), style: TextStyle(fontWeight: FontWeight.bold)),

                          TextSpan(text: AppLocalizations.of(context).translate(', you can only share one location—your current one. It’s ideal for quick errands or nearby deliveries.\n\n')),

                          TextSpan(text: AppLocalizations.of(context).translate('Shipping posts '), style: TextStyle(fontWeight: FontWeight.bold)),

                          TextSpan(text: AppLocalizations.of(context).translate('''are designed for longer or multi-stop trips. You must share at least two locations: where you are now and where you’re headed. You can add up to four in total—the first is your starting point, the next two are any planned stops, and the last is your final destination.\n\nOnce your details are set, just hit “Post,” and your location will go live for others to see and send you requests while you're active.''')),


                        ]
                      )
                    ),


                    sbhavg,

                    Text(AppLocalizations.of(context).translate("Was this helpful?"), style: Theme.of(context).textTheme.bodyLarge),

                    sbhavg,


                    Row(
                      children: [

                        OutlinedButton(
                          onPressed: () => BlocProvider.of<GuidesBloc>(context).add(RateGuideEvent("2025/post/3", true)),
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
                          onPressed: () => BlocProvider.of<GuidesBloc>(context).add(RateGuideEvent("2025/post/3", false)),
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


                    OnHover(builder: (isHovered, context) => TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const HowDoIScanAQRCode())), child: Text(AppLocalizations.of(context).translate("How do I scan QR-Codes?\n\n"), style: Theme.of(context).textTheme.titleLarge!.copyWith(color: blue, decoration: isHovered? TextDecoration.underline : TextDecoration.underline)),)),

                    OnHover(builder: (isHovered, context) => TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const HowDoICounterARequest())), child: Text(AppLocalizations.of(context).translate("How do I counter a request?\n\n"), style: Theme.of(context).textTheme.titleLarge!.copyWith(color: blue, decoration: isHovered? TextDecoration.underline : TextDecoration.underline)),)),

                    OnHover(builder: (isHovered, context) => TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const HowDoIMakeARequest())), child: Text(AppLocalizations.of(context).translate("How do I make a request?\n\n"), style: Theme.of(context).textTheme.titleLarge!.copyWith(color: blue, decoration: isHovered? TextDecoration.underline : TextDecoration.underline)),)),

                    OnHover(builder: (isHovered, context) => TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const TerminatingRequests())), child: Text(AppLocalizations.of(context).translate("Terminating a request\n\n"), style: Theme.of(context).textTheme.titleLarge!.copyWith(color: blue, decoration: isHovered? TextDecoration.underline : TextDecoration.underline)),)),

                    OnHover(builder: (isHovered, context) => TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const HowDoIDeleteMyAccount())), child: Text(AppLocalizations.of(context).translate("How do I delete my account?\n\n"), style: Theme.of(context).textTheme.titleLarge!.copyWith(color: blue, decoration: isHovered? TextDecoration.underline : TextDecoration.underline)),)),


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