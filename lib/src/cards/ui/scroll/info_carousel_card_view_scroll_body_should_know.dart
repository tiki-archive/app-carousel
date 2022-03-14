/*
 * Copyright (c) TIKI Inc.
 * MIT license. See LICENSE file in root directory.
 */

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



import '../../info_carousel_card_service.dart';
import '../../model/info_carousel_card_model_content_icon.dart';

class InfoCarouselCardViewScrollBodyShouldKnow extends StatelessWidget {

  const InfoCarouselCardViewScrollBodyShouldKnow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var service = Provider.of<InfoCarouselCardService>(context);
    List<InfoCarouselCardModelContentIcon> shouldKnowData =
        service.model.content!.body!.shouldKnow!;
    List<Widget> shouldKnow = [];
    for (int i = 0; i < shouldKnowData.length; i++) {
      if (i > 0) {
        shouldKnow.add(Padding(
            padding: EdgeInsets.symmetric(vertical: service.infoCarouselService.style.size(1*8.12)),
            child: const Divider(
              color: Colors.white,
            )));
      }
      shouldKnow.add(Row(children: [
        Padding(
            padding: EdgeInsets.only(right: service.infoCarouselService.style.size(4*3.75)),
            child: Image.asset('res/images/${shouldKnowData[i].image!}.png', package: 'info_carousel', width: service.infoCarouselService.style.size(7*3.75))),
        Expanded(
          child: Text(shouldKnowData[i].text!,
              style: TextStyle(
                  fontSize: service.infoCarouselService.style.text(13),
                  fontFamily: "NunitoSans",
                  color: Colors.white,
                  fontWeight: FontWeight.bold)),
        )
      ]));
    }
    return Container(
        margin: EdgeInsets.symmetric(horizontal: service.infoCarouselService.style.size(4*3.75), vertical: service.infoCarouselService.style.size(3*8.12)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Image.asset('res/images/information.png',
            package: 'info_carousel',
            width: service.infoCarouselService.style.size(7*3.75),
          ),
          Container(
            margin: EdgeInsets.only(top: service.infoCarouselService.style.size(2*8.12), bottom: service.infoCarouselService.style.size(1*8.12)),
            child: Text("You should know",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: "NunitoSans",
                    fontWeight: FontWeight.w800,
                    fontSize: service.infoCarouselService.style.text(13))),
          ),
          ...shouldKnow
        ]));
  }
}
