/*
 * Copyright (c) TIKI Inc.
 * MIT license. See LICENSE file in root directory.
 */

import 'package:flutter/material.dart';
import 'package:tiki_style/tiki_style.dart';
import '../../controller.dart';
import 'package:provider/provider.dart';

import '../../service.dart';
import 'body_explain.dart';
import 'body_should_know.dart';
import 'body_they_say.dart';
import 'cta_button.dart';
import 'cta_explain.dart';
import 'cta_heading.dart';
import 'header.dart';

class InfoCarouselCardLayoutScroll extends StatelessWidget {
  final Animation<double> _animationValue;
  final AnimationController _animationController;

  const InfoCarouselCardLayoutScroll(
      this._animationValue, this._animationController,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    InfoCarouselCardService service =
        Provider.of<InfoCarouselCardService>(context);
    InfoCarouselCardController controller = service.controller;
    return Container(
        color: const Color(0xFFAFAFAF),
        child: NotificationListener(
            onNotification: (notification) => controller.onScrollNotification(
                notification, _animationController),
            child: SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
              child: Column(
                children: [
                  Container(
                      color: Colors.white,
                      padding: EdgeInsets.only(
                          left: SizeProvider.instance.size(4 * 3.75),
                          top: SizeProvider.instance.size(1 * 8.12),
                          right: SizeProvider.instance.size(4 * 3.75)),
                      child: InfoCarouselCardUiScrollHeader(_animationValue)),
                  Container(
                      color: const Color(0xFF27002E),
                      child: Column(children: [
                        Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal:
                                    SizeProvider.instance.size(4 * 3.75),
                                vertical: SizeProvider.instance.size(3 * 8.12)),
                            child:
                                const InfoCarouselCardUiScrollBodyExplain()),
                        const InfoCarouselCardUiScrollBodyTheySay(),
                        const InfoCarouselCardUiScrollBodyShouldKnow(),
                      ])),
                  Container(
                      color: const Color(0xFFAFAFAF),
                      padding: EdgeInsets.only(
                          left: SizeProvider.instance.size(4 * 3.75),
                          top: SizeProvider.instance.size(3 * 8.12),
                          right: SizeProvider.instance.size(4 * 3.75)),
                      child: Column(children: [
                        Container(
                            alignment: Alignment.centerLeft,
                            child:
                                const InfoCarouselCardUiScrollCtaHeading()),
                        Container(
                            padding: EdgeInsets.only(
                                top: SizeProvider.instance.size(2 * 8.12)),
                            child:
                                const InfoCarouselCardUiScrollCtaExplain()),
                        Container(
                            padding: EdgeInsets.symmetric(
                                vertical: SizeProvider.instance.size(5 * 8.12)),
                            child: const InfoCarouselCardUiScrollCtaButton()),
                      ])),
                ],
              ),
            )));
  }
}
