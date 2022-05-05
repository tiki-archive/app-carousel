/*
 * Copyright (c) TIKI Inc.
 * MIT license. See LICENSE file in root directory.
 */

import 'package:flutter/material.dart';
import 'package:tiki_style/tiki_style.dart';
import 'info_carousel_card_layout_swipe.dart';

class InfoCarouselCardLayout extends StatefulWidget {
  const InfoCarouselCardLayout({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _InfoCarouselCardLayout();
}

class _InfoCarouselCardLayout extends State<InfoCarouselCardLayout>
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
        margin: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                  Radius.circular(SizeProvider.instance.size(3 * 8.12))),
              boxShadow: [
                BoxShadow(
                  color: const Color(0x0D000000),
                  blurRadius: SizeProvider.instance.size(1 * 3.75),
                  offset: Offset(
                      0,
                      SizeProvider.instance
                          .size(0.5 * 8.12)), // Shadow position
                ),
              ],
            ),
            child: ClipRRect(
                borderRadius: BorderRadius.all(
                    Radius.circular(SizeProvider.instance.size(3 * 8.12))),
                child: InfoCarouselCardLayoutSwipe(_animationController))));
  }
}
