/*
 * Copyright (c) TIKI Inc.
 * MIT license. See LICENSE file in root directory.
 */

import 'package:provider/provider.dart';

import 'service.dart';
import 'ui/layout.dart';

class InfoCarouselCardPresenter {
  final InfoCarouselCardService service;

  InfoCarouselCardPresenter(this.service);

  ChangeNotifierProvider<InfoCarouselCardService> render() {
    return ChangeNotifierProvider.value(
        value: service, child: const CardViewLayout());
  }
}
