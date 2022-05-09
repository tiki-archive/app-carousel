/*
 * Copyright (c) TIKI Inc.
 * MIT license. See LICENSE file in root directory.
 */

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tiki_style/tiki_style.dart';

import '../../service.dart';

class InfoCarouselCardUiCoverBigText extends StatelessWidget {
  final Animation<double> _animationValue;

  const InfoCarouselCardUiCoverBigText(this._animationValue, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var service = Provider.of<InfoCarouselCardService>(context);
    var model = service.model.cover!;
    return RichText(
        textAlign: TextAlign.left,
        text: TextSpan(
            style: TextStyle(
                color: ColorProvider.blue,
                fontFamily: TextProvider.familyKoara,
                package: 'tiki_style',
                fontSize: service.controller.calculateAnimation(
                    SizeProvider.instance.text(38),
                    _animationValue.value,
                    SizeProvider.instance.text(0)),
                fontWeight: FontWeight.w800),
            text: model.bigTextLight!,
            children: [
              TextSpan(
                  text: model.bigTextDark!,
                  style: TextStyle(
                      color: const Color(0xFF00133F),
                      fontFamily: TextProvider.familyKoara,
                      package: 'tiki_style',
                      fontSize: service.controller.calculateAnimation(
                          SizeProvider.instance.text(38),
                          _animationValue.value,
                          SizeProvider.instance.text(0)),
                      fontWeight: FontWeight.bold))
            ]));
  }
}
