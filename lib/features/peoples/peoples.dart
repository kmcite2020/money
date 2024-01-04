import '../../main.dart';

part 'peoples.freezed.dart';
part 'peoples.g.dart';

@freezed
class People with _$People {
  const factory People({
    required final String id,
    required final String name,
    required final bool historyShown,
    required final bool editing,
    required final Map<String, Entry> mapOfEntries,
  }) = _People;
  const People._();
  List<Entry> listOfEntries() => mapOfEntries.values.toList();
  factory People.fromJson(Map<String, dynamic> json) => _$PeopleFromJson(json);
  factory People.id(String id) {
    return peoplesManager.getID(id);
  }
  factory People.init() {
    return People(
      id: randomID,
      name: '',
      historyShown: false,
      editing: false,
      mapOfEntries: {},
    );
  }
  Entry entryByID(String id) =>
      listOfEntries().firstWhere((eachEntry) => eachEntry.id == id);
  int totalLoan() {
    return listOfEntries().map(
      (e) {
        return e.amount;
      },
    ).fold(
      0,
      (previousValue, element) {
        return previousValue + element;
      },
    );
  }
}

@freezed
class Peoples with _$Peoples {
  const factory Peoples({
    required final Map<String, People> cache,
  }) = _Peoples;
  const Peoples._();
  int get totalLoans {
    return cache.values.fold(
      0,
      (previousValue, element) {
        return element.listOfEntries().fold(
              0,
              (previousValue, element) {
                return element.amount + previousValue;
              },
            ) +
            previousValue;
      },
    );
  }

  int get length => cache.length;

  factory Peoples.fromJson(Map<String, dynamic> json) =>
      _$PeoplesFromJson(json);
}

final PeoplesManager peoplesManager = PeoplesManager();

class PeoplesManager {
  final peoplesRM = RM.inject(
    () => Peoples(
      cache: {},
    ),
    persist: () => PersistState(
      key: 'peoples',
      fromJson: (json) => Peoples.fromJson(
        jsonDecode(json),
      ),
      toJson: (state) => jsonEncode(state),
    ),
  );

  Peoples get peoples => peoplesRM.state;
  set peoples(Peoples state) => peoplesRM.state = state;

  Map<String, People> get mapOfPeoples => peoples.cache;
  set mapOfPeoples(Map<String, People> _) =>
      peoples = peoples.copyWith(cache: _);

  List<People> get listOfPeoples => mapOfPeoples.values.toList();

  void setPeople(People people) =>
      mapOfPeoples = {...mapOfPeoples}..[people.id] = people;

  void removePeople(People people) =>
      mapOfPeoples = {...mapOfPeoples}..remove(people.id);

  People getID(String id) => listOfPeoples.firstWhere(
        (eachPeople) => eachPeople.id == id,
      );
}
