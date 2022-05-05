/*
 * Copyright (c) TIKI Inc.
 * MIT license. See LICENSE file in root directory.
 */

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tiki_style/tiki_style.dart';

import '../../model/content_icon.dart';
import '../../service.dart';

class InfoCarouselCardUiScrollBodyShouldKnow extends StatelessWidget {
  const InfoCarouselCardUiScrollBodyShouldKnow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var service = Provider.of<InfoCarouselCardService>(context);
    List<InfoCarouselCardModelContentIcon> shouldKnowData =
        service.model.content!.body!.shouldKnow!;
    List<Widget> shouldKnow = [];
    for (int i = 0; i < shouldKnowData.length; i++) {
      if (i > 0) {
        shouldKnow.add(Padding(
            padding: EdgeInsets.symmetric(
                vertical: SizeProvider.instance.size(1 * 8.12)),
            child: const Divider(
              color: Colors.white,
            )));
      }
      shouldKnow.add(Row(children: [
        Padding(
            padding:
                EdgeInsets.only(right: SizeProvider.instance.size(4 * 3.75)),
            child: SizedBox(
                child: shouldKnowData[i].image!,
                width: SizeProvider.instance.size(7 * 3.75))),
        Expanded(
          child: Text(shouldKnowData[i].text!,
              style: TextStyle(
                  fontSize: SizeProvider.instance.text(13),
                  fontFamily: TextProvider.familyNunitoSans,
                  package: 'tiki_style',
                  color: Colors.white,
                  fontWeight: FontWeight.bold)),
        )
      ]));
    }
    return Container(
        margin: EdgeInsets.symmetric(
            horizontal: SizeProvider.instance.size(4 * 3.75),
            vertical: SizeProvider.instance.size(3 * 8.12)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Image.asset(
            'res/images/information.png',
            package: 'info_carousel',
            width: SizeProvider.instance.size(7 * 3.75),
          ),
          Container(
            margin: EdgeInsets.only(
                top: SizeProvider.instance.size(2 * 8.12),
                bottom: SizeProvider.instance.size(1 * 8.12)),
            child: Text("You should know",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: TextProvider.familyNunitoSans,
                    package: 'tiki_style',
                    fontWeight: FontWeight.w800,
                    fontSize: SizeProvider.instance.text(13))),
          ),
          ...shouldKnow
        ]));
  }
}
