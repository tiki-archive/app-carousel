/*
 * Copyright (c) TIKI Inc.
 * MIT license. See LICENSE file in root directory.
 */

import 'package:flutter/material.dart';

import 'info_carousel_card_model_cover_header_share.dart';

class InfoCarouselCardModelCoverHeader {
  Image? image;
  String? title;
  InfoCarouselCardModelCoverHeaderShare? share;

  InfoCarouselCardModelCoverHeader({this.image, this.title, this.share});

  InfoCarouselCardModelCoverHeader.fromDynamic(dynamic data) {
    image = data.image;
    title = data.title;
    share = InfoCarouselCardModelCoverHeaderShare.fromDynamic(data.share);
  }
}
