

import 'package:info_carousel/src/ui/info_carousel_screen.dart';
import 'package:provider/provider.dart';

import 'info_carousel_service.dart';
import 'ui/info_carousel_layout.dart';

class InfoCarouselPresenter {
  final InfoCarouselService service;

  InfoCarouselPresenter(this.service);

  ChangeNotifierProvider<InfoCarouselService> home() {
    return ChangeNotifierProvider.value(
        value: service, child: const InfoCarouselScreen());
  }
}
