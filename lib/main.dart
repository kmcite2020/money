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
export 'package:money/features/app.dart';
export 'package:money/features/core/navigator.dart';
export 'package:money/features/core/services.dart';
export 'package:money/features/home/home_page.dart';
export 'package:money/features/settings/models.dart';
export 'package:money/features/settings/settings_bloc.dart';
export 'package:money/features/settings/settings_screen.dart';
export 'package:money/features/settings/themes/font_family.dart';
export 'package:money/features/settings/themes/themes.dart';
export 'package:states_rebuilder/states_rebuilder.dart';
export 'package:uuid/uuid.dart';
export 'package:money/features/transactions/models.dart';
export 'package:money/features/transactions/transactions_manager.dart';
export 'package:money/features/persons/persons_manager.dart';
export 'package:money/features/persons/pages/person_page.dart';
export 'package:money/features/transactions/pages/transaction_page.dart';
export 'package:money/features/transactions/components/transaction_builder.dart';
export 'package:money/features/persons/components/person_builder.dart';

typedef UI = ReactiveStatelessWidget;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  GoogleFonts.config.allowRuntimeFetching = false;
  // await RM.deleteAllPersistState();
  await RM.storageInitializer(HiveStorage());
  runApp(
    App(),
  );
}
