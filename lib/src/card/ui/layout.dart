/*
 * Copyright (c) TIKI Inc.
 * MIT license. See LICENSE file in root directory.
 */

import 'package:flutter/material.dart';
import 'package:tiki_style/tiki_style.dart';
import 'layout_swipe.dart';

class CardViewLayout extends StatefulWidget {
  const CardViewLayout({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _InfoCarouselCardLayout();
}

class _InfoCarouselCardLayout extends State<CardViewLayout>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        duration: const Duration(milliseconds: 300), vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin:
            EdgeInsets.symmetric(horizontal: SizeProvider.instance.width(8)),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: const Color(0x0D000000),
              blurRadius: SizeProvider.instance.size(5),
              offset:
                  Offset(0, SizeProvider.instance.size(4)), // Shadow position
            ),
          ],
        ),
        child: ClipRRect(
            borderRadius: BorderRadius.all(
                Radius.circular(SizeProvider.instance.size(21))),
            child: CardViewLayoutSwipe(_animationController)));
  }
}
