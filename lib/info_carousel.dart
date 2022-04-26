import 'package:flutter/material.dart';
import 'src/cards/model/info_carousel_card_model.dart';

import 'src/info_carousel_service.dart';

export 'src/cards/model/info_carousel_card_model.dart';
export 'src/cards/model/info_carousel_card_model.dart';
export 'src/cards/model/info_carousel_card_model_content.dart';
export 'src/cards/model/info_carousel_card_model_content_body.dart';
export 'src/cards/model/info_carousel_card_model_content_cta.dart';
export 'src/cards/model/info_carousel_card_model_content_icon.dart';
export 'src/cards/model/info_carousel_card_model_content_text.dart';
export 'src/cards/model/info_carousel_card_model_cover.dart';
export 'src/cards/model/info_carousel_card_model_cover_header.dart';
export 'src/cards/model/info_carousel_card_model_cover_header_share.dart';

class InfoCarousel {
  late final InfoCarouselService _service;

  dynamic apiAuthService;

  InfoCarousel({
    required List<InfoCarouselCardModel> cards,
  }) : _service = InfoCarouselService(cards: cards);

  Widget carouselWidget() => _service.presenter.carouselWidget();
}
