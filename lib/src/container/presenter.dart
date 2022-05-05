import 'service.dart';
import 'package:provider/provider.dart';

import 'ui/screen.dart';

class InfoCarouselPresenter {
  final InfoCarouselService service;

  InfoCarouselPresenter(this.service);

  ChangeNotifierProvider<InfoCarouselService> carouselWidget() {
    return ChangeNotifierProvider.value(
        value: service, child: const InfoCarouselScreen());
  }
}
