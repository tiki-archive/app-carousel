/*
 * Copyright (c) TIKI Inc.
 * MIT license. See LICENSE file in root directory.
 */
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tiki_style/tiki_style.dart';

import '../../service.dart';

class InfoCarouselCardUiCoverImage extends StatelessWidget {
  final Animation<double> _animationValue;

  const InfoCarouselCardUiCoverImage(this._animationValue, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var service = Provider.of<InfoCarouselCardService>(context);
    var model = service.model.cover!.image!;
    return SizedBox(
        child: FittedBox(child: model, fit:BoxFit.contain),
        width: double.infinity,
        height: service.controller.calculateAnimation(
            SizeProvider.instance.size(242),
            _animationValue.value,
            SizeProvider.instance.size(140)));
  }
}
