import 'package:flutter/material.dart';
import 'utils/utils.dart';

ThemeData buildThemeData() {
  final baseTheme = ThemeData(fontFamily: AppFonts.primaryFont);

  return baseTheme.copyWith(
    primaryColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
  );
}
