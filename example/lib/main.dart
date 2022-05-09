import 'package:flutter/material.dart';
import 'package:info_carousel/info_carousel.dart';

import 'sample_cards.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: InfoCarousel(cards: sampleCards).carouselWidget()
    );
  }

}