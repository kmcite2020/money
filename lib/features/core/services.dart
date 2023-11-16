import 'package:flutter/material.dart';
import 'package:project_money/features/entry/blocs.dart';
import 'package:uuid/uuid.dart';

List<String> get fonts {
  return [
    "Default",
    "Azeret Mono",
    "Comfortaa",
    "DM Mono",
    "Dosis",
    "Fira Sans",
    "IBM Plex Mono",
    "Josefin Sans",
    "Montserrat",
    "Space Mono",
    "Ubuntu",
  ];
}

SizedBox spacing([
  double? width,
  double? height,
]) =>
    SizedBox(
      width: width,
      height: height,
    );

String get randomID => const Uuid().v4();

extension TextX on Object? {
  Text text({
    TextStyle? style,
    double? textScaleFactor,
  }) {
    return Text(
      toString(),
      style: style,
      textScaleFactor: textScaleFactor,
    );
  }
}

extension WidgetX on Widget {
  Widget pad({
    EdgeInsetsGeometry? customPadding,
  }) {
    return Builder(
      builder: (context) {
        final padding = SettingsBloc.to.settings.padding;
        return Padding(
          padding: customPadding ?? EdgeInsets.all(padding),
          child: this,
        );
      },
    );
  }

  Card card() => Card(child: this);
  Center center() => Center(child: this);
}
