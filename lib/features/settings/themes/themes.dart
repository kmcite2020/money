import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:project_money/features/entry/blocs.dart';
import 'package:project_money/features/settings/themes/font_family.dart';

Themes get themes => Themes();

class Themes {
  ThemeMode themeMode() {
    return settingsManager.settings.themeMode;
  }

  ThemeData theme() {
    return FlexThemeData.light(
      fontFamily: fontFamily(settingsManager.settings.font),
      useMaterial3: settingsManager.settings.useMaterial3,
      appBarStyle: FlexAppBarStyle.primary,
      subThemesData: FlexSubThemesData(
        defaultRadius: settingsManager.settings.borderRadius,
      ),
    );
  }

  ThemeData darkTheme() {
    return FlexThemeData.dark(
      fontFamily: fontFamily(settingsManager.settings.font),
      useMaterial3: settingsManager.settings.useMaterial3,
      appBarStyle: FlexAppBarStyle.primary,
      subThemesData: FlexSubThemesData(
        defaultRadius: settingsManager.settings.borderRadius,
      ),
    );
  }
}
