import 'package:flutter/cupertino.dart';
import 'package:tiki_style/tiki_style.dart';

import '../../../../info_carousel.dart';

class ShouldKnowIcon extends StatelessWidget{

  final InfoCarouselCardModelContentIcon _data;

  const ShouldKnowIcon(this._data, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
    Padding(
    padding:
    EdgeInsets.only(right: SizeProvider.instance.size(16)),
    child: SizedBox(
    child: FittedBox(child: Icon(_data.icon, color: ColorProvider.white), fit: BoxFit.contain),
    width: SizeProvider.instance.size(27),
    height: SizeProvider.instance.size(27))),
    Expanded(
    child: Text(_data.text!,
    style: TextStyle(
    fontSize: SizeProvider.instance.text(13),
    fontFamily: TextProvider.familyNunitoSans,
    package: 'tiki_style',
    height: 1.2,
    color: ColorProvider.white,
    fontWeight: FontWeight.w700)),
    )]);
  }

}