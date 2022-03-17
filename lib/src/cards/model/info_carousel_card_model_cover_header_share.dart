/*
 * Copyright (c) TIKI Inc.
 * MIT license. See LICENSE file in root directory.
 */


import 'dart:ui';

class InfoCarouselCardModelCoverHeaderShare{
  String? message;
  Image? image;

  InfoCarouselCardModelCoverHeaderShare({this.message, this.image});

  InfoCarouselCardModelCoverHeaderShare.fromDynamic(dynamic data) {
    message = data.message;
    image = data.image;
  }
}
