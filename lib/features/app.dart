import '../main.dart';

class App extends UI {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: RM.navigate.navigatorKey,
      home: HomePage(),
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

class MyDrawer extends UI {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: NavigationDrawer(
        onDestinationSelected: (int index) {
          onPageIndexChanged(index);
          RM.navigate.back();
        },
        selectedIndex: pageIndex,
        children: [
          "Money".text(textScaleFactor: 3).pad(),
          loanIcon,
          NavigationDrawerDestination(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard'.text(),
          ),
          NavigationDrawerDestination(
            icon: Icon(Icons.people),
            label: 'Peoples'.text(),
          ),
          NavigationDrawerDestination(
            icon: Icon(Icons.settings),
            label: 'Settings'.text(),
          ),
        ],
      ),
    );
  }
}

final pageIndexRM = RM.inject(() => 0, autoDisposeWhenNotUsed: false);
int get pageIndex => pageIndexRM.state;
void onPageIndexChanged(int index) => pageIndexRM.state = index;