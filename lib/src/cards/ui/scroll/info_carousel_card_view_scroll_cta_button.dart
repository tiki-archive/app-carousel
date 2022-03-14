/*
 * Copyright (c) TIKI Inc.
 * MIT license. See LICENSE file in root directory.
 */

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../info_carousel_card_service.dart';

class InfoCarouselCardViewScrollCtaButton extends StatelessWidget {

  const InfoCarouselCardViewScrollCtaButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var service = Provider.of<InfoCarouselCardService>(context);
    var model = service.model.content!.cta!;
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize: Size.fromWidth(service.infoCarouselService.style.size(70*3.75)),
          primary: const Color(0xFFFF521C),
          padding: EdgeInsets.symmetric(vertical: service.infoCarouselService.style.size(1.5*8.12)),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(service.infoCarouselService.style.size(20*3.75)))),
        ),
        child: Text(model.buttonText!,
            style: TextStyle(fontSize: service.infoCarouselService.style.text(13.5), fontWeight: FontWeight.w800)),
        onPressed: () => service.controller.openUrl(model.buttonUrl));
  }
}
