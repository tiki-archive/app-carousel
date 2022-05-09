/*
 * Copyright (c) TIKI Inc.
 * MIT license. See LICENSE file in root directory.
 */

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tiki_style/tiki_style.dart';

import '../../model/content_icon.dart';
import '../../service.dart';
import 'they_say_icon.dart';

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
        theySay.add(_divider());
      }
      theySay.add(TheySayIcon(theySayData[i]));
    }
    return Container(
        color: const Color(0xFF1C0000),
        padding: EdgeInsets.symmetric(
            horizontal: SizeProvider.instance.size(15),
            vertical: SizeProvider.instance.size(15)),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
              padding:
                  EdgeInsets.only(bottom: SizeProvider.instance.size(16)),
              width: double.maxFinite,
              child: Text("What Google says it needs it for:",
                  style: TextStyle(
                      fontSize: SizeProvider.instance.text(15),
                      fontFamily: TextProvider.familyNunitoSans,
                      package: 'tiki_style',
                      color: Colors.white,
                      fontWeight: FontWeight.w800))),
          ...theySay
        ]));
  }

  Widget _divider() => Padding(
        padding: EdgeInsets.only(
            top: SizeProvider.instance.size(1),
            bottom: SizeProvider.instance.size(2)),
        child: const Divider(
          color: Colors.white,
        ));
}
