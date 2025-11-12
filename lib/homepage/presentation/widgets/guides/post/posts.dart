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



class HowDoIMakeAPost extends StatefulWidget {

  final void Function(Locale) onLocaleChanged;
  
  const HowDoIMakeAPost(this.onLocaleChanged, {Key? key}) : super(key: key);

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
            footer: footer(context, widget.onLocaleChanged),
            flex: 8,
            children: [

              Padding(
                padding: EdgeInsets.all(MediaQuery.of(context).size.width >= 800? 50.0 : 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    sbhavg,

                    Text(AppLocalizations.of(context).translate("How Do I Create A Post?"), style: Theme.of(context).textTheme.headlineLarge),

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
                            text: AppLocalizations.of(context).translate("Post"),
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                          
                        ]
                      )
                    ),

                    const SizedBox(height: 15),


                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () => Share.share("https://support.goyerv.com/guides/post/how-do-I-make-a-post.html"),
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


                    sbhavg, sbhmax,

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
                          child: Text(AppLocalizations.of(context).translate("Helpful"), style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: grey),),
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
                          child: Text(AppLocalizations.of(context).translate("Not Helpful"), style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: grey),),
                        ),


                      ],
                    ),


                    sbhavg, sbhmax,


                    Text(AppLocalizations.of(context).translate("Related Articles"), style: Theme.of(context).textTheme.titleLarge),

                    sbhmin,


                    OnHover(builder: (isHovered, context) => TextButton(onPressed: () => context.go('/guides/qr/how-do-I-scan-qr-codes'), child: Text(AppLocalizations.of(context).translate("How do I scan QR-Codes?"), style: Theme.of(context).textTheme.titleMedium!.copyWith(color: blue, decoration: isHovered? TextDecoration.underline : TextDecoration.none, decorationColor: blue)),)),

                    OnHover(builder: (isHovered, context) => TextButton(onPressed: () => context.go('/guides/requests/how-do-I-counter-a-request'), child: Text(AppLocalizations.of(context).translate("How do I counter a request?"), style: Theme.of(context).textTheme.titleMedium!.copyWith(color: blue, decoration: isHovered? TextDecoration.underline : TextDecoration.none, decorationColor: blue)),)),

                    OnHover(builder: (isHovered, context) => TextButton(onPressed: () => context.go('/guides/requests/how-do-I-make-a-request'), child: Text(AppLocalizations.of(context).translate("How do I make a request?"), style: Theme.of(context).textTheme.titleMedium!.copyWith(color: blue, decoration: isHovered? TextDecoration.underline : TextDecoration.none, decorationColor: blue)),)),

                    OnHover(builder: (isHovered, context) => TextButton(onPressed: () => context.go('/guides/requests/terminating-a-request'), child: Text(AppLocalizations.of(context).translate("Terminating a request"), style: Theme.of(context).textTheme.titleMedium!.copyWith(color: blue, decoration: isHovered? TextDecoration.underline : TextDecoration.none, decorationColor: blue)),)),

                    OnHover(builder: (isHovered, context) => TextButton(onPressed: () => context.go('/guides/settings/how-do-I-delete-my-account'), child: Text(AppLocalizations.of(context).translate("How do I delete my account?"), style: Theme.of(context).textTheme.titleMedium!.copyWith(color: blue, decoration: isHovered? TextDecoration.underline : TextDecoration.none, decorationColor: blue)),)),


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