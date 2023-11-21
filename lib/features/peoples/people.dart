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

  Map<String, Entry> get mapOfEntries => people?.mapOfEntries ?? {};
  List<Entry> get entries => people?.listOfEntries() ?? [];
  void setEntries(
      Map<String, Entry> Function(Map<String, Entry> entries) entriesModifier) {
    people = people?.copyWith(mapOfEntries: entriesModifier(mapOfEntries));
  }

  void setEntry(Entry Function(Entry entry) entryModifier) {
    final cache = entryModifier(Entry.init());
    setEntries(
      (entries) => Map.from(entries)..[cache.id] = cache,
    );
  }

  void setEntryAmount(int amount, Entry entry) {
    setEntry((_) => entry.copyWith(amount: amount));
  }

  void setEntryTime(DateTime dateTime, Entry entry) {
    setEntry((_) => entry.copyWith(timeCreated: dateTime));
  }

  void deleteEntry(Entry entry) {
    setEntries((entries) => Map.from(entries)..remove(entry.id));
  }
}
