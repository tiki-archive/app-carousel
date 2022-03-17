/*
 * Copyright (c) TIKI Inc.
 * MIT license. See LICENSE file in root directory.
 */

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';




import '../../info_carousel_card_service.dart';

class InfoCarouselCardViewScrollHeader extends StatelessWidget {
  final Animation<double> _animationValue;

  const InfoCarouselCardViewScrollHeader(this._animationValue, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var service = Provider.of<InfoCarouselCardService>(context);
    var model = service.model.cover!;
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      SizedBox(
          width: service.infoCarouselService.style.size(42*3.75),
          child: RichText(
              textAlign: TextAlign.left,
              text: TextSpan(
                  style: TextStyle(
                      color:  const Color(0xFF0036B5),
                      fontFamily: "Koara",
                      fontSize: service.infoCarouselService.style.text(18),
                      fontWeight: FontWeight.bold),
                  text: model.bigTextLight!,
                  children: [
                    TextSpan(
                        text: model.bigTextDark!,
                        style: TextStyle(
                            color: const Color(0xFF00133F),
                            fontFamily: "Koara",
                            fontSize: service.infoCarouselService.style.text(18),
                            fontWeight: FontWeight.bold))
                  ]))),
      SizedBox(child:model.image,
          width: service.controller.calculateAnimation(
              MediaQuery.of(context).size.width, _animationValue.value, service.infoCarouselService.style.size(18*8.12))),
    ]);
  }
}
