/*
 * Copyright (c) TIKI Inc.
 * MIT license. See LICENSE file in root directory.
 */

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';




import '../../info_carousel_card_service.dart';

class InfoCarouselCardViewCoverHeader extends StatelessWidget {
  final Animation<double> _animationValue;

  const InfoCarouselCardViewCoverHeader(this._animationValue, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var service = Provider.of<InfoCarouselCardService>(context);
    var model = service.model.cover!.header!;
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      Expanded(
          child: Row(children: [
            SizedBox(
              width: service.controller
                .calculateAnimation(service.infoCarouselService.style.size(6*3.75),
                  _animationValue.value, 0),
              child: model.image!
            ),
            Padding(padding: EdgeInsets.only(right: service.infoCarouselService.style.size(2*3.75))),
        Text(
          model.title!,
          style: TextStyle(
              fontFamily: "NunitoSans",
              fontSize: service.controller
                  .calculateAnimation(service.infoCarouselService.style.text(12), _animationValue.value, 0),
              fontWeight: FontWeight.bold,
              color: const Color(0xFF00133F)),
        )
      ])),
      service.model.cover?.header?.share?.message == null
          ? Container()
          : GestureDetector(
              onTap: () => service.controller.shareCard(
                  context, model.share!.message!, model.share!.image!),
              child: Icon(Icons.share,
                  color: const Color(0xFFFF521C),
                  size: service.controller
                      .calculateAnimation(service.infoCarouselService.style.text(36), _animationValue.value, 0)))
    ]);
  }
}
