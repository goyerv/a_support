// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'package:flutter/material.dart';

import 'discussions_template_widget.dart';

class DiscussionsTemplateHandShakeWidget extends StatefulWidget {

  final List<Map<String, dynamic>>? discussions;
  final String locale;

  const DiscussionsTemplateHandShakeWidget(this.discussions, this.locale, {Key? key}) : super(key: key);

  @override
  State<DiscussionsTemplateHandShakeWidget> createState() => _DiscussionsTemplateHandShakeWidgetState();

}

class _DiscussionsTemplateHandShakeWidgetState extends State<DiscussionsTemplateHandShakeWidget> {

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: widget.discussions!.length,
        itemBuilder: (builder, index) => DiscussionsTemplateWidget(widget.discussions![index], widget.locale),
      )
    );
  }

}