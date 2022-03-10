import 'utils/info_carousel_utils_style.dart';

class InfoCarouselStyle extends InfoCarouselUtilsStyle {
  final String _textFont;
  final String _bigTxtFontFamily;
  final String _leftImage;
  final String _rightImage;

  InfoCarouselStyle(
      {textFont = 'NunitoSans',
      bigTxtFontFamily = 'Koara',
      leftImage = 'yes',
      rightImage = 'no'})
      : _textFont = textFont,
        _bigTxtFontFamily = bigTxtFontFamily,
        _leftImage = leftImage,
        _rightImage = rightImage;

  String get textFont => _textFont;
  String get bigTxtFontFamily => _bigTxtFontFamily;
  String get leftImage => _leftImage;
  String get rightImage => _rightImage;
}
