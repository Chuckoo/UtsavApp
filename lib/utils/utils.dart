import 'dart:ui';

class AppConstants {
  static const appName = "Uatsav 2020";
}

class AppFonts {
  static const primaryFont = "Poppins";
}

class AppFunctions {
   static Color formatColor(String color) {
    var newColor = color.substring(1).toUpperCase();
    var preffix = "0xFF";
    var finalColor = int.parse(preffix + newColor);
    return Color(finalColor);
  }
}

class AppImages {
  static const watch20 = "assets/images/watch20.png";
}
