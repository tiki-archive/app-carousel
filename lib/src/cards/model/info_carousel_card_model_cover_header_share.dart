/*
 * Copyright (c) TIKI Inc.
 * MIT license. See LICENSE file in root directory.
 */

class InfoCarouselCardModelCoverHeaderShare{
  String? message;
  String? image;

  InfoCarouselCardModelCoverHeaderShare({this.message, this.image});

  InfoCarouselCardModelCoverHeaderShare.fromDynamic(dynamic data) {
    message = data.message;
    image = data.image;
  }
}
