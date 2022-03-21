/*
 * Copyright (c) TIKI Inc.
 * MIT license. See LICENSE file in root directory.
 */

import 'package:flutter/material.dart';

import 'info_carousel_card_model_cover_header.dart';

class InfoCarouselCardModelCover {
  Image? image;
  String? subtitle;
  String? bigTextLight;
  String? bigTextDark;
  String? text;
  InfoCarouselCardModelCoverHeader? header;

  InfoCarouselCardModelCover(
      {this.image,
      this.subtitle,
      this.bigTextLight,
      this.bigTextDark,
      this.text,
      this.header});

  InfoCarouselCardModelCover.fromDynamic(dynamic data) {
    image = data.image;
    subtitle = data.subtitle;
    bigTextLight = data.bigTextLight;
    bigTextDark = data.bigTextDark;
    text = data.text;
    header = InfoCarouselCardModelCoverHeader.fromDynamic(data.header);
  }
}
