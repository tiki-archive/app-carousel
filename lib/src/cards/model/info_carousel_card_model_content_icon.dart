/*
 * Copyright (c) TIKI Inc.
 * MIT license. See LICENSE file in root directory.
 */

import 'package:flutter/material.dart';

class InfoCarouselCardModelContentIcon{
  Image? image;
  String? text;

  InfoCarouselCardModelContentIcon({this.image, this.text});

  InfoCarouselCardModelContentIcon.fromDynamic(dynamic data) {
    image = data.image;
    text = data.text;
  }
}
