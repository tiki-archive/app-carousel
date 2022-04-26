/*
 * Copyright (c) TIKI Inc.
 * MIT license. See LICENSE file in root directory.
 */

import 'package:flutter/material.dart';
import 'package:tiki_style/tiki_style.dart';
import '../../info_carousel_card_controller.dart';
import 'package:provider/provider.dart';

import '../../info_carousel_card_service.dart';
import 'info_carousel_card_view_scroll_body_explain.dart';
import 'info_carousel_card_view_scroll_body_should_know.dart';
import 'info_carousel_card_view_scroll_body_they_say.dart';
import 'info_carousel_card_view_scroll_cta_button.dart';
import 'info_carousel_card_view_scroll_cta_explain.dart';
import 'info_carousel_card_view_scroll_cta_heading.dart';
import 'info_carousel_card_view_scroll_header.dart';

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
                      child: InfoCarouselCardViewScrollHeader(_animationValue)),
                  Container(
                      color: const Color(0xFF27002E),
                      child: Column(children: [
                        Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal:
                                    SizeProvider.instance.size(4 * 3.75),
                                vertical: SizeProvider.instance.size(3 * 8.12)),
                            child:
                                const InfoCarouselCardViewScrollBodyExplain()),
                        const InfoCarouselCardViewScrollBodyTheySay(),
                        const InfoCarouselCardViewScrollBodyShouldKnow(),
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
                                const InfoCarouselCardViewScrollCtaHeading()),
                        Container(
                            padding: EdgeInsets.only(
                                top: SizeProvider.instance.size(2 * 8.12)),
                            child:
                                const InfoCarouselCardViewScrollCtaExplain()),
                        Container(
                            padding: EdgeInsets.symmetric(
                                vertical: SizeProvider.instance.size(5 * 8.12)),
                            child: const InfoCarouselCardViewScrollCtaButton()),
                      ])),
                ],
              ),
            )));
  }
}
