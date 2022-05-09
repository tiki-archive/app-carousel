/*
 * Copyright (c) TIKI Inc.
 * MIT license. See LICENSE file in root directory.
 */

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tiki_style/tiki_style.dart';

import '../../service.dart';

class InfoCarouselCardUiCoverSubtitle extends StatelessWidget {
  final Animation<double> _animationValue;

  const InfoCarouselCardUiCoverSubtitle(this._animationValue, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var service = Provider.of<InfoCarouselCardService>(context);
    return Opacity(
        opacity: _animationValue.value * 2 <= 1
            ? 1 - (_animationValue.value * 2)
            : 0,
        child: Text(service.model.cover!.subtitle!,
            style: TextStyle(
                color: ColorProvider.orange,
                fontSize: SizeProvider.instance.text(16),
                fontWeight: FontWeight.w800,
                fontFamily: TextProvider.familyNunitoSans,
                package: 'tiki_style',)));
  }
}
