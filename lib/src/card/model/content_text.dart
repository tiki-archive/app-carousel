/*
 * Copyright (c) TIKI Inc.
 * MIT license. See LICENSE file in root directory.
 */

class InfoCarouselCardModelContentText {
  String? text;
  String? url;

  InfoCarouselCardModelContentText({this.text, this.url});

  InfoCarouselCardModelContentText.fromDynamic(dynamic data) {
    text = data.text;
    url = data.url;
  }
}
