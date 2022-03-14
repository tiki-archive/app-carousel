import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../cards/info_carousel_card_service.dart';
import '../info_carousel_service.dart';

class InfoCarouselViewSlider extends StatelessWidget {

  const InfoCarouselViewSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var service = Provider.of<InfoCarouselService>(context);
    return CarouselSlider(
        options: CarouselOptions(
            viewportFraction: 0.92, height: MediaQuery.of(context).size.height),
        items: service.model.cards.map((card) {
          return Builder(
          builder: (BuildContext context) =>
            InfoCarouselCardService(card: card, infoCarouselService: service).presenter.render());
        }).toList());
    }
}
