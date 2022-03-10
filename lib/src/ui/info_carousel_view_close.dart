import 'package:flutter/material.dart';
import 'package:info_carousel/src/info_carousel_service.dart';
import 'package:provider/provider.dart';

class InfoCarouselViewClose extends StatelessWidget {

  const InfoCarouselViewClose({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    InfoCarouselService service = Provider.of<InfoCarouselService>(context);
    return GestureDetector(
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text('CLOSE',
              style: TextStyle(
                  fontSize: service.style.text(15),
                  color: const Color(0xFF27002E),
                  fontFamily: "NunitoSans",
                  fontWeight: FontWeight.w800)),
          Padding(
              padding: EdgeInsets.only(left: service.style.size(1.5)),
              child: Icon(Icons.close,
                  size: service.style.text(22), color: const Color(0xFF27002E))),
        ]),
        onTap: () => Navigator.of(context).pop());
  }
}
