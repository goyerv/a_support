// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:footer/footer_view.dart';
import 'package:shimmer/shimmer.dart';
import 'package:timeago/timeago.dart' as timeago;


import '../../../dependency_injections.dart';
import '../../../web_core/global_fields/fields.dart';
import '../../../web_core/internationalization/app_localizations.dart';
import '../../../web_core/internationalization/locales_preferences.dart';
import '../../../widget/widget.dart';
import '../bloc/guides_bloc.dart';
import '../widget/discussions_tile/discussions_template_handshake_widget.dart';

class Guides extends StatefulWidget {

  final String? query;

  const Guides(this.query, {Key? key}) : super(key: key);

  @override
  State<Guides> createState() => _GuidesState();

}

class _GuidesState extends State<Guides> {


  late FocusNode focusNode;

  late FocusNode _textFieldFocusNode;
  late TextEditingController _textFieldController;


  late String query;
  late LocalesPreferencesImpl localesPreferences;
  late String locale;



  @override 
  void initState() {

    focusNode = FocusNode();
    _textFieldFocusNode = FocusNode();

    _textFieldController = TextEditingController();

    locale = 'en';
    timeago.setLocaleMessages(locale, timeago.EnMessages());
    localesPreferences = LocalesPreferencesImpl();

    if (widget.query != null) {
      BlocProvider.of<GuidesBloc>(context).add(GuidesSearchEvent(widget.query));
    }
    
    super.initState();

  }




   

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: Title(
        title: AppLocalizations.of(context).translate('Goyerv - Support - Search'),
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


                    SizedBox(
                      width: 200,
                      child: TextFormField(
                        controller: _textFieldController,
                        style: Theme.of(context).textTheme.bodyLarge,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
                          hintText: AppLocalizations.of(context).translate('Search'),
                          suffixIcon: Semantics(button: true, child: IconButton( onPressed: (){ if(_textFieldController.text.isNotEmpty) { BlocProvider.of<GuidesBloc>(context).add(GuidesSearchEvent(query)); }}, icon: searchIcon, hoverColor: Theme.of(context).primaryColorLight, iconSize: 25.0, splashRadius: 20.0, focusColor: Theme.of(context).focusColor, focusNode: focusNode)),
                        ),
                        cursorColor: Theme.of(context).textSelectionTheme.cursorColor,
                        textInputAction: TextInputAction.done,
                        validator: (value) { if (value!.isEmpty) { return AppLocalizations.of(context).translate('Field cannot be empty'); } return null; },
                        onFieldSubmitted: (String value) { FocusScope.of(context).requestFocus(focusNode);},
                        onChanged: (value) {query = value.trim(); },
                        focusNode: _textFieldFocusNode,
                      ),
                    ), 


                    sbhavg,


                    BlocProvider(
                      create: ((context) => sl<GuidesBloc>()),
                      child: BlocConsumer(
                        listener: ((context, state) {}),
                        builder: ((context, state) {
                          if (state is GuidesInitial) {
                            return Container();
                                        
                          } else 
                          if (state is GuidesLoading) {
                            return loadingIndicator(context); 
                          
                          } else
                          if (state is GuidesLoaded) {
                            if (state.guidesEntity.guides != null) {
                              return DiscussionsTemplateHandShakeWidget(state.guidesEntity.guides, locale);
                    
                            }
                          
                          } return Container();
                        }),
                      )
                    ),
                  ],
                ),
              )



            ],
          ),
        ),
      )
    );
  }



  Widget loadingIndicator(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: Container(
            width: double.infinity,
            height: 10.0,
            color: white,
          ),
        );
      }
    );
  }


  @override 
  void dispose() {
    _textFieldController.dispose();
    _textFieldFocusNode.dispose();
    focusNode.dispose();
    super.dispose();
  }



}