import 'package:states_rebuilder/states_rebuilder.dart';

import '../entry/add_entry_screen.dart';
import '../entry/entries_screen.dart';
import '../entry/entry_screen.dart';
import '../home/home_page.dart';
import '../peoples/add_people_page.dart';
import '../peoples/peoples_page.dart';
import '../peoples/people_page.dart';
import '../settings/settings_screen.dart';

final navigator = RM.injectNavigator(
  routes: {
    Routes.home: (data) => HomePage(),
    Routes.settings: (data) => SettingsScreen(),
    Routes.peoples: (data) => PeoplesPage(),
    Routes.people: (data) => PeoplePage(id: data.arguments),
    Routes.addPeople: (data) => AddPeoplePage(),
    Routes.entries: (data) => EntriesScreen(),
    Routes.entry: (data) => EntryScreen(id: data.arguments),
    Routes.addEntry: (data) => AddEntryScreen(),
  },
);

abstract class Routes {
  static const home = '/';
  static const settings = '/settings';
  static const peoples = '/peoples';
  static const entries = '/entries';
  static const people = '/people';
  static const entry = '/entry';
  static const addPeople = '/add_people';
  static const addEntry = '/add_entry';
}
