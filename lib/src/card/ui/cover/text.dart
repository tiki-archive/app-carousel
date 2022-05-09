/*
 * Copyright (c) TIKI Inc.
 * MIT license. See LICENSE file in root directory.
 */

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tiki_style/tiki_style.dart';

import '../../service.dart';

class InfoCarouselCardUiCoverText extends StatelessWidget {
  final Animation<double> _animationValue;

  const InfoCarouselCardUiCoverText(this._animationValue, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var service = Provider.of<InfoCarouselCardService>(context);
    return Opacity(
        opacity: _animationValue.value * 3 <= 1
            ? 1 - (_animationValue.value * 3)
            : 0,
        child: Text(service.model.cover!.text!,
            style: TextStyle(
                color: const Color(0xFF00133F),
                fontFamily: TextProvider.familyNunitoSans,
                package: 'tiki_style',
                fontSize: SizeProvider.instance.text(14),
                fontWeight: FontWeight.w700)));
  }
}
