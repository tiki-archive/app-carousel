/*
 * Copyright (c) TIKI Inc.
 * MIT license. See LICENSE file in root directory.
 */

import 'content.dart';
import 'cover.dart';

class CardModel {
  InfoCarouselCardModelCover? cover;
  InfoCarouselCardModelContent? content;

  InfoCarouselCardModel({this.cover, this.content});

  InfoCarouselCardModel.fromDynamic(dynamic data) {
    cover = InfoCarouselCardModelCover.fromDynamic(data.cover);
    content = InfoCarouselCardModelContent.fromDynamic(data.content);
  }
}
