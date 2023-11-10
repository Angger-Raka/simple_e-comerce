import 'package:core/core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

extension AppThemeX on AppTheme {
  String toText() {
    return describeEnum(this);
  }

  ThemeData toThemeData() {
    switch (this) {
      case AppTheme.dark:
        return DarkTheme(
          primaryColor: AppColorsD.primary,
          secondaryColor: AppColorsD.secondary,
          alertColor: AppColorsD.alert,
          priceColor: AppColorsD.price,
          backgroundColor1: AppColorsD.bg1,
          backgroundColor2: AppColorsD.bg2,
          backgroundColor3: AppColorsD.bg3,
          primaryTextColor: AppColorsD.primaryText,
          secondaryTextColor: AppColorsD.secondaryText,
        ).data;
      case AppTheme.light:
        return LightTheme(
          primaryColor: AppColorsL.primary,
          secondaryColor: AppColorsL.secondary,
          alertColor: AppColorsL.alert,
          priceColor: AppColorsL.price,
          backgroundColor1: AppColorsL.bg1,
          backgroundColor2: AppColorsL.bg2,
          backgroundColor3: AppColorsL.bg3,
          primaryTextColor: AppColorsL.primaryText,
          secondaryTextColor: AppColorsL.secondaryText,
        ).data;
    }
  }
}
