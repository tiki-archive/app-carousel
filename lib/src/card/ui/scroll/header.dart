/*
 * Copyright (c) TIKI Inc.
 * MIT license. See LICENSE file in root directory.
 */

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tiki_style/tiki_style.dart';

import '../../service.dart';

class InfoCarouselCardUiScrollHeader extends StatelessWidget {
  final Animation<double> _animationValue;

  const InfoCarouselCardUiScrollHeader(this._animationValue, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var service = Provider.of<InfoCarouselCardService>(context);
    var model = service.model.cover!;
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      SizedBox(
          width: SizeProvider.instance.size(157),
          child: RichText(
              textAlign: TextAlign.left,
              text: TextSpan(
                  style: TextStyle(
                      color: const Color(0xFF0036B5),
                      fontFamily: TextProvider.familyKoara,
                      fontWeight: FontWeight.bold,
                package: 'tiki_style',
                      fontSize: SizeProvider.instance.text(24)),
                  text: model.bigTextLight!,
                  children: [
                    TextSpan(
                        text: model.bigTextDark!,
                        style: TextStyle(
                            color: const Color(0xFF00133F),
                            fontFamily: TextProvider.familyKoara,
                package: 'tiki_style',
                            fontSize: SizeProvider.instance.text(18),
                            fontWeight: FontWeight.bold))
                  ]))),
      SizedBox(
          child: FittedBox(child: model.image, fit: BoxFit.contain),
          height:  service.controller.calculateAnimation(
          MediaQuery.of(context).size.width,
              _animationValue.value,
              SizeProvider.instance.size(126)),
          width: service.controller.calculateAnimation(
              MediaQuery.of(context).size.width,
              _animationValue.value,
              SizeProvider.instance.size(126))),
    ]);
  }
}
