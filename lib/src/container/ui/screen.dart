import 'package:flutter/material.dart';
import 'close.dart';
import 'slider.dart';

class InfoCarouselUiScreen extends StatelessWidget {
  const InfoCarouselUiScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Builder(builder: (BuildContext context) {
      return Container(
          color: const Color(0xFFF0F0F0),
          child: SafeArea(
              child: Column(children: const [
            Padding(
                padding: EdgeInsets.only(top: 8, bottom: 8),
                child: InfoCarouselUiClose()),
            Expanded(child: InfoCarouselUiSlider())
          ])));
    }));
  }
}
