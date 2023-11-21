import 'package:flutter/material.dart';
import 'package:project_money/features/core/services.dart';
import 'package:project_money/features/peoples/peoples_page.dart';
import 'package:project_money/features/settings/settings_screen.dart';
import 'package:project_money/features/settings/themes/themes.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import 'features/entry/blocs.dart';
import 'features/home/home_page.dart';
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
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
      theme: themes.theme(),
      darkTheme: themes.darkTheme(),
      themeMode: themes.themeMode(),
    );
  }

  @override
  void didUnmountWidget() => pageIndexRM.dispose();
}

Widget get loanIcon {
  final brightness = Theme.of(RM.context!).brightness;
  final color = settingsManager.settings.materialColor;
  return Image.asset(
    'assets/loan.png',
    colorBlendMode: BlendMode.srcIn,
    color: switch (brightness) {
      Brightness.dark => color.shade700,
      Brightness.light => color.shade200,
    },
  ).pad();
}
