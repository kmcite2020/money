import '../../main.dart';

part 'models.g.dart';
part 'models.freezed.dart';

enum BorderRadiusEnum {
  none,
  minimal,
  normal,
  extra,
  full;
}

enum PaddingEnum {
  none,
  tight,
  normal,
  relaxed;
}

@freezed
class Settings with _$Settings {
  const factory Settings({
    required final ThemeMode themeMode,
    @MaterialColorConverter() required final MaterialColor materialColor,
    required final int pageIndex,
    required final BorderRadiusEnum borderRadiusEnum,
    required final PaddingEnum paddingEnum,
    required final String? backgroundImagePath,
    required final bool useMaterial3,
    required final String font,
  }) = _Settings;

  factory Settings.fromJson(json) => _$SettingsFromJson(json);
  factory Settings.init() => Settings(
        themeMode: ThemeMode.system,
        materialColor: Colors.blue,
        pageIndex: 0,
        borderRadiusEnum: BorderRadiusEnum.full,
        paddingEnum: PaddingEnum.relaxed,
        backgroundImagePath: '',
        useMaterial3: true,
        font: 'Default',
      );

  Uint8List? get backgroundImage {
    try {
      File file = File(backgroundImagePath!);
      return file.readAsBytesSync();
    } catch (e) {
      return null;
    }
  }

  double get borderRadius {
    return switch (borderRadiusEnum) {
      BorderRadiusEnum.none => 2,
      BorderRadiusEnum.minimal => 5,
      BorderRadiusEnum.normal => 10,
      BorderRadiusEnum.extra => 17,
      BorderRadiusEnum.full => 30,
    };
  }

  double get padding {
    return switch (paddingEnum) {
      PaddingEnum.none => 4,
      PaddingEnum.tight => 7,
      PaddingEnum.normal => 10,
      PaddingEnum.relaxed => 13,
    };
  }

  const Settings._();
}

class MaterialColorConverter implements JsonConverter<MaterialColor, int> {
  const MaterialColorConverter();

  @override
  MaterialColor fromJson(int json) => Colors.primaries[json];

  @override
  int toJson(MaterialColor object) => Colors.primaries.indexOf(object);
}
