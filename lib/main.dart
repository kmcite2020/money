import 'main.dart';

export 'dart:convert';
export 'dart:developer' hide Flow;
export 'dart:io';
export 'package:colornames/colornames.dart';
export 'package:file_picker/file_picker.dart';
export 'package:flex_color_scheme/flex_color_scheme.dart';
export 'package:flutter/foundation.dart';
export 'package:flutter/material.dart';
export 'package:freezed_annotation/freezed_annotation.dart';
export 'package:google_fonts/google_fonts.dart';
export 'package:hive_flutter/hive_flutter.dart';
export 'package:money/features/core/navigator.dart';
export 'package:money/features/core/services.dart';
export 'package:money/features/entry/blocs.dart';
export 'package:money/features/entry/entry.dart';
export 'package:money/features/home/home_page.dart';
export 'package:money/features/my_app.dart';
export 'package:money/features/peoples/people.dart';
export 'package:money/features/peoples/people_page.dart';
export 'package:money/features/peoples/peoples.dart';
export 'package:money/features/peoples/peoples_page.dart';
export 'package:money/features/settings/models.dart';
export 'package:money/features/settings/settings_bloc.dart';
export 'package:money/features/settings/settings_screen.dart';
export 'package:money/features/settings/themes/font_family.dart';
export 'package:money/features/settings/themes/themes.dart';
export 'package:states_rebuilder/states_rebuilder.dart';
export 'package:uuid/uuid.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  GoogleFonts.config.allowRuntimeFetching = false;
  await RM.storageInitializer(BlocStorage());
  // await RM.deleteAllPersistState();
  runApp(MyApp());
}
