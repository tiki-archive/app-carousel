import 'package:flutter/material.dart';
import 'package:info_carousel/src/cards/model/info_carousel_card_model.dart';

import 'src/info_carousel_service.dart';
import 'src/info_carousel_style.dart';

class InfoCarousel {
  late final InfoCarouselService _service;

  dynamic apiAuthService;

  InfoCarousel({
    InfoCarouselStyle? style,
    required List<InfoCarouselCardModel> cards,
  }) : _service = InfoCarouselService(
      style: style ?? InfoCarouselStyle(),
      cards: cards
  );

  Widget home({bool example = false}) => _service.presenter.home();
}
