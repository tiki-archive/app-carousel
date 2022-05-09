/*
 * Copyright (c) TIKI Inc.
 * MIT license. See LICENSE file in root directory.
 */

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tiki_style/tiki_style.dart';

import '../../model/content_text.dart';
import '../../service.dart';

class InfoCarouselCardUiScrollCtaExplain extends StatelessWidget {
  const InfoCarouselCardUiScrollCtaExplain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var service = Provider.of<InfoCarouselCardService>(context, listen: false);
    List<InfoCarouselCardModelContentText> spans =
        service.model.content!.cta!.explain!;
    TextSpan? childSpan;
    for (var spanContent in spans.reversed) {
      childSpan = _buildSpan(spanContent, childSpan, service);
    }
    return RichText(text: childSpan ?? const TextSpan());
  }

  _buildSpan(InfoCarouselCardModelContentText content, TextSpan? child,
      InfoCarouselCardService service) {
    return TextSpan(
        recognizer: TapGestureRecognizer()
          ..onTap = () => service.controller.openUrl(content.url),
        style: TextStyle(
            color: content.url == null
                ? const Color(0xFF00133F)
                : const Color(0xFFFF521C),
            fontWeight:
                content.url == null ? FontWeight.normal : FontWeight.w600,
            fontSize: SizeProvider.instance.text(15),
            fontFamily: TextProvider.familyNunitoSans,
                package: 'tiki_style',),
        text: content.text,
        children: [child ?? const TextSpan()]);
  }
}
