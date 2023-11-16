// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

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
    required final ThemeMode materialColor,
    required final int pageIndex,
    required final BorderRadiusEnum borderRadiusEnum,
    required final PaddingEnum paddingEnum,
    required final String? backgroundImagePath,
    required final bool useMaterial3,
    required final String font,
  }) = _Settings;

  factory Settings.fromJson(Map<String, dynamic> json) =>
      _$SettingsFromJson(json);
  factory Settings.init() => Settings(
        themeMode: ThemeMode.system,
        materialColor: ThemeMode.system,
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
