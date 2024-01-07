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
}
