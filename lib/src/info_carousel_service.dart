import 'package:flutter/material.dart';
import 'cards/model/info_carousel_card_model.dart';

import 'info_carousel_controller.dart';
import 'info_carousel_presenter.dart';
import 'info_carousel_model.dart';

class InfoCarouselService extends ChangeNotifier {
  late final InfoCarouselPresenter presenter;
  late final InfoCarouselModel model;
  late final InfoCarouselController controller;

  InfoCarouselService({required List<InfoCarouselCardModel> cards}) {
    presenter = InfoCarouselPresenter(this);
    model = InfoCarouselModel();
    controller = InfoCarouselController(this);
    model.cards = cards;
  }
}
