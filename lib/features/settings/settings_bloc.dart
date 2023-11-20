part of '../../features/entry/blocs.dart';

final SettingsManager settingsManager = SettingsManager();

class SettingsManager {
  final settingsRM = RM.inject(
    () => Settings.init(),
    persist: () => PersistState(
      key: 'settings',
      fromJson: (json) => Settings.fromJson(jsonDecode(json)),
      toJson: (state) => jsonEncode(state.toJson()),
    ),
  );

  Settings get settings => settingsRM.state;
  void setSettings(Settings Function(Settings settings) settingsModifier) {
    settingsRM.state = settingsModifier(settings);
  }

  void setThemeMode(themeMode) {
    setSettings(
      (settings) => settings.copyWith(themeMode: themeMode),
    );
  }

  void onUseMaterial3Changed(bool useMaterial3) {
    setSettings(
      (settings) => settings.copyWith(useMaterial3: useMaterial3),
    );
  }

  void onMaterialColorChanged(materialColor) {
    setSettings(
      (settings) => settings.copyWith(materialColor: materialColor),
    );
  }

  void onBackgroundImagePathChanged(String backgroundImagePath) {
    setSettings(
      (settings) => settings.copyWith(
        backgroundImagePath: backgroundImagePath,
      ),
    );
  }

  void onBorderRadiusEnumChanged(BorderRadiusEnum borderRadiusEnum) {
    setSettings(
      (settings) => settings.copyWith(borderRadiusEnum: borderRadiusEnum),
    );
  }

  void onPaddingEnumChanged(PaddingEnum paddingEnum) {
    setSettings((settings) => settings.copyWith(paddingEnum: paddingEnum));
  }

  void onFontChanged(String font) {
    setSettings((settings) => settings.copyWith(font: font));
  }

  void onPageIndexChanged(int pageIndex) {
    setSettings((settings) => settings.copyWith(pageIndex: pageIndex));
  }

  void setDefaults() => setSettings((_) => Settings.init());
}
