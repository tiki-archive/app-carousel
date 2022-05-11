/*
 * Copyright (c) TIKI Inc.
 * MIT license. See LICENSE file in root directory.
 */

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tiki_style/tiki_style.dart';

import '../../controller.dart';
import '../../service.dart';

class InfoCarouselCardUiCoverArrow extends StatelessWidget {
  final Animation<double> _animationValue;
  final Animation _animationController;

  const InfoCarouselCardUiCoverArrow(
      this._animationController, this._animationValue,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    InfoCarouselCardService service =
        Provider.of<InfoCarouselCardService>(context);
    if (service.model.content?.body == null) return Container();
    InfoCarouselCardController controller = service.controller;
    return GestureDetector(
        onTap: () => controller.tapArrowSlideUp(_animationController),
        child: Opacity(
            opacity: _animationValue.value * 2 <= 1
                ? 1 - (_animationValue.value * 2)
                : 0,
            child: SizedBox(
                width: double.infinity,
                child: Icon(
                  IconProvider.arrow_wide_up,
                  color: ColorProvider.greyThree,
                  size: SizeProvider.instance.size(12),
                ))));
  }
}
