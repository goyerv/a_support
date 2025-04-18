// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'package:flutter/material.dart';
import 'package:goyerv_support_web_app/web_core/widget/widget.dart';

import '../../../web_core/global_fields/fields.dart';
import '../../../web_core/internationalization/app_localizations.dart';
import '../widgets/homepage_widget.dart';
import 'package:detectable_text_field/detectable_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gradient_widgets/gradient_widgets.dart';
import 'package:url_launcher/url_launcher.dart';


import '../../../dependency_injections.dart';
import '../../../email_support/presentation/states/email_support.dart';
import '../../../goyerv/presentation/states/call_support.dart';
import '../../../guides/presentation/states/guide_details.dart';
import '../../../guides/presentation/states/guides.dart';
import '../../../web_core/global_fields/fields.dart';
import '../../../web_core/internationalization/app_localizations.dart';
import '../bloc/homepage_bloc.dart';

class Homepage extends StatefulWidget {

  const Homepage({Key? key}) : super(key: key);
  
  @override
  State<Homepage> createState() => _HomepageState();

}

class _HomepageState extends State<Homepage> {

  late String imageAsset;
  late String tabletMockup; // This should be a single image that contains an 
  // iOS, android, tablets, and desktop screens. Arrange them in a creative way 
  late String iPhoneMockup;
  late String androidMockup;
  late bool makeSuggestionsModalVisible;

  late TextEditingController _textFieldController;
  late FocusNode _textFieldFocusNode;
  late FocusNode _buttonFocusNode;
  late GlobalKey<FormState> _formKey;
  late String query;
  late Uri uri;


  late List<Map<String, dynamic>>? suggestions;

  @override 
  void initState() {
    imageAsset = 'assets/images/box.jpg';
    tabletMockup = 'assets/images/iPad Pro Mockup.png'; // Rendered for mobile only
    iPhoneMockup = 'assets/images/iPhone 12 Graphite Pro Top View Mockup.png'; // Rendered for desktop only
    androidMockup = 'assets/images/Pixel 7 Pro Mockup.png';
    makeSuggestionsModalVisible = false;
    _textFieldController = TextEditingController();
    _textFieldFocusNode = FocusNode();
    _buttonFocusNode = FocusNode();
    _formKey = GlobalKey();
    uri = Uri.parse('https://community.goyerv.com');
    super.initState();
  }


  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),

      
      body: Title(
        title: AppLocalizations.of(context).translate('Goyerv - Support'),
        color: Theme.of(context).primaryColor,
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          // padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0), This will
          // get in the way of some fine wizardry that'll get served in Bloc
          child: ListView(
            children: [

              SizedBox(
                height: MediaQuery.of(context).size.width < 800? MediaQuery.of(context).size.height * 0.5 : MediaQuery.of(context).size.height * 0.7,
                child: Image.asset('assets/images/box.jpg', filterQuality: FilterQuality.high, semanticLabel: AppLocalizations.of(context).translate('Logistics image'), fit: BoxFit.fill),
              ),


              // HomepageWidget(),


              REMEMBER THAT FOR EACH ARTICLE YOU CREATE, YOU NEED TO MANUALLY CREATE THEIR HTML PAGE,
              UPLOAD TO QSERVERS AND THEN TO GOOGLE CONSOLE

Container(
      width: MediaQuery.of(context).size.width,
      color: Theme.of(context).primaryColor,
      //Don't add padding!
      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),

      child: Column(
        children: [
      
          sbhmax,
          sbhmax,
      
          
          // Text(AppLocalizations.of(context).translate('Goyerv Support'), style: Theme.of(context).textTheme.headlineSmall),
          Text('Goyerv Support', style: Theme.of(context).textTheme.headlineSmall),
        
          sbhmax,
          sbhmax,
          sbhmax,
        
          Wrap(
            alignment: MediaQuery.of(context).size.width < 1000? WrapAlignment.start : WrapAlignment.center,
            runSpacing: 50.0,
            children: [
        
              Container(
                // width: MediaQuery.of(context).size.width * 0.5,
                child: Column(
                  crossAxisAlignment: MediaQuery.of(context).size.width < 1000? CrossAxisAlignment.start : CrossAxisAlignment.center,
                  children: [
                  
                  //   Text(AppLocalizations.of(context).translate('How Tos'), style: Theme.of(context).textTheme.titleMedium),
                    Text('How Tos', style: Theme.of(context).textTheme.titleMedium),
                    
                    sbhavg,
                  
                    // TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const Guides(false))), child: Text(AppLocalizations.of(context).translate('How to make requests'), style: Theme.of(context).textTheme.bodyLarge)),
                 
                    TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const Guides(false))), child: Text('How to make requests', style: Theme.of(context).textTheme.bodyLarge)),
                    
                    sbhmin,
                  
                    // TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const Guides(false))), child: Text(AppLocalizations.of(context).translate('How to filter out posts from your radar'), style: Theme.of(context).textTheme.bodyLarge)),
                    TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const Guides(false))), child: Text('How to filter out posts from your radar', style: Theme.of(context).textTheme.bodyLarge)),
                  
                    sbhmin,
                  
                    // TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const Guides(false))), child: Text(AppLocalizations.of(context).translate('How to make a money transfer to another goyerv account'), style: Theme.of(context).textTheme.bodyLarge)),
                    TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const Guides(false))), child: Text('How to make a money transfer to another goyerv account', style: Theme.of(context).textTheme.bodyLarge)),
                  
                    sbhmin,
                  
                    // TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const Guides(false))), child: Text(AppLocalizations.of(context).translate('How to counter requests'), style: Theme.of(context).textTheme.bodyLarge)),
                    TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const Guides(false))), child: Text('How to counter requests', style: Theme.of(context).textTheme.bodyLarge)),
                  
                    sbhmin,
                  
                    // TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const Guides(false))), child: Text(AppLocalizations.of(context).translate('How to make and share a post'), style: Theme.of(context).textTheme.bodyLarge)),
                    TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const Guides(false))), child: Text('How to make and share a post', style: Theme.of(context).textTheme.bodyLarge)),
                  
                    sbhavg,
                  
                    // TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const Guides(false))), child: Wrap(children: [Text(AppLocalizations.of(context).translate('See more'), style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: defaultColor)), const Icon(chevronRight, size: 20.0, color: defaultColor)],))
                    TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const Guides(false))), child: Wrap(children: [Text('See more', style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: defaultColor)), const Icon(chevronRight, size: 20.0, color: defaultColor)],))
                  
                  ],
                ),
              ),
        
        
        
        
              Container(
                // width: MediaQuery.of(context).size.width * 0.5,
                child: Column(
                  crossAxisAlignment: MediaQuery.of(context).size.width < 1000? CrossAxisAlignment.start : CrossAxisAlignment.center,
                  children: [
                  
                    // Text(AppLocalizations.of(context).translate('FAQs'), style: Theme.of(context).textTheme.titleMedium),
                    Text('FAQs', style: Theme.of(context).textTheme.titleMedium),
                    
                    sbhavg,
                  
                    // TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const Guides(true))), child: Text(AppLocalizations.of(context).translate('How long does it Goyerv take to process conversion applications?'), style: Theme.of(context).textTheme.bodyLarge)),
                    TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const Guides(true))), child: Text('How long does it take Goyerv to process conversion applications?', style: Theme.of(context).textTheme.bodyLarge)),
                    
                    sbhmin,
                  
                    // TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const Guides(true))), child: Text(AppLocalizations.of(context).translate('How does the available and pending balance on Goyerv mean?'), style: Theme.of(context).textTheme.bodyLarge)),
                    TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const Guides(true))), child: Text('What does the available and pending balance on Goyerv mean?', style: Theme.of(context).textTheme.bodyLarge)),
                  
                    sbhmin,
                  
                    // TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const Guides(true))), child: Text(AppLocalizations.of(context).translate('Where can I find all my pending funds?'), style: Theme.of(context).textTheme.bodyLarge)),
                    TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const Guides(true))), child: Text('Where can I find all my pending funds?', style: Theme.of(context).textTheme.bodyLarge)),
                  
                    sbhmin,
                  
                    // TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const Guides(true))), child: Text(AppLocalizations.of(context).translate('How do I make my account private?'), style: Theme.of(context).textTheme.bodyLarge)),
                    TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const Guides(true))), child: Text('How do I make my account private?', style: Theme.of(context).textTheme.bodyLarge)),
                  
                    sbhmin,
                  
                    // TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const Guides(true))), child: Text(AppLocalizations.of(context).translate('How long does crypto currency deposits take to reflect in my wallet'), style: Theme.of(context).textTheme.bodyLarge)),
                    TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const Guides(true))), child: Text('How long does crypto currency deposits take to reflect in my wallet', style: Theme.of(context).textTheme.bodyLarge)),
                  
                    sbhavg,
                  
                    // TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const Guides(true))), child: Wrap(children: [Text(AppLocalizations.of(context).translate('See more'), style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: defaultColor)), const Icon(chevronRight, size: 20.0, color: defaultColor)],))
                    TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const Guides(true))), child: Wrap(children: [Text('See more', style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: defaultColor)), const Icon(chevronRight, size: 20.0, color: defaultColor)],))
                  
                  ],
                ),
              )
            ],
          ),
        
          sbhmax,
          sbhmax,
          sbhmax,
        
          // Search box
          // Text(AppLocalizations.of(context).translate('Look for more'), style: Theme.of(context).textTheme.titleLarge),
          Text('Look for more', style: Theme.of(context).textTheme.titleLarge),
        
          sbhavg,
        
          Form(
            key: _formKey,
            child: Column(
              children: [
        
                SizedBox(
                  width: MediaQuery.of(context).size.width < 800? MediaQuery.of(context).size.width * 0.8 : MediaQuery.of(context).size.width * 0.65,
                  height: 40.0,
                  child: TextFormField(
                    controller: _textFieldController,
                    style: Theme.of(context).textTheme.bodyLarge,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                      hintText: 'Search',
                      // hintText: 'Search',
                      suffixIcon: IconButton(onPressed: () => BlocProvider.of<HomepageBloc>(context).add(QuickSearchEvent(query)), icon: searchIcon, hoverColor: defaultColor, focusNode: _buttonFocusNode)
                    ),
                    cursorColor: Theme.of(context).textSelectionTheme.cursorColor,
                    textInputAction: TextInputAction.done,
                    validator: (value) {return null;},
                    onFieldSubmitted: (String value) { FocusScope.of(context).requzestFocus(_buttonFocusNode); },
                    onChanged: (value) {query = value.trim();},
                    focusNode: _textFieldFocusNode,
                    onTap: () { while(_textFieldController.text.isNotEmpty) { setState(() => makeSuggestionsModalVisible = true); }}
                  ),
                ),
        
        
                Offstage(
                  offstage: !makeSuggestionsModalVisible,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    height: MediaQuery.of(context).size.height * 0.3,
                    padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                    child: Card(
                      color: Theme.of(context).primaryColor,
                      elevation: 0.5,
                      child: Column(
                        children: [
        
                          BlocProvider(
                            create: ((context) => sl<HomepageBloc>()),
                            child: BlocConsumer(
                              listener: ((context, state) {}),
                              builder: ((context, state) {
                                if (state is HomepageInitial) {
                                  return Container();
                                
                                } else 
                                if (state is HomepageLoading) {
                                  return const Center(child: GradientCircularProgressIndicator(gradient: LinearGradient(begin: Alignment.centerLeft, end: Alignment.centerRight, colors: [defaultColor, white]), radius: 200));
                                
                                } else 
                                if (state is HomepageLoaded) {
                                  if (state.homepageEntity.searchSuggestions != null) {
                                    setState(() => suggestions = state.homepageEntity.searchSuggestions!);
        
                                    return Expanded(
                                      child: ListView.builder(
                                        itemCount: suggestions!.length,
                                        itemBuilder: (context, index) => ListTile(
                                          onTap: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => GuideDetails(suggestions![index]['suggestionID']!, suggestions![index]['guideDetails']!))),
                                          leading: Icon(search, semanticLabel: AppLocalizations.of(context).translate('Search icon')),
                                           title: DetectableText(
                                            text: suggestions![index]['suggestion']!, 
                                            detectionRegExp: RegExp('^\\w{"$query"}'),
                                            basicStyle: Theme.of(context).textTheme.bodyMedium,
                                            detectedStyle: Theme.of(context).textTheme.bodyMedium!..copyWith(fontWeight: FontWeight.w500),
                                          ),
                                        )
                                      )
                                    );
                                  }
                                } return Container();
                              })
                            )
                          )
        
                        ]
                      )
                    ),
                  )
                )
        
        
              ],
            ),
          ),
          
          sbhmax,
          sbhmax,
          sbhmax,
        
          // Text(AppLocalizations.of(context).translate('Stay updated'), style: Theme.of(context).textTheme.titleLarge),
          Text('Stay updated', style: Theme.of(context).textTheme.titleLarge),
        
          sbhavg,
        
          Text('Get the latest releases of the Goyerv app for all of your devices on all platforms.', textAlign: TextAlign.center, style: Theme.of(context).textTheme.bodyLarge),
        
          sbhavg,
        
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Column(children: [Icon(android, size: 40.0, color: green, semanticLabel: AppLocalizations.of(context).translate('Android logo')), const SizedBox(height: 10.0,), TextButton(onPressed: (){}, child: Text(AppLocalizations.of(context).translate('Android'), style: Theme.of(context).textTheme.bodyLarge!..copyWith(color: defaultColor)))],),
              Column(children: [Icon(android, size: 40.0, color: green, semanticLabel: AppLocalizations.of(context).translate('Android logo')), const SizedBox(height: 10.0,), TextButton(onPressed: (){}, child: Text('Android', style: Theme.of(context).textTheme.bodyLarge!..copyWith(color: defaultColor)))],),
              
              // Column(children: [Icon(apple, size: 40.0, color: grey, semanticLabel: AppLocalizations.of(context).translate('Apple logo'),), const SizedBox(height: 10.0,), TextButton(onPressed: (){}, child: Text(AppLocalizations.of(context).translate('iOS'), style: Theme.of(context).textTheme.bodyLarge!..copyWith(color: defaultColor)))],)
              Column(children: [Icon(apple, size: 40.0, color: grey, semanticLabel: AppLocalizations.of(context).translate('Apple logo'),), const SizedBox(height: 10.0,), TextButton(onPressed: (){}, child: Text('iOS', style: Theme.of(context).textTheme.bodyLarge!..copyWith(color: defaultColor)))],)
            ],
          ),
        
          sbhmax,
          sbhmax,
        
          // SizedBox(
            // width: MediaQuery.of(context).size.width * 0.49,
            // height: MediaQuery.of(context).size.height * 0.49,
            // child: Image.asset(tabletMockup, semanticLabel: AppLocalizations.of(context).translate('Screenshots of Goyerv app rendered on multiple devices'), fit: BoxFit.contain)
          // ),
        
          SizedBox(
            // width: MediaQuery.of(context).size.width * 0.49,
            height: MediaQuery.of(context).size.height * 0.49,
            child: Image.asset(tabletMockup, semanticLabel: 'Screenshots of Goyerv app rendered on multiple devices', fit: BoxFit.contain)
          ),
        
          sbhmax,
        
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
        
              // SizedBox(
                // width: MediaQuery.of(context).size.width * 0.5,
                // height: MediaQuery.of(context).size.height * 0.49,
                // child: Image.asset(iPhoneMockup, semanticLabel: AppLocalizations.of(context).translate('Screenshots of Goyerv app rendered on multiple devices'), fit: BoxFit.contain)
              // ),

              SizedBox(
                // width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.height * 0.49,
                child: Image.asset(iPhoneMockup, semanticLabel: 'Screenshots of Goyerv app rendered on multiple devices', fit: BoxFit.contain)
              ),

              sbwmax,
        
              // SizedBox(
                // width: MediaQuery.of(context).size.width * 0.5,
                // height: MediaQuery.of(context).size.height * 0.49,
                // child: Image.asset(androidMockup, semanticLabel: AppLocalizations.of(context).translate('Screenshots of Goyerv app rendered on multiple devices'), fit: BoxFit.contain)
              // ),
        
              SizedBox(
                // width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.height * 0.49,
                child: Image.asset(androidMockup, semanticLabel: 'Screenshots of Goyerv app rendered on multiple devices', fit: BoxFit.contain)
              ),
        
            ]
          ),
        
          sbhmax,
          sbhmax,
          sbhmax,
          sbhmax,
          sbhmax,
        
          
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            runSpacing: 30.0,
            spacing: 30.0,
            children: [
        
              Container(
                width: MediaQuery.of(context).size.width < 800? MediaQuery.of(context).size.width : MediaQuery.of(context).size.width * 0.3,
                height: 250.0,
                padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0), color: Theme.of(context).primaryColorDark,),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  
                  
                    Icon(Icons.headphones, size: 50.0,  color: Theme.of(context).iconTheme.color),

                    sbhmin,
        
                    // TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const EmailSupport())), child: Text(AppLocalizations.of(context).translate('Email support'), style: Theme.of(context).textTheme.bodyLarge!..copyWith(color: defaultColor)))
                    TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const EmailSupport())), child: Text('Email support', style: Theme.of(context).textTheme.bodyLarge!..copyWith(color: defaultColor)))
                    
                  
                  ],
                ),
              ),

              Container(
                width: MediaQuery.of(context).size.width < 800? MediaQuery.of(context).size.width : MediaQuery.of(context).size.width * 0.3,
                height: 250.0,
                padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0), color: Theme.of(context).primaryColorDark,),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  
                  
                    Icon(Icons.people, size: 50.0,  color: Theme.of(context).iconTheme.color),

                    sbhmin,
        
                    // TextButton(onPressed: () => launchUrl(uri), child: Text(AppLocalizations.of(context).translate('Join the community'), style: Theme.of(context).textTheme.bodyLarge!..copyWith(color: defaultColor)),)
                    TextButton(onPressed: () => launchUrl(uri), child: Text('Join the community', style: Theme.of(context).textTheme.bodyLarge!..copyWith(color: defaultColor)),)
                  
                  ],
                )
              ),


              Container(
                width: MediaQuery.of(context).size.width < 800? MediaQuery.of(context).size.width : MediaQuery.of(context).size.width * 0.3,
                height: 250.0,
                padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0), color: Theme.of(context).primaryColorDark,),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  
                  
                    // Icon
                    Icon(Icons.phone, size: 50.0,  color: Theme.of(context).iconTheme.color),

                    sbhmin,
        
                    // TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const CallSupport())), child: Text(AppLocalizations.of(context).translate('Call support'), style: Theme.of(context).textTheme.bodyLarge!..copyWith(color: defaultColor)),)
                    TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const CallSupport())), child: Text('Call support', style: Theme.of(context).textTheme.bodyLarge!..copyWith(color: defaultColor)),)
                  
                  ],
                )
              ),
        
            ],
          ),


          sbhmax,
          sbhmax,
          sbhmax,
        
        ]
      ),
    ),
      
      
              // Footer
              footer(context, setState)
      
            ],
          ),
        ),
      ),
    );
  }

}