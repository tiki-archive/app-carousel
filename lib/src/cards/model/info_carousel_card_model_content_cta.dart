/*
 * Copyright (c) TIKI Inc.
 * MIT license. See LICENSE file in root directory.
 */

import 'info_carousel_card_model_content_text.dart';

class InfoCarouselCardModelContentCta {
  List<InfoCarouselCardModelContentText>? explain;
  String? buttonText;
  String? buttonUrl;

  InfoCarouselCardModelContentCta(
      {this.explain, this.buttonText, this.buttonUrl});

  InfoCarouselCardModelContentCta.fromDynamic(dynamic data) {
    explain = [];
    for (var explainData in data.explain) {
      explain!.add(InfoCarouselCardModelContentText.fromDynamic(explainData));
    }
    buttonText = data.buttonText ?? '';
    buttonUrl = data.buttonUrl ?? '';
  }
}
