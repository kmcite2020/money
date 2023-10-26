part of 'blocs.dart';

class EntriesBloc {
  static final to = EntriesBloc();
  final entriesRM = RM.injectStream(
    EntriesRepository.to.watchEntries,
    initialState: <Entry>[],
  );

  List<Entry> get entries => entriesRM.state;

  /// SIDE EFFECTS
  void addEntry(Entry entry) {
    EntriesRepository.to.putEntry(entry);
  }

  void deleteEntry(Entry entry) {
    EntriesRepository.to.deleteEntry(entry);
    navigator.back();
  }

  void deleteAllEntries() {
    EntriesRepository.to.clearEntries();
  }
}

class PersonsBloc {
  static final to = PersonsBloc();
  final personsRM = RM.injectStream(
    PersonsRepository.to.watchPersons,
    initialState: <Person>[],
  );

  List<Person> get persons => personsRM.state;

  /// SIDE EFFECTS
  void addEntry(Person entry) {
    PersonsRepository.to.putPerson(entry);
  }

  void deleteEntry(Person entry) {
    PersonsRepository.to.deletePerson(entry);
  }

  void deleteAllEntries() {
    PersonsRepository.to.clearPersons();
  }
}
