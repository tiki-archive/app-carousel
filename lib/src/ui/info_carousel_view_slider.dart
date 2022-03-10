import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:info_carousel/src/ui/info_carousel_layout.dart';
import 'package:provider/provider.dart';

import '../info_carousel_service.dart';

class InfoCarouselViewSlider extends StatelessWidget {

  const InfoCarouselViewSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var service = Provider.of<InfoCarouselService>(context);
    return CarouselSlider(
        options: CarouselOptions(
            viewportFraction: 0.92, height: MediaQuery.of(context).size.height),
        items: const [ InfoCarouselLayout()]);
    //service.model.cards.map((card) {
          //return Builder(
              //builder: (BuildContext context) =>

        //}).toList());
  }
}
