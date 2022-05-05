/*
 * Copyright (c) TIKI Inc.
 * MIT license. See LICENSE file in root directory.
 */
import 'package:flutter/material.dart';
import 'package:tiki_style/tiki_style.dart';

class InfoCarouselCardViewScrollCtaHeading extends StatelessWidget {
  const InfoCarouselCardViewScrollCtaHeading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "What can you do about it?",
      style: TextStyle(
          color: const Color(0xFF00133F),
          fontWeight: FontWeight.w800,
          fontSize: SizeProvider.instance.text(13),
          fontFamily: "NunitoSans"),
    );
  }
}
