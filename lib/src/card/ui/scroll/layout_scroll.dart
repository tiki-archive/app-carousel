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

class CardViewLayoutScroll extends StatelessWidget {
  final Animation<double> _animationValue;
  final AnimationController _animationController;

  const CardViewLayoutScroll(
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
                      color: ColorProvider.white,
                      padding: EdgeInsets.only(
                          left: SizeProvider.instance.size(15),
                          top: SizeProvider.instance.size(10),
                          right: SizeProvider.instance.size(15),
                          bottom: SizeProvider.instance.size(15)),
                      child: InfoCarouselCardUiScrollHeader(_animationValue)),
                  Container(
                      color: const Color(0xFF27002E),
                      child: Column(children: [
                        Padding(
                            padding: EdgeInsets.only(
                                left: SizeProvider.instance.size(15),
                                right: SizeProvider.instance.size(40),
                                bottom: SizeProvider.instance.size(20),
                                top: SizeProvider.instance.size(24)),
                            child: const InfoCarouselCardUiScrollBodyExplain()),
                        const InfoCarouselCardUiScrollBodyTheySay(),
                        const InfoCarouselCardUiScrollBodyShouldKnow(),
                      ])),
                  Container(
                      color: ColorProvider.greyThree,
                      padding: EdgeInsets.only(
                          left: SizeProvider.instance.size(15),
                          top: SizeProvider.instance.size(24),
                          right: SizeProvider.instance.size(15)),
                      child: Column(children: [
                        Container(
                            padding: EdgeInsets.only(
                                top: SizeProvider.instance.size(10)),
                            alignment: Alignment.centerLeft,
                            child: const InfoCarouselCardUiScrollCtaHeading()),
                        Container(
                            padding: EdgeInsets.only(
                                top: SizeProvider.instance.size(12),
                                right: SizeProvider.instance.size(10)),
                            child: const InfoCarouselCardUiScrollCtaExplain()),
                        Container(
                            padding: EdgeInsets.symmetric(
                                vertical: SizeProvider.instance.size(35)),
                            child: const InfoCarouselCardUiScrollCtaButton()),
                      ])),
                ],
              ),
            )));
  }
}
