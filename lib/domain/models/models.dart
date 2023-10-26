// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:isar/isar.dart';

part 'entry.dart';
part 'models.g.dart';
part 'person.dart';

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

abstract class ToJson {
  String toJson();
  Map<String, dynamic> toMap();
}

String toJson<T extends ToJson>(T t) => t.toJson();

class Settings implements ToJson {
  int? _themeModeValue;
  int? _materialColorValue;
  int? _pageIndex;
  int? _borderRadiusEnum;
  int? _paddingEnum;
  String? _backgroundImagePath;
  bool? _useMaterial3;
  String? _font;

  ThemeMode get themeMode => ThemeMode.values[_themeModeValue ?? 0];
  set themeMode(ThemeMode value) {
    _themeModeValue = ThemeMode.values.indexOf(value);
  }

  MaterialColor get materialColor => Colors.primaries[_materialColorValue ?? 0];
  set materialColor(MaterialColor value) {
    _materialColorValue = Colors.primaries.indexOf(value);
  }

  bool get useMaterial3 => _useMaterial3 ?? true;
  set useMaterial3(bool value) {
    _useMaterial3 = value;
  }

  set backgroundImagePath(String? value) {
    _backgroundImagePath = value;
  }

  String get backgroundImagePath => _backgroundImagePath ?? '';
  Uint8List? get backgroundImage {
    try {
      File file = File(_backgroundImagePath!);
      return file.readAsBytesSync();
    } catch (e) {
      return null;
    }
  }

  BorderRadiusEnum get borderRadiusEnum =>
      BorderRadiusEnum.values[_borderRadiusEnum ?? 0];
  set borderRadiusEnum(BorderRadiusEnum value) {
    _borderRadiusEnum = BorderRadiusEnum.values.indexOf(value);
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

  String get font => _font ?? 'Dosis';
  set font(String value) {
    _font = value;
  }

  PaddingEnum get paddingEnum => PaddingEnum.values[_paddingEnum ?? 0];
  set paddingEnum(PaddingEnum value) {
    _paddingEnum = PaddingEnum.values.indexOf(value);
  }

  double get padding => switch (paddingEnum) {
        PaddingEnum.none => 4,
        PaddingEnum.tight => 7,
        PaddingEnum.normal => 10,
        PaddingEnum.relaxed => 13,
      };

  int get pageIndex => _pageIndex ?? 0;
  set pageIndex(int value) {
    _pageIndex = value;
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      '_themeModeValue': _themeModeValue,
      '_materialColorValue': _materialColorValue,
      '_pageIndex': _pageIndex,
      '_borderRadiusEnum': _borderRadiusEnum,
      '_paddingEnum': _paddingEnum,
      '_backgroundImagePath': _backgroundImagePath,
      '_useMaterial3': _useMaterial3,
      '_font': _font,
    };
  }

  factory Settings.fromMap(Map<String, dynamic> map) {
    return Settings()
      .._themeModeValue = map['_themeModeValue']
      .._materialColorValue = map['_materialColorValue']
      .._pageIndex = map['_pageIndex']
      .._borderRadiusEnum = map['_borderRadiusEnum']
      .._paddingEnum = map['_paddingEnum']
      .._backgroundImagePath = map['_backgroundImagePath']
      .._useMaterial3 = map['_useMaterial3']
      .._font = map['_font'];
  }
  @override
  String toJson() => json.encode(toMap());
  factory Settings.fromJson(String source) =>
      Settings.fromMap(json.decode(source) as Map<String, dynamic>);
  Settings();
}
