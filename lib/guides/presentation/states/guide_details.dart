// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goyerv_support_web_app/web_core/util/capitalization.dart';

import '../../../web_core/global_fields/fields.dart';
import '../../../web_core/internationalization/app_localizations.dart';
import '../../../web_core/widget/widget.dart';
import '../bloc/guides_bloc.dart';



class GuideDetails extends StatefulWidget {

  final Map<String, dynamic>? guideDetails;
  final String? guideID;

  const GuideDetails(this.guideID, this.guideDetails, {Key? key}) : super(key: key);

  @override
  State<GuideDetails> createState() => _GuideDetailsState();

}



class _GuideDetailsState extends State<GuideDetails> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Theme.of(context).primaryColor,
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                child: ListView(
                  children: [
                          
                    Row(children: [const Icon(file), Text('/${widget.guideDetails!['feature']!}/${widget.guideDetails!['headline']!}', style: Theme.of(context).textTheme.bodyLarge)]),
                          
                    sbhavg,
                          
                    Text('${widget.guideDetails!['headline']!}'.toTitleCase(), style: Theme.of(context).textTheme.titleMedium),
                          
                    sbhmin,
                          
                    Text('${widget.guideDetails!['body']!}', style: Theme.of(context).textTheme.bodyLarge),
                          
                          
                    sbhavg,
                          
                    Text(AppLocalizations.of(context).translate('Was this helpful?'), style: Theme.of(context).textTheme.bodyLarge),
                          
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                          
                        ElevatedButton(onPressed: () => BlocProvider.of<GuidesBloc>(context).add(RateGuideEvent(widget.guideID, true)), child: Text(AppLocalizations.of(context).translate('Yes'), style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: defaultColor)), style: Theme.of(context).elevatedButtonTheme.style!..copyWith(shape: MaterialStateProperty.all(const StadiumBorder()), padding: MaterialStateProperty.all(const EdgeInsets.symmetric(horizontal: 20.0, vertical: 17.0)), backgroundColor: MaterialStateProperty.all(Theme.of(context).primaryColor), elevation: MaterialStateProperty.all(0.0), side: MaterialStateProperty.all(const BorderSide(color: defaultColor, width: 0.8)))),
                          
                        sbwavg,
                          
                        ElevatedButton(onPressed: () => BlocProvider.of<GuidesBloc>(context).add(RateGuideEvent(widget.guideID, false)), child: Text(AppLocalizations.of(context).translate('No'), style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: defaultColor)), style: Theme.of(context).elevatedButtonTheme.style!..copyWith(shape: MaterialStateProperty.all(const StadiumBorder()), padding: MaterialStateProperty.all(const EdgeInsets.symmetric(horizontal: 20.0, vertical: 17.0)), backgroundColor: MaterialStateProperty.all(Theme.of(context).primaryColor), elevation: MaterialStateProperty.all(0.0), side: MaterialStateProperty.all(const BorderSide(color: defaultColor, width: 0.8)))),
                          
                      ],
                    ),
                          
                    
                          
                  ],
                ),
              ),
            ),

            //footer
            footer(context, setState)

          ],
        ),
      )
    );
  }

}