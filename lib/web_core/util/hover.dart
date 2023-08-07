// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'package:flutter/material.dart';

class OnHover extends StatefulWidget {

  final Widget Function(bool isHovered, BuildContext context) builder;

  const OnHover({Key? key, required this.builder}) : super(key: key);

  @override
  State<OnHover> createState() => _OnHoverState();
  
}

class _OnHoverState extends State<OnHover> {

  final hoveredTransform = Matrix4.identity()..scale(0.5, 0.5, 0.5);
  late final transform = isHovered? hoveredTransform : Matrix4.identity();
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => onEntered(true),
      onExit: (event) => onEntered(false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        transform: transform,
        child: widget.builder(isHovered, context),
      ),
    );
  }

  void onEntered(bool isHovered) => setState(() {this.isHovered = isHovered;});
  
}