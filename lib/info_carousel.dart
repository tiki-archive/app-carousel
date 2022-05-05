import 'package:flutter/material.dart';
import 'src/cards/model/model.dart';

import 'src/info_carousel_service.dart';

export 'src/cards/model/model.dart';
export 'src/cards/model/content.dart';
export 'src/cards/model/content_body.dart';
export 'src/cards/model/content_cta.dart';
export 'src/cards/model/content_icon.dart';
export 'src/cards/model/content_text.dart';
export 'src/cards/model/cover.dart';
export 'src/cards/model/cover_header.dart';
export 'src/cards/model/cover_header_share.dart';

class InfoCarousel {
  late final InfoCarouselService _service;

  dynamic apiAuthService;

  InfoCarousel({
    required List<InfoCarouselCardModel> cards,
  }) : _service = InfoCarouselService(cards: cards);

  Widget carouselWidget() => _service.presenter.carouselWidget();
}
