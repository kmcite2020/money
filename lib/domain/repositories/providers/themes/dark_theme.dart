part of '../providers.dart';

ThemeData darkTheme() {
  return FlexThemeData.dark(
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: SettingsBloc.to.settings.materialColor,
      brightness: Brightness.dark,
    ),
    subThemesData: FlexSubThemesData(
      defaultRadius: SettingsBloc.to.settings.borderRadius,
      menuBarRadius: SettingsBloc.to.settings.borderRadius,
    ),
    appBarStyle: FlexAppBarStyle.primary,
    useMaterial3: SettingsBloc.to.settings.useMaterial3,
    fontFamily: fontFamily(SettingsBloc.to.settings.font),
    darkIsTrueBlack: true,
    tooltipsMatchBackground: true,
  );
}
