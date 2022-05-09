import 'package:flutter/material.dart';
import 'src/card/model/model.dart';

import 'src/container/screen_service.dart';

export 'src/card/model/model.dart';
export 'src/card/model/content.dart';
export 'src/card/model/content_body.dart';
export 'src/card/model/content_cta.dart';
export 'src/card/model/content_icon.dart';
export 'src/card/model/content_text.dart';
export 'src/card/model/cover.dart';
export 'src/card/model/cover_header.dart';
export 'src/card/model/cover_header_share.dart';

class InfoCarousel {
  late final InfoCarouselService _service;

  dynamic apiAuthService;

  InfoCarousel({
    required List<InfoCarouselCardModel> cards,
  }) : _service = InfoCarouselService(cards: cards);

  Widget carouselWidget() => _service.presenter.carouselWidget();
}
