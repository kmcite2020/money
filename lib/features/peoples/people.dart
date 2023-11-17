import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:project_money/features/peoples/peoples.dart';

import '../entry/entry.dart';

class PeopleManager extends Cubit<People?> {
  PeopleManager(String id) : super(People.id(id));
  set people(People? _) => emit(_);
  People? get people => state;

  void setEditing(value) {
    people = people?.copyWith(editing: value);
  }

  void setName(String value) {
    people = people?.copyWith(name: value);
  }

  void setHistoryShown(value) {
    people = people?.copyWith(editing: value);
  }

  List<Entry> get entries => people?.entries ?? [];
  void setEntries(List<Entry> Function(List<Entry> entries) entriesModifier) {
    people = people?.copyWith(entries: entriesModifier(entries));
  }

  void addEntry(Entry Function(Entry entry) entryModifier) {
    setEntries(
      (entries) => [
        ...entries,
        entryModifier(Entry.init()),
      ],
    );
  }

  void deleteEntry(Entry entry) {
    setEntries(
      (entries) => [
        ...entries,
      ]..remove(entry),
    );
  }
}
