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
          width: SizeProvider.instance.size(42 * 3.75),
          child: RichText(
              textAlign: TextAlign.left,
              text: TextSpan(
                  style: TextStyle(
                      color: const Color(0xFF0036B5),
                      fontFamily: "Koara",
                      fontSize: SizeProvider.instance.text(18),
                      fontWeight: FontWeight.bold),
                  text: model.bigTextLight!,
                  children: [
                    TextSpan(
                        text: model.bigTextDark!,
                        style: TextStyle(
                            color: const Color(0xFF00133F),
                            fontFamily: "Koara",
                            fontSize: SizeProvider.instance.text(18),
                            fontWeight: FontWeight.bold))
                  ]))),
      SizedBox(
          child: model.image,
          width: service.controller.calculateAnimation(
              MediaQuery.of(context).size.width,
              _animationValue.value,
              SizeProvider.instance.size(18 * 8.12))),
    ]);
  }
}
