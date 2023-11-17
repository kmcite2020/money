import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:project_money/features/entry/blocs.dart';
import 'package:project_money/features/peoples/peoples.dart';
import 'package:states_rebuilder/scr/state_management/rm.dart';

import 'features/core/go_router.dart';
import 'features/settings/themes/dark_theme.dart';
import 'features/settings/themes/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  GoogleFonts.config.allowRuntimeFetching = false;
  final directory = await getApplicationDocumentsDirectory();
  HydratedBloc.storage =
      await HydratedStorage.build(storageDirectory: directory);
  await RM.storageInitializer(
    BlocStorage(),
  );
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => PeoplesManager()),
      ],
      child: MyApp(),
    ),
  );
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
