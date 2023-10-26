part of 'blocs.dart';

class SettingsBloc {
  static final to = SettingsBloc();
  final settingsRM = RM.inject(
    () => Settings(),
    persist: () => PersistState(
      key: 'settings',
      fromJson: Settings.fromJson,
      toJson: toJson,
    ),
  );

  Settings get settings => settingsRM.state;
  void setSettings(Settings settings) {
    settingsRM.state = settings;
    settingsRM.notify();
  }

  void setThemeMode(ThemeMode? themeMode) {
    setSettings(settings..themeMode = themeMode!);
  }

  void onUseMaterial3Changed(bool useMaterial3) {
    setSettings(settings..useMaterial3 = useMaterial3);
  }

  void onMaterialColorChanged(MaterialColor? materialColor) {
    setSettings(settings..materialColor = materialColor!);
  }

  void onBackgroundImagePathChanged(String backgroundImagePath) {
    setSettings(settings..backgroundImagePath = backgroundImagePath);
  }

  void onBorderRadiusEnumChanged(BorderRadiusEnum borderRadiusEnum) {
    setSettings(settings..borderRadiusEnum = borderRadiusEnum);
  }

  void onPaddingEnumChanged(PaddingEnum paddingEnum) {
    setSettings(settings..paddingEnum = paddingEnum);
  }

  void onFontChanged(String font) {
    setSettings(settings..font = font);
  }

  void onPageIndexChanged(int pageIndex) {
    setSettings(settings..pageIndex = pageIndex);
  }

  void setDefaults() => setSettings(Settings());
}
