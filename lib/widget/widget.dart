// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../email_support/presentation/states/email_support.dart';
import '../../goyerv/presentation/states/call_support.dart';
import '../../goyerv/presentation/states/languages_state.dart';
import '../../homepage/presentation/states/homepage.dart';
import '../global_fields/fields.dart';
import '../internationalization/app_localizations.dart';
import '../internationalization/locales_preferences.dart';
import '../util/hover.dart';


  bool makeResourcesVisible = false;
  bool makeReachOutVisible = false;
  bool makeSoftwareVisible = false;
  bool makeLegalVisible = false;

PreferredSizeWidget? appBar(BuildContext context) {
  return AppBar(
    automaticallyImplyLeading: false,
    // leading: InkWell(onTap: () => launchUrl(Uri.parse('https://www.goyerv.com')), child: Image.asset('images/goyerv_logo.png', fit: BoxFit.scaleDown, filterQuality: FilterQuality.high, semanticLabel: AppLocalizations.of(context).translate('Goyerv logo'), matchTextDirection: false)),

    title: Row(children: [InkWell(overlayColor: MaterialStateColor.resolveWith((states) => transparent), onTap: () => launchUrl(Uri.parse('https://www.goyerv.com')), child: SizedBox(width: 35.0, height: 35.0, child: Image.asset('images/goyerv_logo.png', fit: BoxFit.scaleDown, filterQuality: FilterQuality.high, semanticLabel: AppLocalizations.of(context).translate('Goyerv logo'), matchTextDirection: false))), const SizedBox(width: 10.0), TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const Homepage())), child: Text(AppLocalizations.of(context).translate('Support'), style: Theme.of(context).textTheme.titleLarge))]),
    flexibleSpace: ClipRect(child: BackdropFilter(filter: ImageFilter.blur(sigmaX: 30.0, sigmaY: 30.0), child: Container(color: transparent))),
  );
}


Widget footer(BuildContext context, void Function(void Function() n) setState) {

  FocusNode focusNodeOne = FocusNode();
  FocusNode focusNodeTwo = FocusNode();
  FocusNode focusNodeThree = FocusNode();
  FocusNode focusNodeFour = FocusNode();
  FocusNode focusNodeFive = FocusNode();
  FocusNode focusNodeSix = FocusNode();
  FocusNode focusNodeSeven = FocusNode();
  FocusNode focusNodeEight = FocusNode();
  FocusNode focusNodeNine = FocusNode();
  FocusNode focusNodeTen = FocusNode();
  FocusNode focusNodeEleven = FocusNode();
  FocusNode focusNodeTwelve = FocusNode();
  FocusNode focusNodeThirteen = FocusNode();
  FocusNode focusNodeFourteen = FocusNode();
  FocusNode focusNodeFifteen = FocusNode();
  FocusNode focusNodeSixteen = FocusNode();
  FocusNode focusNodeSeventeen = FocusNode();
  FocusNode focusNodeEighteen = FocusNode();
  FocusNode focusNodeNineteen = FocusNode();
  FocusNode focusNodeTwenty = FocusNode();
  FocusNode focusNodeTwentyOne = FocusNode();
  FocusNode focusNodeTwentyTwo = FocusNode();
  FocusNode focusNodeTwentyThree = FocusNode();
  FocusNode focusNodeTwentyFour = FocusNode();


  // SharedPreferences sharedPreferences = await SharedPreferences.getInstance().then((value) => value);
  // LocalesPreferencesImpl localesPreferences = LocalesPreferencesImpl(sharedPreferences);
  // String language = await localesPreferences.getLanguageKey();
  
  
  Uri uri = Uri.parse('https://www.goyerv.com');
  
  Uri uriResources = Uri.parse('https://resources.goyerv.com');
  Uri uriNews = Uri.parse('https://news.goyerv.com');
  Uri uriVideos = Uri.parse('https://www.youtube.com/@Goyerv');
  // Uri uriGoyerv = Uri.parse('https://www.goyerv.com/profiles/goyerv');
  Uri uriFacebook = Uri.parse('https://www.facebook.com/Goyerv.temporary?mibextid=ZbWKwL');
  Uri uriTwitter = Uri.parse('https://twitter.com/goyerv_');
  Uri uriInstagram = Uri.parse('https://www.instagram.com/goyerv_/');
  
  Uri uriApi = Uri.parse('https://developers.goyerv.com'); // Later: https://developers.goyerv.com/api
  Uri uriOpenSource = Uri.parse('https://www.github.com/goyerv');
  Uri uriDocumentation = Uri.parse('https://developers.goyerv.com'); //Later: https://developers.goyerv.com/documentation
  Uri uriEmbedding = Uri.parse('https://developers.goyerv.com/'); //Later: https://developers.goyerv.com/embedding
  
  
  Uri uriTerms = Uri.parse('https://legal.goyerv.com'); //Later: https://legal.goyerv.com/terms
  Uri uriPrivacy = Uri.parse('https://legal.goyerv.com'); //Later: https://legal.goyerv.com/privacy
  Uri uriAbout = Uri.parse('https://legal.goyerv.com'); //Later: https://legal.goyerv.com/about
  Uri uriCareers = Uri.parse('https://careers.goyerv.com');
  
  
  // Uri uriGoyervSupport = Uri.parse('https://goyerv.com/profiles/goyerv_support');
  Uri uriCommunities = Uri.parse('https://community.goyerv.com');
  Uri uriTwitterSupport = Uri.parse('https://twitter.com/---');


  return Container(
    alignment: Alignment.bottomCenter,
    color: Theme.of(context).primaryColorLight,
    padding: MediaQuery.of(context).size.width < 1100? const EdgeInsets.all(15) : const EdgeInsets.all(20),
    child: MediaQuery.of(context).size.width < 1100?  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
    
        ListTile(
          onTap: () {setState(() {makeResourcesVisible = !makeResourcesVisible;});  },
          title: Text(AppLocalizations.of(context).translate('Resources'), style: Theme.of(context).textTheme.labelLarge!..copyWith(fontWeight: FontWeight.w600)),
          trailing: Icon(makeResourcesVisible? chevronUp : chevronDown, size: 20.0, semanticLabel: AppLocalizations.of(context).translate(makeResourcesVisible? 'Keyboard arrow up' : 'Keyboard arrow down')),
          focusNode: focusNodeTwentyOne,
        ),
    
        sbhmin,

        const Divider(color: grey, thickness: 2.0),

        sbhmin,
    
        Animate(
          effects: const [FadeEffect(duration: Duration(milliseconds: 1000), curve: Curves.easeOut)],
          child: Offstage(
            offstage: !makeResourcesVisible,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
        
                Animate(effects: const [FadeEffect(duration: Duration(milliseconds: 1000), curve: Curves.easeOut)], child: OnHover(builder: (isHovered, context) => TextButton(onPressed: () => launchUrl(uriResources), focusNode: focusNodeOne, child: Text(AppLocalizations.of(context).translate('Resources'), style: Theme.of(context).textTheme.labelSmall!..copyWith(color: isHovered? defaultColor : Theme.of(context).textTheme.bodyLarge!.color)),))),
          
                sbhmin,
          
                AnimatedContainer(duration: const Duration(milliseconds: 60), child: OnHover(builder: (isHovered, context) => TextButton(onPressed: () => launchUrl(uriNews), focusNode: focusNodeTwo, child: Text(AppLocalizations.of(context).translate('News'), style: Theme.of(context).textTheme.labelSmall!..copyWith(color: isHovered? defaultColor : Theme.of(context).textTheme.labelSmall!.color)),))),
          
                sbhmin,
          
                AnimatedContainer(duration: const Duration(milliseconds: 88), child: OnHover(builder: (isHovered, context) => TextButton(onPressed: () => launchUrl(uriVideos), focusNode: focusNodeThree, child: Text(AppLocalizations.of(context).translate('Goyerv guide videos'), style: Theme.of(context).textTheme.labelSmall!..copyWith(color: isHovered? defaultColor : Theme.of(context).textTheme.labelSmall!.color)),))),
          
                sbhmin,
          
                AnimatedContainer(duration: const Duration(milliseconds: 116), child: OnHover(builder: (isHovered, context) => TextButton(onPressed: () {}, focusNode: focusNodeFour, child: Text(AppLocalizations.of(context).translate('@Goyerv (Goyerv)'), style: Theme.of(context).textTheme.labelSmall!..copyWith(color: isHovered? defaultColor : Theme.of(context).textTheme.labelSmall!.color)),))),
          
                sbhmin,
          
                AnimatedContainer(duration: const Duration(milliseconds: 144), child: OnHover(builder: (isHovered, context) => TextButton(onPressed: () => launchUrl(uriFacebook), focusNode: focusNodeFive, child: Text(AppLocalizations.of(context).translate('@Goyerv (FaceBook)'), style: Theme.of(context).textTheme.labelSmall!..copyWith(color: isHovered? defaultColor : Theme.of(context).textTheme.labelSmall!.color)),))),
          
                sbhmin,
          
                AnimatedContainer(duration: const Duration(milliseconds: 172), child: OnHover(builder: (isHovered, context) => TextButton(onPressed: () => launchUrl(uriTwitter), focusNode: focusNodeSix, child: Text(AppLocalizations.of(context).translate('@Goyerv (Twitter)'), style: Theme.of(context).textTheme.labelSmall!..copyWith(color: isHovered? defaultColor : Theme.of(context).textTheme.labelSmall!.color)),))),
          
                sbhmin,
          
                AnimatedContainer(duration: const Duration(milliseconds: 200), child: OnHover(builder: (isHovered, context) => TextButton(onPressed: () => launchUrl(uriInstagram), focusNode: focusNodeSeven, child: Text(AppLocalizations.of(context).translate('@Goyerv (Instagram)'), style: Theme.of(context).textTheme.labelSmall!..copyWith(color: isHovered? defaultColor : Theme.of(context).textTheme.labelSmall!.color)),))),
            
              ],
            )
          ),
        ),
    
        ListTile(
          onTap: () => setState(() => makeReachOutVisible = !makeReachOutVisible),
          title: Text(AppLocalizations.of(context).translate('Reach Out'), style: Theme.of(context).textTheme.labelLarge!..copyWith(fontWeight: FontWeight.w600)),
          trailing: Icon(makeReachOutVisible? chevronUp : chevronDown, size: 20.0, semanticLabel: AppLocalizations.of(context).translate(makeResourcesVisible? 'Keyboard arrow up' : 'Keyboard arrow down')),
          focusNode: focusNodeTwentyTwo,
        ),
                      
        sbhmin,

        const Divider(color: grey, thickness: 2.0),

        sbhmin,
    
        Offstage(
          offstage: !makeReachOutVisible,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                      
              AnimatedContainer(duration: const Duration(milliseconds: 0), child: OnHover(builder: (isHovered, context) => TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const EmailSupport())), focusNode: focusNodeEight, child: Text(AppLocalizations.of(context).translate('Email us'), style: Theme.of(context).textTheme.labelSmall!..copyWith(color: isHovered? red : Theme.of(context).textTheme.labelSmall!.color)),))),
    
              sbhmin,
    
              AnimatedContainer(duration: const Duration(milliseconds: 40), child: OnHover(builder: (isHovered, context) => TextButton(onPressed: ()  => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const CallSupport())), focusNode: focusNodeNine, child: Text(AppLocalizations.of(context).translate('Call us'), style: Theme.of(context).textTheme.labelSmall!..copyWith(color: isHovered? defaultColor : Theme.of(context).textTheme.labelSmall!.color)),))),
    
              sbhmin,
    
              AnimatedContainer(duration: const Duration(milliseconds: 80), child: OnHover(builder: (isHovered, context) => TextButton(onPressed: ()  => launchUrl(uriCommunities), focusNode: focusNodeTen, child: Text(AppLocalizations.of(context).translate('Goyerv communities'), style: Theme.of(context).textTheme.labelSmall!..copyWith(color: isHovered? defaultColor : Theme.of(context).textTheme.labelSmall!.color)),))),
    
              sbhmin,
    
              AnimatedContainer(duration: const Duration(milliseconds: 120), child: OnHover(builder: (isHovered, context) => TextButton(onPressed: () {}, focusNode: focusNodeEleven, child: Text(AppLocalizations.of(context).translate('@GoyervSupport (Goyerv)'), style: Theme.of(context).textTheme.labelSmall!..copyWith(color: isHovered? defaultColor : Theme.of(context).textTheme.labelSmall!.color)),))),
    
              sbhmin,
    
              AnimatedContainer(duration: const Duration(milliseconds: 160), child: OnHover(builder: (isHovered, context) => TextButton(onPressed: () => launchUrl(uriTwitterSupport), focusNode: focusNodeTwelve, child: Text(AppLocalizations.of(context).translate('@GoyervSupport (Twitter)'), style: Theme.of(context).textTheme.labelSmall!..copyWith(color: isHovered? defaultColor : Theme.of(context).textTheme.labelSmall!.color)),))),

            ],
           )
         ),
    
    
    
        ListTile(
          onTap: () => setState(() => makeSoftwareVisible = !makeSoftwareVisible),
          title: Text(AppLocalizations.of(context).translate('Software'), style: Theme.of(context).textTheme.labelLarge!..copyWith(fontWeight: FontWeight.w600)),
          trailing: Icon(makeReachOutVisible? chevronUp : chevronDown, size: 20.0, semanticLabel: AppLocalizations.of(context).translate(makeResourcesVisible? 'Keyboard arrow up' : 'Keyboard arrow down')),
          focusNode: focusNodeTwentyThree,
        ),
                      
        sbhmin,

        const Divider(color: grey, thickness: 2.0),

        sbhmin,

    
        Offstage(
          offstage: !makeSoftwareVisible,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                     
              AnimatedContainer(duration: const Duration(milliseconds: 0), child: OnHover(builder: (isHovered, context) => TextButton(onPressed: () => launchUrl(uriApi), focusNode: focusNodeThirteen, child: Text(AppLocalizations.of(context).translate('APIs'), style: Theme.of(context).textTheme.labelSmall!..copyWith(color: isHovered? defaultColor : Theme.of(context).textTheme.labelSmall!.color)),))),
    
              sbhmin,
    
              AnimatedContainer(duration: const Duration(milliseconds: 50), child: OnHover(builder: (isHovered, context) => TextButton(onPressed: () => launchUrl(uriDocumentation), focusNode: focusNodeFourteen, child: Text(AppLocalizations.of(context).translate('Documentation'), style: Theme.of(context).textTheme.labelSmall!..copyWith(color: isHovered? defaultColor : Theme.of(context).textTheme.labelSmall!.color)),))),
    
              sbhmin,
    
              AnimatedContainer(duration: const Duration(milliseconds: 100), child: OnHover(builder: (isHovered, context) => TextButton(onPressed: () => launchUrl(uriOpenSource), focusNode: focusNodeFifteen, child: Text(AppLocalizations.of(context).translate('Open Source'), style: Theme.of(context).textTheme.labelSmall!..copyWith(color: isHovered? defaultColor : Theme.of(context).textTheme.labelSmall!.color)),))),
    
              sbhmin,
    
              AnimatedContainer(duration: const Duration(milliseconds: 150), child: OnHover(builder: (isHovered, context) => TextButton(onPressed: () => launchUrl(uriEmbedding), focusNode: focusNodeSixteen, child: Text(AppLocalizations.of(context).translate('Embedding'), style: Theme.of(context).textTheme.labelSmall!..copyWith(color: isHovered? defaultColor : Theme.of(context).textTheme.labelSmall!.color)),))),

            ],
          )
         ),
    
    
        ListTile(
          onTap: () => setState(() => makeLegalVisible = !makeLegalVisible),
          title: Text(AppLocalizations.of(context).translate('Legal'), style: Theme.of(context).textTheme.labelLarge!..copyWith(fontWeight: FontWeight.w600)),
          trailing: Icon(makeReachOutVisible? chevronUp : chevronDown, size: 20.0, semanticLabel: AppLocalizations.of(context).translate(makeResourcesVisible? 'Keyboard arrow up' : 'Keyboard arrow down')),
          focusNode: focusNodeTwentyFour,
        ),           
        
        sbhmin,

        const Divider(color: grey, thickness: 2.0),

        sbhmin,
    
        Offstage(
          offstage: !makeLegalVisible,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                            
              AnimatedContainer(duration: const Duration(milliseconds: 0), child: OnHover(builder: (isHovered, context) => TextButton(onPressed: () => launchUrl(uriTerms), focusNode: focusNodeSeventeen, child: Text(AppLocalizations.of(context).translate('Terms and conditions'), style: Theme.of(context).textTheme.labelSmall!..copyWith(color: isHovered? defaultColor : Theme.of(context).textTheme.labelSmall!.color)),))),
        
              sbhmin,
        
              AnimatedContainer(duration: const Duration(milliseconds: 50), child: OnHover(builder: (isHovered, context) => TextButton(onPressed: () => launchUrl(uriPrivacy), focusNode: focusNodeEighteen, child: Text(AppLocalizations.of(context).translate('Privacy policy'), style: Theme.of(context).textTheme.labelSmall!..copyWith(color: isHovered? defaultColor : Theme.of(context).textTheme.labelSmall!.color)),))),
        
              sbhmin,
        
              AnimatedContainer(duration: const Duration(milliseconds: 100), child: OnHover(builder: (isHovered, context) => TextButton(onPressed: () => launchUrl(uriCareers), focusNode: focusNodeNineteen, child: Text(AppLocalizations.of(context).translate('Careers'), style: Theme.of(context).textTheme.labelSmall!..copyWith(color: isHovered? defaultColor : Theme.of(context).textTheme.labelSmall!.color)),))),
        
              sbhmin,
        
              AnimatedContainer(duration: const Duration(milliseconds: 150), child: OnHover(builder: (isHovered, context) => TextButton(onPressed: () => launchUrl(uriAbout), focusNode: focusNodeTwenty, child: Text(AppLocalizations.of(context).translate('About'), style: Theme.of(context).textTheme.labelSmall!..copyWith(color: isHovered? defaultColor : Theme.of(context).textTheme.labelSmall!.color)),))),
    
            ],
          )
        ),
    
        sbhavg,

        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            RichText(text: TextSpan(children: [ TextSpan(text: '© ${DateFormat('yyyy').format(DateTime.now())} ', style: Theme.of(context).textTheme.labelSmall),  TextSpan(text: 'Goyerv ', recognizer: TapGestureRecognizer()..onTap = () => launchUrl(uri), style: Theme.of(context).textTheme.labelSmall), TextSpan(text: AppLocalizations.of(context).translate('LLC. All rights reserved'), style: Theme.of(context).textTheme.labelSmall), ])),

          ],
        ),

        sbhavg,

        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const Languages())), focusNode: focusNodeSix, style: Theme.of(context).textButtonTheme.style!.copyWith(backgroundColor: MaterialStateProperty.all(transparent)), child: RichText(text: TextSpan(children: [ WidgetSpan(child: Icon(Icons.language, color: Theme.of(context).iconTheme.color, size: 20.0, semanticLabel: AppLocalizations.of(context).translate('Globe(Language) icon'))), WidgetSpan(child: sbwmin,), TextSpan(text: AppLocalizations.of(context).translate('English'), style: Theme.of(context).textTheme.labelSmall), ] ))),

          ],
        ),
        
      ], // Mobile
    ) : Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
    
        // Legal(Terms, Privacy, Careers, About),
    
        // Developers (Api, Documentations, OpenSource, Embedding) // Future
      
        // Resources(Articles, Blog, Goyerv guide videos, @Goyerv (Goyerv), @Goyerv (Twitter), @Goyerv (Facebook), @Goyerv(Instagram)),
                        
        // Reach Out (email us, call us, Goyerv communities, @GoyervSupport(Goyerv), @GoyervSupport(Twitter))
      
        Wrap(
          // crossAxisAlignment: WrapCrossAlignment.center,
          // alignment: WrapAlignment.spaceEvenly, 
          spacing: MediaQuery.of(context).size.height * 0.28,
          children: [
                            

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
          
              Text(AppLocalizations.of(context).translate('Resources'), style: Theme.of(context).textTheme.labelLarge!..copyWith(fontWeight: FontWeight.w600)),
          
              sbhavg,
          
              OnHover(builder: (isHovered, context) => TextButton(onPressed: () => launchUrl(uriResources), focusNode: focusNodeOne, child: Text(AppLocalizations.of(context).translate('Resources'), style: Theme.of(context).textTheme.labelSmall!..copyWith(color: isHovered? defaultColor : Theme.of(context).textTheme.labelSmall!.color)),)),
          
              sbhmin,
          
              OnHover(builder: (isHovered, context) => TextButton(onPressed: () => launchUrl(uriNews), focusNode: focusNodeTwo, child: Text(AppLocalizations.of(context).translate('News'), style: Theme.of(context).textTheme.labelSmall!..copyWith(color: isHovered? defaultColor : Theme.of(context).textTheme.labelSmall!.color)),)),
          
              sbhmin,
          
              OnHover(builder: (isHovered, context) => TextButton(onPressed: () => launchUrl(uriVideos), focusNode: focusNodeThree, child: Text(AppLocalizations.of(context).translate('Goyerv guide videos'), style: Theme.of(context).textTheme.labelSmall!..copyWith(color: isHovered? defaultColor : Theme.of(context).textTheme.labelSmall!.color)),)),
          
              sbhmin,
          
              OnHover(builder: (isHovered, context) => TextButton(onPressed: () {}, focusNode: focusNodeFour, child: Text(AppLocalizations.of(context).translate('@Goyerv (Goyerv)'), style: Theme.of(context).textTheme.labelSmall!..copyWith(color: isHovered? defaultColor : Theme.of(context).textTheme.labelSmall!.color)),)),
          
              sbhmin,
          
              OnHover(builder: (isHovered, context) => TextButton(onPressed: () => launchUrl(uriFacebook), focusNode: focusNodeFive, child: Text(AppLocalizations.of(context).translate('@Goyerv (FaceBook)'), style: Theme.of(context).textTheme.labelSmall!..copyWith(color: isHovered? defaultColor : Theme.of(context).textTheme.labelSmall!.color)),)),
          
              sbhmin,
          
              OnHover(builder: (isHovered, context) => TextButton(onPressed: () => launchUrl(uriTwitter), focusNode: focusNodeSix, child: Text(AppLocalizations.of(context).translate('@Goyerv (Twitter)'), style: Theme.of(context).textTheme.labelSmall!..copyWith(color: isHovered? defaultColor : Theme.of(context).textTheme.labelSmall!.color)),)),
          
              sbhmin,
          
              OnHover(builder: (isHovered, context) => TextButton(onPressed: () => launchUrl(uriInstagram), focusNode: focusNodeSeven, child: Text(AppLocalizations.of(context).translate('@Goyerv (Instagram)'), style: Theme.of(context).textTheme.labelSmall!..copyWith(color: isHovered? defaultColor : Theme.of(context).textTheme.labelSmall!.color)),)),
      
      
          
            ],
          ),
      
      
          
            
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          
              Text(AppLocalizations.of(context).translate('Reach Out'), style: Theme.of(context).textTheme.labelLarge!..copyWith(fontWeight: FontWeight.w600)),
          
              sbhavg,
          
              OnHover(builder: (isHovered, context) => TextButton(onPressed: ()  => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const EmailSupport())), focusNode: focusNodeEight, child: Text(AppLocalizations.of(context).translate('Email us'), style: Theme.of(context).textTheme.labelSmall!..copyWith(color: isHovered? defaultColor : Theme.of(context).textTheme.labelSmall!.color)),)),
          
              sbhmin,
          
              OnHover(builder: (isHovered, context) => TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const CallSupport())), focusNode: focusNodeNine, child: Text(AppLocalizations.of(context).translate('Call us'), style: Theme.of(context).textTheme.labelSmall!..copyWith(color: isHovered? defaultColor : Theme.of(context).textTheme.labelSmall!.color)),)),
          
              sbhmin,
          
              OnHover(builder: (isHovered, context) => TextButton(onPressed: () => launchUrl(uriCommunities), focusNode: focusNodeTen, child: Text(AppLocalizations.of(context).translate('Goyerv communities'), style: Theme.of(context).textTheme.labelSmall!..copyWith(color: isHovered? defaultColor : Theme.of(context).textTheme.labelSmall!.color)),)),
          
              sbhmin,
          
              OnHover(builder: (isHovered, context) => TextButton(onPressed: () {}, focusNode: focusNodeEleven, child: Text(AppLocalizations.of(context).translate('@GoyervSupport (Goyerv)'), style: Theme.of(context).textTheme.labelSmall!..copyWith(color: isHovered? defaultColor : Theme.of(context).textTheme.labelSmall!.color)),)),
          
              sbhmin,
          
              OnHover(builder: (isHovered, context) => TextButton(onPressed: () => launchUrl(uriTwitterSupport), focusNode: focusNodeTwelve, child: Text(AppLocalizations.of(context).translate('@GoyervSupport (Twitter)'), style: Theme.of(context).textTheme.labelSmall!..copyWith(color: isHovered? defaultColor : Theme.of(context).textTheme.labelSmall!.color)),)),
          
            ],
          ),
      
          
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          
              Text(AppLocalizations.of(context).translate('Software'), style: Theme.of(context).textTheme.labelLarge!..copyWith(fontWeight: FontWeight.w600)),
          
              sbhavg,
          
              OnHover(builder: (isHovered, context) => TextButton(onPressed: () => launchUrl(uriApi), focusNode: focusNodeThirteen, child: Text(AppLocalizations.of(context).translate('APIs'), style: Theme.of(context).textTheme.labelSmall!..copyWith(color: isHovered? defaultColor : Theme.of(context).textTheme.labelSmall!.color)),)),
          
              sbhmin,
          
              OnHover(builder: (isHovered, context) => TextButton(onPressed: () => launchUrl(uriDocumentation), focusNode: focusNodeFourteen, child: Text(AppLocalizations.of(context).translate('Documentation'), style: Theme.of(context).textTheme.labelSmall!..copyWith(color: isHovered? defaultColor : Theme.of(context).textTheme.labelSmall!.color)),)),
          
              sbhmin,
          
              OnHover(builder: (isHovered, context) => TextButton(onPressed: () => launchUrl(uriOpenSource), focusNode: focusNodeFifteen, child: Text(AppLocalizations.of(context).translate('Open Source'), style: Theme.of(context).textTheme.labelSmall!..copyWith(color: isHovered? defaultColor : Theme.of(context).textTheme.labelSmall!.color)),)),
          
              sbhmin,
          
              OnHover(builder: (isHovered, context) => TextButton(onPressed: () => launchUrl(uriEmbedding), focusNode: focusNodeSixteen, child: Text(AppLocalizations.of(context).translate('Embedding'), style: Theme.of(context).textTheme.labelSmall!..copyWith(color: isHovered? defaultColor : Theme.of(context).textTheme.labelSmall!.color)),)),
          
            ],
          ),
      
          
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          
              Text(AppLocalizations.of(context).translate('Legal'), style: Theme.of(context).textTheme.labelLarge!..copyWith(fontWeight: FontWeight.w600)),
          
              sbhavg,
          
              OnHover(builder: (isHovered, context) => TextButton(onPressed: () => launchUrl(uriTerms), focusNode: focusNodeSeventeen, child: Text(AppLocalizations.of(context).translate('Terms and conditions'), style: Theme.of(context).textTheme.labelSmall!..copyWith(color: isHovered? defaultColor : Theme.of(context).textTheme.labelSmall!.color)),)),
          
              sbhmin,
          
              OnHover(builder: (isHovered, context) => TextButton(onPressed: () => launchUrl(uriPrivacy), focusNode: focusNodeEighteen, child: Text(AppLocalizations.of(context).translate('Privacy policy'), style: Theme.of(context).textTheme.labelSmall!..copyWith(color: isHovered? defaultColor : Theme.of(context).textTheme.labelSmall!.color)),)),
          
              sbhmin,
          
              OnHover(builder: (isHovered, context) => TextButton(onPressed: () => launchUrl(uriCareers), focusNode: focusNodeNineteen, child: Text(AppLocalizations.of(context).translate('Careers'), style: Theme.of(context).textTheme.labelSmall!..copyWith(color: isHovered? defaultColor : Theme.of(context).textTheme.labelSmall!.color)),)),
          
              sbhmin,
          
              OnHover(builder: (isHovered, context) => TextButton(onPressed: () => launchUrl(uriAbout), focusNode: focusNodeTwenty, child: Text(AppLocalizations.of(context).translate('About'), style: Theme.of(context).textTheme.labelSmall!..copyWith(color: isHovered? defaultColor : Theme.of(context).textTheme.labelSmall!.color)),)),
          
            ],
          ),
    
        ],
      ),
    
      sbhavg,
    
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          RichText(text: TextSpan(children: [ TextSpan(text: '© ${DateFormat('yyyy').format(DateTime.now())} ', style: Theme.of(context).textTheme.labelSmall),  TextSpan(text: 'Goyerv ', recognizer: TapGestureRecognizer()..onTap = () => launchUrl(uri), style: Theme.of(context).textTheme.labelSmall), TextSpan(text: AppLocalizations.of(context).translate('LLC. All rights reserved'), style: Theme.of(context).textTheme.labelSmall), ])),

      
          TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const Languages())), focusNode: focusNodeSix, style: Theme.of(context).textButtonTheme.style!.copyWith(backgroundColor: MaterialStateProperty.all(transparent)), child: RichText(text: TextSpan(children: [ WidgetSpan(child: Icon(language, color: Theme.of(context).iconTheme.color, size: 20.0, semanticLabel: AppLocalizations.of(context).translate('Globe(Language) icon'))), WidgetSpan(child: sbwmin,), TextSpan(text: AppLocalizations.of(context).translate('English'), style: Theme.of(context).textTheme.labelSmall), ] ))),

        ],
      )

    ]),
  );

}