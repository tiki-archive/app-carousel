/*
 * Copyright (c) TIKI Inc.
 * MIT license. See LICENSE file in root directory.
 */

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tiki_style/tiki_style.dart';

import '../../model/content_icon.dart';
import '../../service.dart';

class InfoCarouselCardUiScrollBodyTheySay extends StatelessWidget {
  const InfoCarouselCardUiScrollBodyTheySay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var service = Provider.of<InfoCarouselCardService>(context);
    List<InfoCarouselCardModelContentIcon> theySayData =
        service.model.content!.body!.theySay!;
    List<Widget> theySay = [];
    for (int i = 0; i < theySayData.length; i++) {
      if (i > 0) {
        theySay.add(Padding(
            padding: EdgeInsets.symmetric(
                vertical: SizeProvider.instance.size(8)),
            child: const Divider(
              color: Colors.white,
            )));
      }
      theySay.add(Row(children: [
        Padding(
            padding:
            EdgeInsets.only(right: SizeProvider.instance.size(16)),
            child: SizedBox(
                child: FittedBox(child: Icon(theySayData[i].icon, color: ColorProvider.white), fit: BoxFit.contain),
                width: SizeProvider.instance.size(20),
                height: SizeProvider.instance.size(20))),
        Expanded(
          child: Text(theySayData[i].text!,
              style: TextStyle(
                  fontSize: SizeProvider.instance.text(13),
                  fontFamily: TextProvider.familyNunitoSans,
                  package: 'tiki_style',
                  color: Colors.white,
                  fontWeight: FontWeight.normal)),
        )
      ]));
    }
    return Container(
        color: const Color(0xFF1C0000),
        padding: EdgeInsets.symmetric(
            horizontal: SizeProvider.instance.size(15),
            vertical: SizeProvider.instance.size(24)),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
              padding:
                  EdgeInsets.only(bottom: SizeProvider.instance.size(16)),
              width: double.maxFinite,
              child: Text("What Google says it needs it for:",
                  style: TextStyle(
                      fontSize: SizeProvider.instance.text(13),
                      fontFamily: TextProvider.familyNunitoSans,
                      package: 'tiki_style',
                      color: Colors.white,
                      fontWeight: FontWeight.w800))),
          ...theySay
        ]));
  }
}
