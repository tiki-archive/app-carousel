/*
 * Copyright (c) TIKI Inc.
 * MIT license. See LICENSE file in root directory.
 */


import 'content_icon.dart';
import 'content_text.dart';

class InfoCarouselCardModelContentBody {
  List<InfoCarouselCardModelContentText>? explain = [];
  List<InfoCarouselCardModelContentIcon>? theySay = [];
  List<InfoCarouselCardModelContentIcon>? shouldKnow = [];

  InfoCarouselCardModelContentBody(
      {this.explain, this.theySay, this.shouldKnow});

  InfoCarouselCardModelContentBody.fromDynamic(dynamic data) {
    explain = [];
    theySay = [];
    shouldKnow = [];
    for (var explainData in data.explain) {
      explain!.add(InfoCarouselCardModelContentText(text: explainData.text, url: explainData.url));
    }
    for (var theySayData in data.theySay) {
      theySay!.add(InfoCarouselCardModelContentIcon(text: theySayData.text, icon: theySayData.icon));
    }
    for (var shouldKnowData in data.shouldKnow) {
      shouldKnow!
          .add(InfoCarouselCardModelContentIcon(text: shouldKnowData.text, icon: shouldKnowData.icon));
    }
  }
}
