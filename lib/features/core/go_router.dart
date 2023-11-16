import 'package:states_rebuilder/states_rebuilder.dart';

import '../entry/add_entry_screen.dart';
import '../entry/entries_screen.dart';
import '../entry/entry_screen.dart';
import '../home/home_page.dart';
import '../peoples/add_person_screen.dart';
import '../peoples/peoples_page.dart';
import '../peoples/person_screen.dart';
import '../settings/settings_screen.dart';

final navigator = RM.injectNavigator(
  routes: {
    Routes.home: (data) => HomePage(),
    Routes.settings: (data) => SettingsScreen(),
    Routes.persons: (data) => PeoplesPage(),
    Routes.entries: (data) => EntriesScreen(),
    Routes.person: (data) => PersonScreen(id: data.arguments),
    Routes.entry: (data) => EntryScreen(id: data.arguments),
    Routes.addPerson: (data) => AddPersonScreen(),
    Routes.addEntry: (data) => AddEntryScreen(),
  },
);

abstract class Routes {
  static const home = '/';
  static const settings = '/settings';
  static const persons = '/persons';
  static const entries = '/entries';
  static const person = '/person';
  static const entry = '/entry';
  static const addPerson = '/add_person';
  static const addEntry = '/add_entry';
}
