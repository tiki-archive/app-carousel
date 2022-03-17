/*
 * Copyright (c) TIKI Inc.
 * MIT license. See LICENSE file in root directory.
 */

import 'info_carousel_card_model_content.dart';
import 'info_carousel_card_model_cover.dart';

class InfoCarouselCardModel{
  InfoCarouselCardModelCover? cover;
  InfoCarouselCardModelContent? content;

  InfoCarouselCardModel({this.cover, this.content});

  InfoCarouselCardModel.fromDynamic(dynamic data) {
    cover = InfoCarouselCardModelCover.fromDynamic(data.cover);
    content = InfoCarouselCardModelContent.fromDynamic(data.content);
  }
}
