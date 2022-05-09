import 'package:flutter/material.dart';
import '../../info_carousel.dart';
import 'controller.dart';
import 'model.dart';
import 'presenter.dart';

class ScreenService extends ChangeNotifier {
  late final InfoCarouselPresenter presenter;
  late final InfoCarouselModel model;
  late final InfoCarouselController controller;

  ScreenService({required List<InfoCarouselCardModel> cards}) {
    presenter = InfoCarouselPresenter(this);
    model = InfoCarouselModel();
    controller = InfoCarouselController(this);
    model.cards = cards;
  }
}
