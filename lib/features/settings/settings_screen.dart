import '../../main.dart';

class SettingsPage extends ReactiveStatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          title: 'Settings'.text(),
        ),
        SliverList.list(
          children: [
            SwitchListTile(
              title: 'Material 3'.text(),
              subtitle: 'Enable Material 3 Support'.text(),
              value: settingsManager.settings.useMaterial3,
              onChanged: settingsManager.onUseMaterial3Changed,
            ).pad(),
            DropdownButtonFormField(
              value: settingsManager.settings.themeMode,
              items: ThemeMode.values.map(
                (eachThemeMode) {
                  return DropdownMenuItem(
                    value: eachThemeMode,
                    child: eachThemeMode.name.toUpperCase().text(),
                  );
                },
              ).toList(),
              onChanged: settingsManager.setThemeMode,
              decoration: const InputDecoration(labelText: 'Theme Mode'),
            ).pad(),
            DropdownButtonFormField(
              value: settingsManager.settings.materialColor,
              items: Colors.primaries
                  .map(
                    (eachMaterialColor) => DropdownMenuItem(
                      value: eachMaterialColor,
                      child: eachMaterialColor.colorName.toUpperCase().text(),
                    ),
                  )
                  .toList(),
              onChanged: settingsManager.onMaterialColorChanged,
              decoration: const InputDecoration(
                labelText: 'Material Color',
              ),
            ).pad(),
            DropdownButtonFormField(
              value: settingsManager.settings.font,
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
                settingsManager.onFontChanged(font!);
              },
              decoration: const InputDecoration(labelText: 'Font'),
            ).pad(),
            DropdownButtonFormField(
              value: settingsManager.settings.paddingEnum,
              items: PaddingEnum.values
                  .map(
                    (eachPaddingEnum) => DropdownMenuItem(
                      value: eachPaddingEnum,
                      child: eachPaddingEnum.name.toUpperCase().text(),
                    ),
                  )
                  .toList(),
              onChanged: (padding) {
                settingsManager.onPaddingEnumChanged(padding!);
              },
              decoration: const InputDecoration(labelText: 'Padding'),
            ).pad(),
            DropdownButtonFormField(
              value: settingsManager.settings.borderRadiusEnum,
              items: BorderRadiusEnum.values
                  .map(
                    (eachBorderRadiusEnum) => DropdownMenuItem(
                      value: eachBorderRadiusEnum,
                      child: eachBorderRadiusEnum.name.toUpperCase().text(),
                    ),
                  )
                  .toList(),
              onChanged: (borderRadius) {
                settingsManager.onBorderRadiusEnumChanged(borderRadius!);
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
                    settingsManager.onBackgroundImagePathChanged(path);
                  }
                }
              },
              child: 'Set Background Image'.text(),
            ).pad(),
            ElevatedButton(
              onPressed: settingsManager.settings == Settings.init()
                  ? null
                  : () {
                      settingsManager.setDefaults();
                    },
              child: 'Delete Configs'.text(),
            ).pad(),
            ElevatedButton(
              onPressed: settingsManager.settings.backgroundImage == null
                  ? null
                  : () {
                      settingsManager.onBackgroundImagePathChanged('');
                    },
              child: 'Clear Image'.text(),
            ).pad(),
            settingsManager.settings.backgroundImage == null
                ? 'No background imaged selected.'
                    .text()
                    .pad()
                    .center()
                    .pad()
                    .card()
                    .pad()
                : Image.memory(settingsManager.settings.backgroundImage!).pad()
          ],
        ),
      ],
    );
  }
}
