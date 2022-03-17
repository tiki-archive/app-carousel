/*
 * Copyright (c) TIKI Inc.
 * MIT license. See LICENSE file in root directory.
 */

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';




import '../../info_carousel_card_service.dart';
import '../../model/info_carousel_card_model_content_icon.dart';

class InfoCarouselCardViewScrollBodyTheySay extends StatelessWidget {

  const InfoCarouselCardViewScrollBodyTheySay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var service = Provider.of<InfoCarouselCardService>(context);
    List<InfoCarouselCardModelContentIcon> theySayData =
        service.model.content!.body!.theySay!;
    List<Widget> theySay = [];
    for (int i = 0; i < theySayData.length; i++) {
      if (i > 0) {
        theySay.add(Padding(
            padding: EdgeInsets.symmetric(vertical: service.infoCarouselService.style.size(1*8.12)),
            child: const Divider(
              color: Colors.white,
            )));
      }
      theySay.add(Row(children: [
        Padding(
            padding: EdgeInsets.only(right: service.infoCarouselService.style.size(4*3.75)),
            child: SizedBox(child: theySayData[i].image!, width: service.infoCarouselService.style.size(7*3.75))),
        Expanded(
          child: Text(theySayData[i].text!,
              style: TextStyle(
                  fontSize: service.infoCarouselService.style.text(13),
                  fontFamily: "NunitoSans",
                  color: Colors.white,
                  fontWeight: FontWeight.bold)),
        )
      ]));
    }
    return Container(
        color: const Color(0xFF1C0000),
        padding: EdgeInsets.symmetric(horizontal: service.infoCarouselService.style.size(4*3.75), vertical: service.infoCarouselService.style.size(3*8.12)),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
              padding: EdgeInsets.only(bottom: service.infoCarouselService.style.size(2*8.12)),
              width: double.maxFinite,
              child: Text("What Google says it needs it for:",
                  style: TextStyle(
                      fontSize: service.infoCarouselService.style.text(13),
                      fontFamily: "NunitoSans",
                      color: Colors.white,
                      fontWeight: FontWeight.w800))),
          ...theySay
        ]));
  }
}
