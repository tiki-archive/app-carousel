import 'package:flutter/material.dart';
import 'package:info_carousel/src/info_carousel_style.dart';
import 'package:logging/logging.dart';

import 'info_carousel_controller.dart';
import 'info_carousel_presenter.dart';
import 'model/info_carousel_model.dart';

class InfoCarouselService extends ChangeNotifier {
  final Logger _log = Logger('InfoCarouselService');

  late final InfoCarouselPresenter presenter;
  late final InfoCarouselModel model;
  late final InfoCarouselController controller;
  late final InfoCarouselStyle style;

  InfoCarouselService({required this.style, required List<dynamic> cards}) {
    presenter = InfoCarouselPresenter(this);
    model = InfoCarouselModel();
    controller = InfoCarouselController(this);
    model.cards = cards;
  }
}
