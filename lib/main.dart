import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_money/features/entry/blocs.dart';
import 'package:states_rebuilder/scr/state_management/rm.dart';

import 'my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  GoogleFonts.config.allowRuntimeFetching = false;
  await RM.storageInitializer(BlocStorage());
  // await RM.deleteAllPersistState();
  runApp(MyApp());
}
