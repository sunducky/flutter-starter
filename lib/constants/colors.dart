import 'package:flutter/material.dart';
import 'package:sample/utils/services/theme_service.dart';

class AppColors {
  // Main
  static Color primary = const Color(0xFF5667FD);
  static Color primaryLight = const Color(0xFF5667FD).withOpacity(0.4);

  // FontColors
  static const Color fontColorLight = Colors.black87;
  static const Color fontColorDark = Colors.white;
  static const Color fontSecondaryColorLight = Colors.black45;
  static const Color fontSecondaryColorDark = Colors.white54;
  static const Color fontColorDarkTitle = Colors.black;
  static const Color fontColorLightTitle = Colors.white;
  static Color get fontColor =>
      ThemeService().isSavedDarkMode() ? fontColorDark : fontColorLight;
  static Color get fontSecondaryColor => ThemeService().isSavedDarkMode()
      ? fontSecondaryColorDark
      : fontSecondaryColorLight;
  static Color get fontColorTitle => ThemeService().isSavedDarkMode()
      ? fontColorDarkTitle
      : fontColorLightTitle;

  // Backgrounds
  static const Color darkBackground = Color(0xFF1E1E1E);
  static const Color lightBackground = Color(0xFFFFFFFF);
  static Color get background =>
      ThemeService().isSavedDarkMode() ? darkBackground : lightBackground;

  // Cards
  static const Color cardColorLight = Colors.white;
  static const Color cardColorDark = Colors.black;
  static Color get cardColor =>
      ThemeService().isSavedDarkMode() ? cardColorDark : cardColorLight;
}
