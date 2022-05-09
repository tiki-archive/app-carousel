import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tiki_style/tiki_style.dart';

import '../../card/service.dart';
import '../service.dart';

class InfoCarouselUiSlider extends StatelessWidget {
  const InfoCarouselUiSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var service = Provider.of<InfoCarouselService>(context);
    return CarouselSlider(
        options: CarouselOptions(
            height: SizeProvider.instance.height(592),
            viewportFraction: 0.87),
        items: service.model.cards.map((card) {
          return Builder(
              builder: (BuildContext context) => InfoCarouselCardService(
                      card: card, infoCarouselService: service)
                  .presenter
                  .render());
        }).toList());
  }
}
