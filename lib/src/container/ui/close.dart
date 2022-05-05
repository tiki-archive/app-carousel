import 'package:flutter/material.dart';
import 'package:tiki_style/tiki_style.dart';

class InfoCarouselUiClose extends StatelessWidget {
  const InfoCarouselUiClose({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text('CLOSE',
              style: TextStyle(
                  fontSize: SizeProvider.instance.text(15),
                  color: const Color(0xFF27002E),
                  fontFamily: TextProvider.familyNunitoSans,
                  package: 'tiki_style',
                  fontWeight: FontWeight.w800)),
          Padding(
              padding: EdgeInsets.only(left: SizeProvider.instance.size(1.5)),
              child: Icon(Icons.close,
                  size: SizeProvider.instance.text(22),
                  color: const Color(0xFF27002E))),
        ]),
        onTap: () => Navigator.of(context).pop());
  }
}
