/*
 * Copyright (c) TIKI Inc.
 * MIT license. See LICENSE file in root directory.
 */

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tiki_style/tiki_style.dart';

import '../../service.dart';

class InfoCarouselCardUiCoverHeader extends StatelessWidget {
  final Animation<double> _animationValue;

  const InfoCarouselCardUiCoverHeader(this._animationValue, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var service = Provider.of<InfoCarouselCardService>(context);
    var model = service.model.cover!.header!;
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      Expanded(
          child: Row(children: [
        SizedBox(
            width: service.controller.calculateAnimation(
                SizeProvider.instance.width(21), _animationValue.value, 0),
            height: service.controller.calculateAnimation(
                SizeProvider.instance.width(21), _animationValue.value, 0),
            child: FittedBox(fit: BoxFit.fill, child: model.image!)),
        Padding(
            padding:
                EdgeInsets.only(right: SizeProvider.instance.size(5))),
        Text(
          model.title!,
          style: TextStyle(
              fontFamily: TextProvider.familyNunitoSans,
              package: 'tiki_style',
              fontSize: service.controller.calculateAnimation(
                  SizeProvider.instance.text(14), _animationValue.value, 0),
              fontWeight: FontWeight.w700,
              color: ColorProvider.tikiBlue),
        )
      ])),
      service.model.cover?.header?.share?.message == null
          ? Container()
          : GestureDetector(
              onTap: () => service.controller.shareCard(
                  context, model.share!.message!, model.share!.image!),
              child: Icon(IconProvider.share,
                  color: ColorProvider.orange,
                  size: service.controller.calculateAnimation(
                      SizeProvider.instance.text(36),
                      _animationValue.value,
                      0)))
    ]);
  }
}
