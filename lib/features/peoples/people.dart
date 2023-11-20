import 'package:project_money/features/peoples/peoples.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../entry/entry.dart';

class PeopleManager {
  PeopleManager call(People _people) {
    people = _people;
    return this;
  }

  final peopleRM = RM.inject<People?>(
    () => null,
    sideEffects: SideEffects(
      onSetState: (snap) {
        final people = snap.state;
        if (people != null) {
          peoplesManager.setPeople(people);
        } else {
          print('noData');
        }
      },
    ),
  );
  set people(People? _) => peopleRM.state = _;
  People? get people => peopleRM.state;

  void setEditing(value) {
    people = people?.copyWith(editing: value);
  }

  void setName(String value) {
    people = people?.copyWith(name: value);
  }

  void setHistoryShown(value) {
    people = people?.copyWith(editing: value);
  }

  Map<String, Entry> get mapOfEntries => people?.entries ?? {};
  List<Entry> get entries => people?.entries.values.toList() ?? [];
  void setEntries(
      Map<String, Entry> Function(Map<String, Entry> entries) entriesModifier) {
    people = people?.copyWith(entries: entriesModifier(mapOfEntries));
  }

  void addEntry(Entry Function(Entry newEntry) entryModifier) {
    final entry = entryModifier(Entry.init());
    setEntries((entries) => Map.from(entries)..[entry.id] = entry);
  }

  void deleteEntry(Entry entry) {
    setEntries((entries) => Map.from(entries)..remove(entry.id));
  }
}
