/*
 * Copyright (c) TIKI Inc.
 * MIT license. See LICENSE file in root directory.
 */
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../info_carousel_card_service.dart';




class InfoCarouselCardViewScrollCtaHeading extends StatelessWidget {

  const InfoCarouselCardViewScrollCtaHeading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    InfoCarouselCardService service = Provider.of<InfoCarouselCardService>(context);
    return Text(
      "What can you do about it?",
      style: TextStyle(
          color: const Color(0xFF00133F),
          fontWeight: FontWeight.w800,
          fontSize: service.infoCarouselService.style.text(13),
          fontFamily: "NunitoSans"),
    );
  }
}
