import 'dart:ui';

class ColorConstants {
  static final ColorConstants _instance = ColorConstants._internal();

  factory ColorConstants() {
    return _instance;
  }

  ColorConstants._internal();

  Color get darkBlue => const Color(0xFF172C49);
  Color get darkGrey => const Color(0xFF535A72);
  Color get white => const Color(0xFFFFFFFF);
  Color get black => const Color(0xFF000000);
  Color get lightColor => const Color(0xFFFBFCFF);
  Color get shadowColor => const Color(0xFF000000).withOpacity(0.16);
  Color get errorColor => const Color(0xFFFC3131);
  Color get green => const Color(0xFF3BA935);
  Color get yellow => const Color(0xFFE9CF30);
  Color get shadowColorGreen => const Color(0xFF72C875);
  Color get borderColor => const Color(0xFFE1E1E1);
  Color get lightGrey => const Color(0xFFECECEC);

}