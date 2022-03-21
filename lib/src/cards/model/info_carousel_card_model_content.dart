/*
 * Copyright (c) TIKI Inc.
 * MIT license. See LICENSE file in root directory.
 */

import 'info_carousel_card_model_content_body.dart';
import 'info_carousel_card_model_content_cta.dart';

class InfoCarouselCardModelContent {
  InfoCarouselCardModelContentBody? body;
  InfoCarouselCardModelContentCta? cta;

  InfoCarouselCardModelContent({this.body, this.cta});

  InfoCarouselCardModelContent.fromDynamic(dynamic data) {
    body = InfoCarouselCardModelContentBody.fromDynamic(data.body);
    cta = InfoCarouselCardModelContentCta.fromDynamic(data.cta);
  }
}
