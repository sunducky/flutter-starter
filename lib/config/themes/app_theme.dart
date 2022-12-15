import 'package:flutter/material.dart';
import 'package:sample/constants/colors.dart';

class AppTheme {
  static ThemeData get light => ThemeData(
        primaryColor: AppColors.primary,
        checkboxTheme: CheckboxThemeData(
          fillColor:
              MaterialStateColor.resolveWith((states) => AppColors.primary),
          checkColor: MaterialStateColor.resolveWith((states) => Colors.white),
          shape: const CircleBorder(),
        ),
        brightness: Brightness.light,
        cardColor: AppColors.cardColorLight,
        splashColor: AppColors.primary.withOpacity(0.4),
        hintColor: AppColors.fontSecondaryColorLight,
        dividerColor: AppColors.fontColorLight,
        backgroundColor: AppColors.lightBackground,
        scaffoldBackgroundColor: AppColors.lightBackground,
      );
  //
  static ThemeData get dark => ThemeData(
        primaryColor: AppColors.primary,
        checkboxTheme: CheckboxThemeData(
          fillColor:
              MaterialStateColor.resolveWith((states) => AppColors.primary),
          checkColor: MaterialStateColor.resolveWith((states) => Colors.white),
          shape: const CircleBorder(),
        ),
        brightness: Brightness.dark,
        cardColor: AppColors.cardColorDark,
        splashColor: AppColors.primary.withOpacity(0.4),
        hintColor: AppColors.fontSecondaryColorDark,
        dividerColor: AppColors.fontColorDark,
        backgroundColor: AppColors.darkBackground,
        scaffoldBackgroundColor: AppColors.darkBackground,
      );
}
