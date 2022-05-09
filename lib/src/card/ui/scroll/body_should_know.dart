/*
 * Copyright (c) TIKI Inc.
 * MIT license. See LICENSE file in root directory.
 */

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tiki_style/tiki_style.dart';

import '../../model/content_icon.dart';
import '../../service.dart';
import 'should_know_icon.dart';
import 'they_say_icon.dart';

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
        shouldKnow.add(_divider());
      }
      shouldKnow.add(ShouldKnowIcon(shouldKnowData[i]));
    }
    return Container(
        margin: EdgeInsets.only(
            left: SizeProvider.instance.size(20),
            right: SizeProvider.instance.size(15),
            top: SizeProvider.instance.size(20),
          bottom: SizeProvider.instance.size(30),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Icon(IconProvider.information, color: ColorProvider.tikiRed, size: SizeProvider.instance.size(30),
          ),
          Container(
            margin: EdgeInsets.only(
                top: SizeProvider.instance.size(16),
                bottom: SizeProvider.instance.size(8),
                ),
            child: Text("You should know",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: TextProvider.familyNunitoSans,
                    package: 'tiki_style',
                    fontWeight: FontWeight.w800,
                    fontSize: SizeProvider.instance.text(14))),
          ),
          ...shouldKnow
        ]));
  }

  Widget _divider() => Padding(
      padding: EdgeInsets.only(
          top: SizeProvider.instance.size(5),
          bottom: SizeProvider.instance.size(8)),
      child: const Divider(
        color: Colors.white,
      ));
}
