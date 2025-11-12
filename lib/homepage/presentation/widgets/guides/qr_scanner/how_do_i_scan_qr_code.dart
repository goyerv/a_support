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


class HowDoIScanAQRCode extends StatefulWidget {

  final void Function(Locale) onLocaleChanged;
  
  const HowDoIScanAQRCode(this.onLocaleChanged, {Key? key}) : super(key: key);

  @override
  State<HowDoIScanAQRCode> createState() => _HowDoIScanAQRCodeState();

}



class _HowDoIScanAQRCodeState extends State<HowDoIScanAQRCode> {


  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: Title(
        // title: AppLocalizations.of(context).translate("Goyerv Support - How Do I Scan QR Codes?"),
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

                    Text(AppLocalizations.of(context).translate("How Do I Scan QR Codes?"), style: Theme.of(context).textTheme.headlineLarge),

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
                            text: AppLocalizations.of(context).translate("QR Scanner"),
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                          
                        ]
                      )
                    ),

                    const SizedBox(height: 15),


                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () => Share.share("https://support.goyerv.com/guides/qr/how-do-I-scan-qr-codes.html"),
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
                        '''When a runner accepts a request on Goyerv, a unique QR code is automatically generated and sent to the user who made the request. This QR code should be printed and securely attached to the parcel before it is handed over.\n\nThe QR code functions like a shipping label. It contains essential details such as the parcel’s weight, destination, request ID, and other relevant information the runner needs to fulfill the request accurately.\n\nFor security reasons, only three parties can scan the QR code: the runner who accepted the request, the user who created the request, and Goyerv. This ensures that parcel data remains protected and accessible only to those directly involved in the transaction.'''
                      ),
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),


                    sbhavg, sbhmax,

                    Text(AppLocalizations.of(context).translate("Was this helpful?"), style: Theme.of(context).textTheme.bodyLarge),

                    sbhavg,


                    Row(
                      children: [

                        OutlinedButton(
                          onPressed: () => BlocProvider.of<GuidesBloc>(context).add(RateGuideEvent("2025/qr_scanner/1", true)),
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
                          onPressed: () => BlocProvider.of<GuidesBloc>(context).add(RateGuideEvent("2025/qr_scanner/1", false)),
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

                    OnHover(builder: (isHovered, context) => TextButton(onPressed: () => context.go('/guides/requests/how-do-I-counter-a-request'), child: Text(AppLocalizations.of(context).translate("How do I counter a request?"), style: Theme.of(context).textTheme.titleMedium!.copyWith(color: blue, decoration: isHovered? TextDecoration.underline : TextDecoration.none, decorationColor: blue)),)),

                    OnHover(builder: (isHovered, context) => TextButton(onPressed: () => context.go('/guides/requests/how-do-I-make-a-request'), child: Text(AppLocalizations.of(context).translate("How do I make a request?"), style: Theme.of(context).textTheme.titleMedium!.copyWith(color: blue, decoration: isHovered? TextDecoration.underline : TextDecoration.none, decorationColor: blue)),)),

                    OnHover(builder: (isHovered, context) => TextButton(onPressed: () => context.go('/guides/requests/terminating-a-request'), child: Text(AppLocalizations.of(context).translate("Terminating a request"), style: Theme.of(context).textTheme.titleMedium!.copyWith(color: blue, decoration: isHovered? TextDecoration.underline : TextDecoration.none, decorationColor: blue)),)),

                    OnHover(builder: (isHovered, context) => TextButton(onPressed: () => context.go('/guides/settings/how-do-I-delete-my-account'), child: Text(AppLocalizations.of(context).translate("How do I delete my account?"), style: Theme.of(context).textTheme.titleMedium!.copyWith(color: blue, decoration: isHovered? TextDecoration.underline : TextDecoration.none, decorationColor: blue)),)),

                    OnHover(builder: (isHovered, context) => TextButton(onPressed: () => context.go('/guides/settings/how-do-I-delete-a-saved-bank-account'), child: Text(AppLocalizations.of(context).translate("How do I delete a saved bank account?"), style: Theme.of(context).textTheme.titleMedium!.copyWith(color: blue, decoration: isHovered? TextDecoration.underline : TextDecoration.none, decorationColor: blue)),)),


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