// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'package:flutter/material.dart';

import '../../../../web_core/util/hover.dart';
import '../../states/guide_details.dart';

class GuidesTemplateHandshakeWidget extends StatefulWidget {

  final List<Map<String, dynamic>>? guides;

  const GuidesTemplateHandshakeWidget(this.guides, {Key? key}) : super(key: key);

  @override
  State<GuidesTemplateHandshakeWidget> createState() => _GuidesTemplateHandshakeWidgetState();
}

class _GuidesTemplateHandshakeWidgetState extends State<GuidesTemplateHandshakeWidget> {

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: widget.guides!.length,
      separatorBuilder: (context, index) => Divider(color: Theme.of(context).primaryColor, height: 7),
      itemBuilder: (context, index) => OnHover(builder: (isHovered, context) =>  TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute<void>(builder: (BuildContext context) => GuideDetails(widget.guides![index]['guideDetails']!, widget.guides![index]['guideID']!))), child: Text(widget.guides![index]['guide']!, style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Theme.of(context).textTheme.bodyLarge!.color)))),
    );
  }
}