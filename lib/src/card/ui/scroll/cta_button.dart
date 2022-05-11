/*
 * Copyright (c) TIKI Inc.
 * MIT license. See LICENSE file in root directory.
 */

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tiki_style/tiki_style.dart';
import '../../service.dart';

class InfoCarouselCardUiScrollCtaButton extends StatelessWidget {
  const InfoCarouselCardUiScrollCtaButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var service = Provider.of<InfoCarouselCardService>(context);
    var model = service.model.content!.cta!;
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize: Size.fromWidth(SizeProvider.instance.size(265)),
          primary: ColorProvider.orange,
          padding:
              EdgeInsets.symmetric(vertical: SizeProvider.instance.size(12)),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                  Radius.circular(SizeProvider.instance.size(70)))),
        ),
        child: Text(model.buttonText!,
            style: TextStyle(
                fontFamily: TextProvider.familyNunitoSans,
                package: 'tiki_style',
                fontSize: SizeProvider.instance.text(16),
                fontWeight: FontWeight.w800)),
        onPressed: () => service.controller.openUrl(model.buttonUrl));
  }
}
