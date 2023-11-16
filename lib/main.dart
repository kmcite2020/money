import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_provider/path_provider.dart';
import 'package:project_money/features/entry/blocs.dart';
import 'package:states_rebuilder/scr/state_management/rm.dart';

import 'features/core/go_router.dart';
import 'features/settings/themes/dark_theme.dart';
import 'features/settings/themes/theme.dart';

// final Isar isar = Isar.openSync(
//   [
//     PersonSchema,
//     EntrySchema,
//   ],
//   directory: directory.path,
//   name: 'money',
// );

late final Directory directory;

void main() async {
  try {
    WidgetsFlutterBinding.ensureInitialized();
    GoogleFonts.config.allowRuntimeFetching = false;
    directory = await getApplicationDocumentsDirectory();
    await RM.storageInitializer(
      BlocStorage(),
    );
    runApp(MyApp());
  } catch (e) {
    runApp(MyErrorApp(object: e));
  }
}

class MyApp extends ReactiveStatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: navigator.routerDelegate,
      routeInformationParser: navigator.routeInformationParser,
      debugShowCheckedModeBanner: false,
      theme: theme(),
      darkTheme: darkTheme(),
      themeMode: SettingsBloc.to.settings.themeMode,
    );
  }
}

class MyErrorApp extends StatelessWidget {
  const MyErrorApp({
    Key? key,
    required this.object,
  }) : super(key: key);
  final dynamic object;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ErrorWidget.withDetails(
        error: object,
      ),
    );
  }
}
