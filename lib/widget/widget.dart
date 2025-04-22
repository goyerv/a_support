// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:footer/footer.dart';
import 'package:goyerv_support_web_app/web_core/util/hover.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../goyerv/presentation/states/languages_state.dart';
import '../../../web_core/global_fields/fields.dart';
import '../../../web_core/internationalization/app_localizations.dart';




Uri uriGoyerv = Uri.parse('https://www.goyerv.com/goyerv');
Uri uriFacebook = Uri.parse('https://web.facebook.com/profile.php?id=61573027977193');
// Remember to update this username
Uri uriX = Uri.parse('https://x.com/goyervltd');
Uri uriInstagram = Uri.parse('https://www.instagram.com/goyervltd/');
Uri uriThreads = Uri.parse('https://www.threads.net/@goyervltd');  
Uri uriYouTube = Uri.parse('https://www.youtube.com/@Goyerv');  
Uri uriLinkedIn = Uri.parse('https://www.linkedin.com/company/goyerv/');  
// TikTok


Uri uriTerms = Uri.parse('https://legal.goyerv.com');
Uri uriPrivacy = Uri.parse('https://legal.goyerv.com');
Uri uriSupport = Uri.parse('https://support.goyerv.com');
Uri uriDevelopers = Uri.parse('https://developers.goyerv.com');
Uri uriCommunity = Uri.parse('https://community.goyerv.com');
Uri uriBulletin = Uri.parse('https://bulletin.goyerv.com');
Uri uriCareers = Uri.parse('https://careers.goyerv.com');
Uri uriResources = Uri.parse('https://Resources.goyerv.com');
Uri uriAbout = Uri.parse('https://legal.goyerv.com');


FocusNode focusNodeOne = FocusNode();
FocusNode focusNodeTwo = FocusNode();
FocusNode focusNodeThree = FocusNode();
FocusNode focusNodeFour = FocusNode();
FocusNode focusNodeFive = FocusNode();




PreferredSizeWidget? appBar(BuildContext context) {

  return AppBar(
    automaticallyImplyLeading: false,
    leading: InkWell(overlayColor: WidgetStateColor.resolveWith((states) => transparent), onTap: () => launchUrl(Uri.parse('https://www.goyerv.com')), child: Image.asset('images/goyerv_logo.png', fit: BoxFit.scaleDown, filterQuality: FilterQuality.high, semanticLabel: 'Goyerv logo', matchTextDirection: false)),
    title: Text(AppLocalizations.of(context).translate('Support'), style: Theme.of(context).textTheme.titleLarge),
    flexibleSpace: ClipRect(child: BackdropFilter(filter: ImageFilter.blur(sigmaX: 40.0, sigmaY: 40.0), child: Container(color: transparent))),
  );
  
}



Footer footer(BuildContext context) {

  double screenWidth = MediaQuery.of(context).size.width;


  return Footer(
    backgroundColor: Theme.of(context).primaryColor,
    padding: EdgeInsets.all(15.0),
    child: Column(
      children: [

        sbhavg,

        Row(
          children: [
            
            GestureDetector(onTap: () => launchUrl(uriGoyerv), child: SvgPicture.asset('images/Goyerv_logo.svg', semanticsLabel: AppLocalizations.of(context).translate('Goyerv logo'))),

            sbhmin,

            GestureDetector(onTap: () => launchUrl(uriFacebook), child: SvgPicture.asset('images/Facebook_logo.svg', semanticsLabel: AppLocalizations.of(context).translate('Facebook logo'))),

            sbhmin,

            GestureDetector(onTap: () => launchUrl(uriX), child: SvgPicture.asset('images/X_logo.svg', semanticsLabel: AppLocalizations.of(context).translate('X logo'))),

            sbhmin,

            GestureDetector(onTap: () => launchUrl(uriInstagram), child: SvgPicture.asset('images/Instagram_logo.svg', semanticsLabel: AppLocalizations.of(context).translate('Instagram logo'))),

            sbhmin,

            GestureDetector(onTap: () =>launchUrl(uriThreads), child: SvgPicture.asset('images/Threads_logo.svg', semanticsLabel: AppLocalizations.of(context).translate('Threads logo'))),

            sbhmin,

            GestureDetector(onTap: () => launchUrl(uriYouTube), child: SvgPicture.asset('images/YouTube_logo.svg', semanticsLabel: AppLocalizations.of(context).translate('YouTube logo'))),

            sbhmin,

            GestureDetector(onTap: () => launchUrl(uriLinkedIn), child: SvgPicture.asset('images/LinkedIn_logo.svg', semanticsLabel: AppLocalizations.of(context).translate('LinkedIn logo'))),



            
          ],
        ),

        sbhmin,

        RichText(text: TextSpan(children: [ TextSpan(text: '© ${DateFormat('yyyy').format(DateTime.now())} ', style: Theme.of(context).textTheme.labelSmall),  TextSpan(text: '${AppLocalizations.of(context).translate('Goyerv')} ', recognizer: TapGestureRecognizer()..onTap = () => launchUrl(uriGoyerv), style: Theme.of(context).textTheme.labelSmall), TextSpan(text: AppLocalizations.of(context).translate('Ltd. All rights reserved'), style: Theme.of(context).textTheme.labelSmall), ])),

        sbhmin,

        OutlinedButton(
          onPressed: () => showDialog(context: context, barrierDismissible: true, builder: (builder) => Languages()),
          style: OutlinedButton.styleFrom(padding: EdgeInsets.symmetric(horizontal: 9, vertical: 10), backgroundColor: transparent, side: const BorderSide(color: grey, width: 2), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))), 
          child: Row(
            children: [
              Icon(language, color: Theme.of(context).iconTheme.color, size: 20.0, semanticLabel: AppLocalizations.of(context).translate('Globe(Language) icon')),

              sbwmin,

              Text(AppLocalizations.of(context).translate('Language'), style: Theme.of(context).textTheme.labelLarge,)
            ],
          )
        ),


        sbhavg,


        Center(
          child: Wrap(
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 16,
            runSpacing: 16,
            direction: screenWidth > 600 ? Axis.horizontal : Axis.vertical,
            children: [


              OnHover(builder: (isHovered, context) => TextButton(onPressed: () => launchUrl(uriTerms), focusNode: focusNodeOne, child: Text(AppLocalizations.of(context).translate('Terms'), style: Theme.of(context).textTheme.bodyLarge))),
              OnHover(builder: (isHovered, context) => TextButton(onPressed: () => launchUrl(uriPrivacy), focusNode: focusNodeTwo, child: Text(AppLocalizations.of(context).translate('Privacy'), style: Theme.of(context).textTheme.bodyLarge))),
              OnHover(builder: (isHovered, context) => TextButton(onPressed: () => launchUrl(uriSupport), focusNode: focusNodeThree, child: Text(AppLocalizations.of(context).translate('Support'), style: Theme.of(context).textTheme.bodyLarge))),
              OnHover(builder: (isHovered, context) => TextButton(onPressed: () => launchUrl(uriSupport), focusNode: focusNodeFour, child: Text(AppLocalizations.of(context).translate('Community'), style: Theme.of(context).textTheme.bodyLarge))),
              OnHover(builder: (isHovered, context) => TextButton(onPressed: () => launchUrl(uriBulletin), focusNode: focusNodeFour, child: Text(AppLocalizations.of(context).translate('Bulletin'), style: Theme.of(context).textTheme.bodyLarge))),
              OnHover(builder: (isHovered, context) => TextButton(onPressed: () => launchUrl(uriCareers), focusNode: focusNodeFour, child: Text(AppLocalizations.of(context).translate('Careers'), style: Theme.of(context).textTheme.bodyLarge))),
              OnHover(builder: (isHovered, context) => TextButton(onPressed: () => launchUrl(uriResources), focusNode: focusNodeFour, child: Text(AppLocalizations.of(context).translate('Resources'), style: Theme.of(context).textTheme.bodyLarge))),
              OnHover(builder: (isHovered, context) => TextButton(onPressed: () => launchUrl(uriDevelopers), focusNode: focusNodeFour, child: Text(AppLocalizations.of(context).translate('Developers'), style: Theme.of(context).textTheme.bodyLarge))),
              OnHover(builder: (isHovered, context) => TextButton(onPressed: () => launchUrl(uriDevelopers), focusNode: focusNodeFive, child: Text(AppLocalizations.of(context).translate('About'), style: Theme.of(context).textTheme.bodyLarge))),



          
          
            ],
          ),
        )


      ],
    )
  );
}
