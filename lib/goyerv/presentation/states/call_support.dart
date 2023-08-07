// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../guides/presentation/states/guides.dart';
import '../../../web_core/global_fields/fields.dart';
import '../../../web_core/internationalization/app_localizations.dart';
import '../../../web_core/widget/widget.dart';

class CallSupport extends StatefulWidget {
  
  const CallSupport({Key? key}) : super(key: key);

  @override
  State<CallSupport> createState() => _CallSupportState();

}

class _CallSupportState extends State<CallSupport> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Theme.of(context).primaryColor,
        child: ListView(
          children: [


            Text(AppLocalizations.of(context).translate('Call Support'), style: Theme.of(context).textTheme.titleLarge, textAlign: TextAlign.center),

            sbhavg,

            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(text: AppLocalizations.of(context).translate('The phone numbers below are not toll free. This includes calls that are coming in from within Nigeria and Internationally. Additionally, due to the difference in timezones, there are times when you\'d call us and not get through. We\'re working to localize call support for every region Goyerv is active in. We encourage you to go through the '), style: Theme.of(context).textTheme.bodyLarge),
                  TextSpan(text: AppLocalizations.of(context).translate('FAQs '), recognizer: TapGestureRecognizer()..onTap = () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const Guides(true))), style: Theme.of(context).textTheme.bodyLarge!..copyWith(color: defaultColor)),
                  TextSpan(text: AppLocalizations.of(context).translate('and '), style: Theme.of(context).textTheme.bodyLarge),
                  TextSpan(text: AppLocalizations.of(context).translate('How Tos '), recognizer: TapGestureRecognizer()..onTap = () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const Guides(false))), style: Theme.of(context).textTheme.bodyLarge!..copyWith(color: defaultColor)),
                  TextSpan(text: AppLocalizations.of(context).translate('guides before calling'), style: Theme.of(context).textTheme.bodyLarge),

                ],
              ),
            ),


            //footer
            footer(context, setState)

          ]
        ),
      ),
    );
  }


}