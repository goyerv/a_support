// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'package:detectable_text_field/widgets/detectable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gradient_widgets/gradient_widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../dependency_injections.dart';
import '../../../web_core/global_fields/fields.dart';
import '../../../web_core/internationalization/app_localizations.dart';
import '../../../web_core/internationalization/locales_preferences.dart';
import '../../../web_core/widget/widget.dart';
import '../bloc/guides_bloc.dart';
import '../widget/guides_template/guides_template_handshake_widget.dart';
import 'guide_details.dart';

class Guides extends StatefulWidget {

  final bool? isFAQ;

  const Guides(this.isFAQ, {Key? key}) : super(key: key);

  @override
  State<Guides> createState() => _GuidesState();

}

class _GuidesState extends State<Guides> {


  late FocusNode focusNodeOne;
  late FocusNode focusNodeTwo;
  late LocalesPreferencesImpl localesPreferences;
  // late List<Map<String, dynamic>>? guides;
  late int maxPage;
  late int pageLimiter;
  late int pageIndex;
  late String query;
  // late List<Map<String, dynamic>>? suggestions;

  late bool makeSuggestionsModalVisible;

  late TextEditingController _textFieldController;
  late FocusNode _textFieldFocusNode;
  late FocusNode _buttonFocusNode;


  @override 
  void initState() {
    focusNodeOne = FocusNode();
    focusNodeTwo = FocusNode();
    pageLimiter = 8;
    pageIndex = 1;
    maxPage = 1;
    _textFieldController = TextEditingController();
    _textFieldFocusNode = FocusNode();
    _buttonFocusNode = FocusNode();
    makeSuggestionsModalVisible = false;
    // localesPreferences = LocalesPreferencesImpl(await SharedPreferences.getInstance());
    // BlocProvider.of<GuidesBloc>(context).add(FetchGuidesEvent('${localesPreferences.getPlatformLocale().then((value) => value.first)}${localesPreferences.getPlatformLocale().then((value) => value.last)}', widget.isFAQ));
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Theme.of(context).primaryColor,
        child: ListView(
          children: [


            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [

                  sbhmax,
                  sbhmax,
                  sbhmax,
                  sbhmax,
            
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.65,
                    height: 40.0,
                    child: TextFormField(
                      controller: _textFieldController,
                      style: Theme.of(context).textTheme.bodyLarge,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                        hintText: AppLocalizations.of(context).translate('Search'),
                        suffixIcon: IconButton(onPressed: () => BlocProvider.of<GuidesBloc>(context).add(GuidesSearchEvent(query, widget.isFAQ)), icon: searchIcon, hoverColor: defaultColor, focusNode: _buttonFocusNode)
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
            
            
                  // Offstage(
                    // offstage: !makeSuggestionsModalVisible,
                    // child: Container(
                      // width: MediaQuery.of(context).size.width * 0.6,
                      // height: MediaQuery.of(context).size.height * 0.3,
                      // padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                      // child: Card(
                        // color: Theme.of(context).primaryColor,
                        // elevation: 0.5,
                        // child: Column(
                          // children: [
            // 
                            // ListView.builder(
                              // itemCount: suggestions!.length,
                              // itemBuilder: (context, index) => ListTile(
                                // onTap: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => GuideDetails(suggestions![index]['suggestionID']!, suggestions![index]['guideDetails']!))),
                                // leading: Icon(search, semanticLabel: AppLocalizations.of(context).translate('Search icon')),
                                //  title: DetectableText(
                                  // text: suggestions![index]['suggestion']!, 
                                  // detectionRegExp: RegExp('^\\w{"$query"}'),
                                  // basicStyle: Theme.of(context).textTheme.bodyMedium,
                                  // detectedStyle: Theme.of(context).textTheme.bodyMedium!..copyWith(fontWeight: FontWeight.w500),
                                // ),
                              // )
                            // )
            // 
                          // ]
                        // )
                      // ),
                    // )
                  // ),
            
            
                  // BlocProvider(
                    // create: ((context) => sl<GuidesBloc>()),
                    // child: BlocConsumer(
                      // listener: ((context, state) {}),
                      // builder: ((context, state) {
                        // if (state is GuidesInitial) {
            // 
                        // } else 
                        // if (state is GuidesLoading) {
                          // return const Center(child: GradientCircularProgressIndicator(gradient: LinearGradient(begin: Alignment.centerLeft, end: Alignment.centerRight, colors: [defaultColor, white],), radius: 200));
                      // 
                        // } else 
                        // if (state is GuidesLoaded) {
                          // if (state.guidesEntity.guides != null) {
            // 
                            // final List<Map<String, dynamic>> t = [];
            // 
                            // setState(() {
            // 
                              // guides = state.guidesEntity.guides!;  maxPage = (state.guidesEntity.guides!.length / 8).truncate();
            // 
                              // if(maxPage < 2) {
                              // t.addAll(guides!.sublist(0));
                          // 
                              // } else {
                                // t.clear();
                                // t.addAll(guides!.sublist(pageLimiter - 8, pageLimiter));
                            // 
                              // }
            // 
                            // });
            // 
                            // return GuidesTemplateHandshakeWidget(t);
            // 
            // 
                          // }
                      // 
                        // } return Container();
                      // })
                    // ),
                  // ),
            
                  // Pagination
                  // 0:5, 5:10
                  // 10/2 = 5 if is odd then stop
                  // 20/2 = 10, 10 % 2 = 5,

                  sbhmax,
                  sbhmax,
                  sbhmax,
            
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(onPressed: () => setState(() { pageLimiter-- < 2? null: pageLimiter - 8; pageIndex-- < 2? null : pageIndex--; }), icon: chevronLeftIcon, iconSize: 30.0, hoverColor: transparent, focusColor: defaultColor, focusNode: focusNodeOne),
            
                      sbwmin,
            
                      Text('$pageIndex', style: Theme.of(context).textTheme.bodyLarge),
            
                      sbwavg,
            
                      pageIndex++ > maxPage? Container() : Text('${pageIndex++}', style: Theme.of(context).textTheme.bodyLarge),
            
                      sbwmin,
            
                      IconButton(onPressed: () => setState(() { pageIndex++ > maxPage? null : pageLimiter++; pageIndex++ > maxPage? null : pageIndex++;}), iconSize: 30.0, icon: chevronRightIcon, hoverColor: transparent, focusColor: defaultColor, focusNode: focusNodeTwo),
            
                    ],
                  ),
            
                  sbhmax,
            
                  Text('$maxPage ${AppLocalizations.of(context).translate(maxPage > 1? 'Pages' : 'Page')}', style: Theme.of(context).textTheme.bodyLarge),
            
            

            
            
                ],
              ),
            ),


            sbhmax,
            sbhmax,
            
            //footer
            footer(context, setState),

          ],
        ),
      ),
    );
  }


  @override 
  void dispose() {
    focusNodeOne.dispose();
    focusNodeTwo.dispose();
    _textFieldController.dispose();
    _textFieldFocusNode.dispose();
    _buttonFocusNode.dispose();
    super.dispose();
  }



}