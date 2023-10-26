part of '../providers.dart';

ThemeData theme() {
  return FlexThemeData.light(
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: SettingsBloc.to.settings.materialColor,
    ),
    subThemesData: FlexSubThemesData(
      defaultRadius: SettingsBloc.to.settings.borderRadius,
      menuBarRadius: SettingsBloc.to.settings.borderRadius,
    ),
    appBarStyle: FlexAppBarStyle.primary,
    useMaterial3: SettingsBloc.to.settings.useMaterial3,
    fontFamily: fontFamily(SettingsBloc.to.settings.font),
    lightIsWhite: true,
    tooltipsMatchBackground: true,
  );
}
