import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

import '../../entry/blocs.dart';
import 'font_family.dart';

ThemeData theme() {
  return FlexThemeData.light(
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: settingsManager.settings.materialColor,
    ),
    subThemesData: FlexSubThemesData(
      defaultRadius: settingsManager.settings.borderRadius,
      menuBarRadius: settingsManager.settings.borderRadius,
    ),
    appBarStyle: FlexAppBarStyle.primary,
    useMaterial3: settingsManager.settings.useMaterial3,
    fontFamily: fontFamily(settingsManager.settings.font),
    lightIsWhite: true,
    tooltipsMatchBackground: true,
  );
}
