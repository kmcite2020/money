part of 'providers.dart';

final navigator = RM.injectNavigator(
  routes: {
    Routes.home: (data) => HomeScreen(),
    Routes.settings: (data) => SettingsScreen(),
    Routes.persons: (data) => PersonsScreen(),
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
