// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







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

class HomepageWidget extends StatefulWidget {
  
  const HomepageWidget({Key? key}) : super(key: key);

  @override 
  State<HomepageWidget> createState() => _HomepageWidgetState();

}

class _HomepageWidgetState extends State<HomepageWidget> {

  late String imageAsset;
  late String goyervFigmaPlatformsScreenMobile; // This should be a single image that contains an 
  // iOS, android, tablets, and desktop screens. Arrange them in a creative way 
  late String goyervFigmaPlatformsScreenDesktop;
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
    imageAsset = downloadIimage;
    goyervFigmaPlatformsScreenMobile = makeImage; // Rendered for mobile only
    goyervFigmaPlatformsScreenDesktop = makeImage; // Rendered for desktop only
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
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Theme.of(context).primaryColor,
      //Don't add padding!
      child: Column(
        children: [

          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.23,
            child: Image.asset(imageAsset, filterQuality: FilterQuality.high, semanticLabel: AppLocalizations.of(context).translate('Logistics image'), fit: BoxFit.contain),
          ),


          sbhavg,
          
          Text(AppLocalizations.of(context).translate('Goyerv Support'), style: Theme.of(context).textTheme.headlineSmall),

          sbhavg,

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Flexible(
                  child: Column(
                    children: [

                      Text(AppLocalizations.of(context).translate('How Tos'), style: Theme.of(context).textTheme.titleMedium),
                      
                      sbhavg,

                      TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const Guides(false))), child: Text(AppLocalizations.of(context).translate('1. How to make requests'), style: Theme.of(context).textTheme.bodyLarge)),
                      
                      sbhmin,

                      TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const Guides(false))), child: Text(AppLocalizations.of(context).translate('2. How to filter out posts from your radar'), style: Theme.of(context).textTheme.bodyLarge)),

                      sbhmin,

                      TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const Guides(false))), child: Text(AppLocalizations.of(context).translate('3. How to make a money transfer to another goyerv account'), style: Theme.of(context).textTheme.bodyLarge)),

                      sbhmin,

                      TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const Guides(false))), child: Text(AppLocalizations.of(context).translate('4. How to counter requests'), style: Theme.of(context).textTheme.bodyLarge)),

                      sbhmin,

                      TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const Guides(false))), child: Text(AppLocalizations.of(context).translate('5. How to make and share a post'), style: Theme.of(context).textTheme.bodyLarge)),

                      sbhavg,

                      TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const Guides(false))), child: Row(children: [Text(AppLocalizations.of(context).translate('See more'), style: Theme.of(context).textTheme.bodyLarge!..copyWith(color: defaultColor)), const Icon(chevronRight, color: defaultColor)],))

                    ],
                  )
                ),




                Flexible(
                  child: Column(
                    children: [

                      Text(AppLocalizations.of(context).translate('FAQs'), style: Theme.of(context).textTheme.titleMedium),
                      
                      sbhavg,

                      TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const Guides(true))), child: Text(AppLocalizations.of(context).translate('1. How long does it Goyerv take to process conversion applications?'), style: Theme.of(context).textTheme.bodyLarge)),
                      
                      sbhmin,

                      TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const Guides(true))), child: Text(AppLocalizations.of(context).translate('2. How does the available and pending balance on Goyerv mean?'), style: Theme.of(context).textTheme.bodyLarge)),

                      sbhmin,

                      TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const Guides(true))), child: Text(AppLocalizations.of(context).translate('3. Where can I find all my pending funds?'), style: Theme.of(context).textTheme.bodyLarge)),

                      sbhmin,

                      TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const Guides(true))), child: Text(AppLocalizations.of(context).translate('4. How do I make my account private?'), style: Theme.of(context).textTheme.bodyLarge)),

                      sbhmin,

                      TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const Guides(true))), child: Text(AppLocalizations.of(context).translate('5. How long does crypto currency deposits take to reflect in my wallet'), style: Theme.of(context).textTheme.bodyLarge)),

                      sbhavg,

                      TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const Guides(true))), child: Row(children: [Text(AppLocalizations.of(context).translate('See more'), style: Theme.of(context).textTheme.bodyLarge!..copyWith(color: defaultColor)), const Icon(chevronRight, color: defaultColor, size: 10.0)],))

                    ],
                  )
                )
              ],
            )
          ),

          sbhavg,

          // Search box
          Center(
            child: Column(
              children: [

                Text(AppLocalizations.of(context).translate('Look for more'), style: Theme.of(context).textTheme.titleLarge),

                sbhavg,

                Form(
                  key: _formKey,
                  child: Column(
                    children: [

                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.6,
                        height: 30.0,
                        child: TextFormField(
                          controller: _textFieldController,
                          style: Theme.of(context).textTheme.bodyLarge,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                            hintText: AppLocalizations.of(context).translate('Search'),
                            suffixIcon: IconButton(onPressed: () => BlocProvider.of<HomepageBloc>(context).add(QuickSearchEvent(query)), icon: searchIcon, hoverColor: defaultColor, focusNode: _buttonFocusNode)
                          ),
                          cursorColor: Theme.of(context).textSelectionTheme.cursorColor,
                          textInputAction: TextInputAction.done,
                          validator: (value) {return null;},
                          onFieldSubmitted: (String value) { FocusScope.of(context).requestFocus(_buttonFocusNode); },
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

              ]
            ),
          ),
          
          sbhavg,

          Center(
            child: Column(
              children: [

                Padding(padding: const EdgeInsets.symmetric(vertical: 10.0), child: Text(AppLocalizations.of(context).translate('Stay updated'), style: Theme.of(context).textTheme.titleLarge)),

                sbhmin,

                Padding(padding: const EdgeInsets.symmetric(vertical: 10.0), child: Text(AppLocalizations.of(context).translate('Get the latest releases of the Goyerv app for all of your devices on all platforms.'), textAlign: TextAlign.center, style: Theme.of(context).textTheme.bodyLarge)),

                sbhmin,

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(children: [Icon(android, semanticLabel: AppLocalizations.of(context).translate('Android logo')), const SizedBox(height: 5.0,), TextButton(onPressed: (){}, child: Text(AppLocalizations.of(context).translate('Android')))],),
                    
                    Column(children: [Icon(apple, semanticLabel: AppLocalizations.of(context).translate('Apple logo'),), const SizedBox(height: 5.0,), TextButton(onPressed: (){}, child: Text(AppLocalizations.of(context).translate('iOS')))],)
                  ],
                ),

                sbhavg,

                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.35,
                  child: Image.asset(MediaQuery.of(context).size.width < 800? goyervFigmaPlatformsScreenMobile : goyervFigmaPlatformsScreenDesktop, semanticLabel: AppLocalizations.of(context).translate('Screenshots of Goyerv app rendered on multiple devices'), fit: BoxFit.contain)
                ),

              ],
            ),
          ),

          sbhavg,

          
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Flexible(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.35,
                    height: MediaQuery.of(context).size.width * 0.35,
                    padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                    color: Theme.of(context).primaryColorLight,
                    child: Card(
                      child: Center(
                        child: Column(
                          children: [
                          
                          
                            // Icon
                            // headphone

                            TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const EmailSupport())), child: Text(AppLocalizations.of(context).translate('Email support'), style: Theme.of(context).textTheme.bodyLarge!..copyWith(color: defaultColor)))
                            
                          
                          ],
                        ),
                      )
                    )
                  )
                ),


                Flexible(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.35,
                    height: MediaQuery.of(context).size.width * 0.35,
                    padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                    color: Theme.of(context).primaryColorLight,
                    child: Card(
                      child: Center(
                        child: Column(
                          children: [
                          
                          
                            // Icon
                            // headphone

                            TextButton(onPressed: () => () => launchUrl(uri), child: Text(AppLocalizations.of(context).translate('Join the community'), style: Theme.of(context).textTheme.bodyLarge!..copyWith(color: defaultColor)),)
                          
                          ],
                        ),
                      )
                    )
                  )
                ),


                Flexible(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.35,
                    height: MediaQuery.of(context).size.width * 0.35,
                    padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                    color: Theme.of(context).primaryColorLight,
                    child: Card(
                      child: Center(
                        child: Column(
                          children: [
                          
                          
                            // Icon
                            // headphone

                            TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => const CallSupport())), child: Text(AppLocalizations.of(context).translate('Call support'), style: Theme.of(context).textTheme.bodyLarge!..copyWith(color: defaultColor)),)
                          
                          ],
                        ),
                      )
                    )
                  )
                ),

              ],
            ),
          )

        ]
      ),
    );
  }

}