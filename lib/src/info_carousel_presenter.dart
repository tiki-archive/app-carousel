import 'ui/info_carousel_screen.dart';
import 'package:provider/provider.dart';

import 'info_carousel_service.dart';

class InfoCarouselPresenter {
  final InfoCarouselService service;

  InfoCarouselPresenter(this.service);

  ChangeNotifierProvider<InfoCarouselService> carouselWidget() {
    return ChangeNotifierProvider.value(
        value: service, child: const InfoCarouselScreen());
  }
}
