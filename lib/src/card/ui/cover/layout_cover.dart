/*
 * Copyright (c) TIKI Inc.
 * MIT license. See LICENSE file in root directory.
 */

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tiki_style/tiki_style.dart';

import '../../service.dart';
import 'arrow.dart';
import 'big_text.dart';
import 'header.dart';
import 'image.dart';
import 'subtitle.dart';
import 'text.dart';

class InfoCarouselCardLayoutCover extends StatelessWidget {
  final Animation<double> _animationValue;
  final AnimationController _animationController;

  const InfoCarouselCardLayoutCover(
      this._animationValue, this._animationController,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var service = Provider.of<InfoCarouselCardService>(context);
    return GestureDetector(
        onVerticalDragStart: (dragDetails) =>
            service.controller.setStartVerticalDragDetailsCover(dragDetails),
        onVerticalDragUpdate: (dragDetails) =>
            service.controller.setUpdateVerticalDragDetailsCover(dragDetails),
        onVerticalDragEnd: (endDetails) => service.controller
            .onVerticalDragEndCover(endDetails, _animationController),
        child: Container(
          color: ColorProvider.white,
          padding: EdgeInsets.only(
              top: SizeProvider.instance.size(16),
              left: SizeProvider.instance.size(11),
              right: SizeProvider.instance.size(15)),
          child: Column(children: [
            InfoCarouselCardUiCoverHeader(_animationValue),
            Padding(
              padding: EdgeInsets.only(
                  left: SizeProvider.instance.size(10),
                  top: SizeProvider.instance.size(10)),
              child: InfoCarouselCardUiCoverImage(_animationValue),
            ),
            Container(
                padding: EdgeInsets.only(left: SizeProvider.instance.size(8)),
                alignment: Alignment.topLeft,
                child: InfoCarouselCardUiCoverSubtitle(_animationValue)),
            Container(
                padding: EdgeInsets.only(
                    left: SizeProvider.instance.size(8),
                    top: SizeProvider.instance.size(8)),
                child: InfoCarouselCardUiCoverBigText(_animationValue)),
            Padding(
                padding: EdgeInsets.only(
                    right: SizeProvider.instance.size(10),
                    top: SizeProvider.instance.size(12),
                    left: SizeProvider.instance.size(10)),
                child: InfoCarouselCardUiCoverText(_animationValue)),
            Expanded(
                child: Container(
                    alignment: Alignment.bottomCenter,
                    padding:
                        EdgeInsets.only(bottom: SizeProvider.instance.size(32)),
                    child: InfoCarouselCardUiCoverArrow(
                        _animationController, _animationValue)))
          ]),
        ));
  }
}
