part of 'ui.dart';

class SettingsScreen extends ReactiveStatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'Settings'.text(textScaleFactor: titleTextScaleFactor),
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        children: [
          SwitchListTile(
            title: 'Material 3'.text(),
            subtitle: 'Enable Material 3 Support'.text(),
            value: SettingsBloc.to.settings.useMaterial3,
            onChanged: SettingsBloc.to.onUseMaterial3Changed,
          ).pad(),
          DropdownButtonFormField(
            value: SettingsBloc.to.settings.themeMode,
            items: ThemeMode.values.map(
              (eachThemeMode) {
                return DropdownMenuItem(
                  value: eachThemeMode,
                  child: eachThemeMode.name.toUpperCase().text(),
                );
              },
            ).toList(),
            onChanged: SettingsBloc.to.setThemeMode,
            decoration: const InputDecoration(labelText: 'Theme Mode'),
          ).pad(),
          DropdownButtonFormField(
            value: SettingsBloc.to.settings.materialColor,
            items: Colors.primaries
                .map(
                  (eachMaterialColor) => DropdownMenuItem(
                    value: eachMaterialColor,
                    child: eachMaterialColor.colorName.toUpperCase().text(),
                  ),
                )
                .toList(),
            onChanged: SettingsBloc.to.onMaterialColorChanged,
            decoration: const InputDecoration(
              labelText: 'Material Color',
            ),
          ).pad(),
          DropdownButtonFormField(
            value: SettingsBloc.to.settings.font,
            items: fonts
                .map(
                  (eachFont) => DropdownMenuItem(
                    value: eachFont,
                    child: eachFont.toString().toUpperCase().text(
                          style: TextStyle(
                            fontFamily: fontFamily(eachFont),
                          ),
                        ),
                  ),
                )
                .toList(),
            onChanged: (font) {
              SettingsBloc.to.onFontChanged(font!);
            },
            decoration: const InputDecoration(labelText: 'Font'),
          ).pad(),
          DropdownButtonFormField(
            value: SettingsBloc.to.settings.paddingEnum,
            items: PaddingEnum.values
                .map(
                  (eachPaddingEnum) => DropdownMenuItem(
                    value: eachPaddingEnum,
                    child: eachPaddingEnum.name.toUpperCase().text(),
                  ),
                )
                .toList(),
            onChanged: (padding) {
              SettingsBloc.to.onPaddingEnumChanged(padding!);
            },
            decoration: const InputDecoration(labelText: 'Padding'),
          ).pad(),
          DropdownButtonFormField(
            value: SettingsBloc.to.settings.borderRadiusEnum,
            items: BorderRadiusEnum.values
                .map(
                  (eachBorderRadiusEnum) => DropdownMenuItem(
                    value: eachBorderRadiusEnum,
                    child: eachBorderRadiusEnum.name.toUpperCase().text(),
                  ),
                )
                .toList(),
            onChanged: (borderRadius) {
              SettingsBloc.to.onBorderRadiusEnumChanged(borderRadius!);
            },
            decoration: const InputDecoration(
              labelText: 'Border Radius',
            ),
          ).pad(),
          ElevatedButton(
            onPressed: () async {
              final fpr = await FilePicker.platform.pickFiles();
              if (fpr != null) {
                final image = fpr.files.first;
                final path = image.path;
                if (path != null) {
                  SettingsBloc.to.onBackgroundImagePathChanged(path);
                }
              }
            },
            child: 'Set Background Image'.text(),
          ).pad(),
          ElevatedButton(
            onPressed: SettingsBloc.to.settings == Settings()
                ? null
                : () {
                    SettingsBloc.to.setDefaults();
                  },
            child: 'Delete Configs'.text(),
          ).pad(),
          ElevatedButton(
            onPressed: SettingsBloc.to.settings.backgroundImage == null
                ? null
                : () {
                    SettingsBloc.to.onBackgroundImagePathChanged('');
                  },
            child: 'Clear Image'.text(),
          ).pad(),
          SettingsBloc.to.settings.text().pad(),
          SettingsBloc.to.settings.backgroundImage == null
              ? 'No background imaged selected.'.text().pad().center().pad().card().pad()
              : Image.memory(SettingsBloc.to.settings.backgroundImage!).pad()
        ],
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: randomID,
        onPressed: navigator.back,
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}
