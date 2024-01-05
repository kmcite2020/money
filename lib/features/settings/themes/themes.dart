import '../../../main.dart';

final themes = Themes();

class Themes {
  ThemeMode themeMode() {
    return settingsManager.settings.themeMode;
  }

  ThemeData theme() {
    return FlexThemeData.light(
      fontFamily: fontFamily(settingsManager.settings.font),
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: settingsManager.settings.materialColor,
      ),
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
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: settingsManager.settings.materialColor,
        brightness: Brightness.dark,
      ),
      useMaterial3: settingsManager.settings.useMaterial3,
      appBarStyle: FlexAppBarStyle.primary,
      subThemesData: FlexSubThemesData(
        defaultRadius: settingsManager.settings.borderRadius,
      ),
    );
  }
}
