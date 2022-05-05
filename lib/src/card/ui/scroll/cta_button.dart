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
          fixedSize: Size.fromWidth(SizeProvider.instance.size(70 * 3.75)),
          primary: const Color(0xFFFF521C),
          padding: EdgeInsets.symmetric(
              vertical: SizeProvider.instance.size(1.5 * 8.12)),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                  Radius.circular(SizeProvider.instance.size(20 * 3.75)))),
        ),
        child: Text(model.buttonText!,
            style: TextStyle(
                fontSize: SizeProvider.instance.text(13.5),
                fontWeight: FontWeight.w800)),
        onPressed: () => service.controller.openUrl(model.buttonUrl));
  }
}
