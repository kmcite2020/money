import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../entry/entry.dart';

part 'peoples.freezed.dart';
part 'peoples.g.dart';

@freezed
class People with _$People {
  const factory People({
    required final String id,
    required final String name,
    required final bool historyShown,
    required final bool editing,
    required final Map<String, Entry> entries,
  }) = _People;

  factory People.fromJson(Map<String, dynamic> json) => _$PeopleFromJson(json);

  factory People.id(String id) {
    return peoplesManager.getID(id);
  }
}

@freezed
class Peoples with _$Peoples {
  const factory Peoples({
    required final Map<String, People> cache,
  }) = _Peoples;

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
