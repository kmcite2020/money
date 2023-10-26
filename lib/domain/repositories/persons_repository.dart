part of 'providers/providers.dart';

class PersonsRepository {
  static final to = PersonsRepository();

  Stream<Person?> watchPerson(int id) =>
      isar.persons.watchObject(id, fireImmediately: true);

  Stream<List<Person>> watchPersons() =>
      isar.persons.where().watch(fireImmediately: true);

  Person? person(int id) => isar.persons.getSync(id);

  List<Person?> persons() => isar.persons.where().findAllSync();

  void putPerson(Person person) => isar.writeTxnSync(
        () => isar.persons.putSync(person),
      );

  void deletePerson(Person person) => isar.writeTxnSync(
        () => isar.persons.deleteSync(person.id),
      );

  void clearPersons() => isar.writeTxnSync(
        () => isar.persons.clearSync(),
      );
}
