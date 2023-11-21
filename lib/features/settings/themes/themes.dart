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
      fontFamily: font(),
      useMaterial3: settingsManager.settings.useMaterial3,
      appBarStyle: FlexAppBarStyle.primary,
    );
  }

  ThemeData darkTheme() {
    return FlexThemeData.dark(
      fontFamily: font(),
      useMaterial3: settingsManager.settings.useMaterial3,
      appBarStyle: FlexAppBarStyle.primary,
    );
  }
}

extension ThemesExtensions on Themes {
  String? font() {
    return fontFamily(settingsManager.settings.font);
  }
}
