import '../../main.dart';

class PersonsManager {
  final personsRM = RM.inject(
    () => Persons(),
    persist: () => PersistState(
      key: 'persons',
      fromJson: (json) => Persons.fromJson(jsonDecode(json)),
      toJson: (state) => jsonEncode(state.toJson()),
    ),
  );
  Person getByID(int id) => state.cache[id] ?? Person.invalid();
  int get length => state.cache.length + 1;
  List<Person> get persons => state.cache.values.toList();

  Persons get state => personsRM.state;
  set state(Persons persons) => personsRM.state = persons;

  void addPerson(Person person) {
    state = state.copyWith(
      cache: Map.of(state.cache)..[person.personID] = person,
    );
  }

  void removePerson(int id) {
    state = state.copyWith(
      cache: Map.of(state.cache)..remove(id),
    );
  }
}

final PersonsManager personsManager = PersonsManager();
