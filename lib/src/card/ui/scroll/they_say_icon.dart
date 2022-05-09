import 'package:flutter/cupertino.dart';
import 'package:tiki_style/tiki_style.dart';

import '../../../../info_carousel.dart';

class TheySayIcon extends StatelessWidget {
  final InfoCarouselCardModelContentIcon _data;

  const TheySayIcon(this._data, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Padding(
          padding: EdgeInsets.only(right: SizeProvider.instance.size(16)),
          child: SizedBox.fromSize(size: Size.square(SizeProvider.instance.size(22)),
              child: FittedBox(child: Icon(_data.icon, color: ColorProvider.white)))),
      Expanded(
        child: Text(_data.text!,
            style: TextStyle(
                fontSize: SizeProvider.instance.text(14),
                fontFamily: TextProvider.familyNunitoSans,
                package: 'tiki_style',
                height: 1.1,
                color: ColorProvider.white,
                fontWeight: FontWeight.w800)),
      )
    ]);
  }
}
