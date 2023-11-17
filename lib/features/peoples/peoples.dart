import 'dart:convert';
import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
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
    required final List<Entry> entries,
  }) = _People;

  factory People.fromJson(Map<String, dynamic> json) => _$PeopleFromJson(json);

  factory People.id(String id) {
    return RM.context!.watch<PeoplesManager>().getID(id);
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

class PeoplesManager extends HydratedCubit<Peoples> {
  PeoplesManager() : super(Peoples(cache: {}));
  Peoples get peoples => state;
  set peoples(Peoples state) => emit(state);

  Map<String, People> get mapOfPeoples => peoples.cache;
  set mapOfPeoples(Map<String, People> _) =>
      peoples = peoples.copyWith(cache: _);

  List<People> get listOfPeoples => mapOfPeoples.values.toList();

  void setPeople(People people) {
    mapOfPeoples = {...mapOfPeoples}..[people.id] = people;
  }

  void removePeople(People people) {
    mapOfPeoples = {...mapOfPeoples}..remove(people.id);
  }

  People getID(String id) => listOfPeoples.firstWhere(
        (element) => element.id == id,
      );

  @override
  Peoples? fromJson(Map<String, dynamic> json) => Peoples.fromJson(json);

  @override
  Map<String, dynamic>? toJson(Peoples state) => state.toJson();
}
