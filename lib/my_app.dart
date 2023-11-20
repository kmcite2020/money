import 'dart:math';

import 'package:flutter/material.dart';
import 'package:project_money/features/core/services.dart';
import 'package:project_money/features/peoples/peoples_page.dart';
import 'package:project_money/features/settings/settings_screen.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import 'features/entry/blocs.dart';
import 'features/home/home_page.dart';
import 'features/settings/themes/dark_theme.dart';
import 'features/settings/themes/theme.dart';
import 'my_drawer.dart';

class MyApp extends ReactiveStatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: RM.navigate.navigatorKey,
      home: Scaffold(
        drawer: MyDrawer(),
        body: IndexedStack(
          index: pageIndex,
          children: [
            DashboardPage(),
            PeoplesPage(),
            SettingsPage(),
            SettingsPage(),
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
      theme: theme(),
      darkTheme: darkTheme(),
      themeMode: settingsManager.settings.themeMode,
    );
  }

  @override
  void didUnmountWidget() => pageIndexRM.dispose();
}

Widget get loanIcon {
  final brightness = Theme.of(RM.context!).brightness;

  return Image.asset(
    'assets/loan.png',
    colorBlendMode: BlendMode.srcIn,
    color: switch (brightness) {
      Brightness.dark => Colors.white70,
      Brightness.light => Colors.black54,
    },
  ).pad();
}
