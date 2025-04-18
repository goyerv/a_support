// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'package:flutter/material.dart';
import 'package:goyerv_support_web_app/web_core/util/hover.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../web_core/global_fields/fields.dart';
import '../timestamp.dart';

class DiscussionsTemplateWidget extends StatefulWidget {

  final Map<String, dynamic> discussion;
  final String locale;

  const DiscussionsTemplateWidget(this.discussion, this.locale, {Key? key}) : super(key: key);

  @override
  State<DiscussionsTemplateWidget> createState() => _DiscussionsTemplateWidgetState();

}

class _DiscussionsTemplateWidgetState extends State<DiscussionsTemplateWidget> {

  late FocusNode focusNode;

  @override
  void initState() {
    focusNode = FocusNode();
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: OnHover(
        builder: (isHovered, context) => ListTile(
          onTap: () => launchUrl(Uri.parse(widget.discussion['discussLink'])),
          title: Text(widget.discussion['discussHeadline'], overflow: TextOverflow.fade, style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold, color: isHovered? blue : Theme.of(context).textTheme.bodyLarge!.color)),
          subtitle: Column(
            children: [
              Text(widget.discussion['discussBody'], maxLines: 2, overflow: TextOverflow.fade, style: Theme.of(context).textTheme.bodyLarge),

              TextButton(onPressed: () => launchUrl(Uri.parse(widget.discussion['discussLink'])), child: Text(widget.discussion['discussLink'], style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: blue, decoration: isHovered? TextDecoration.underline : TextDecoration.none)),),
              
            ],
          ),
          trailing: Text(getFormattedTimestamp(widget.discussion['dateTime'], widget.locale), overflow: TextOverflow.fade, style: Theme.of(context).textTheme.bodySmall!.copyWith(color: grey)),
          isThreeLine: true,
          focusNode: focusNode,
        )
      ),
    );
  }



  @override 
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }



}