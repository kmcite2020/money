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
    required final List<Entry> entries,
  }) = _People;

  factory People.fromJson(Map<String, dynamic> json) => _$PeopleFromJson(json);
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
  final peoplesRM = RM.inject(() => Peoples(cache: {}));

  Peoples get peoples => peoplesRM.state;
  set peoples(Peoples _) => peoplesRM.state = _;

  Map<String, People> get mapOfPeoples => peoples.cache;
  set mapOfPeoples(Map<String, People> _) =>
      peoples = peoples.copyWith(cache: _);

  List<People> get listOfPeoples => mapOfPeoples.values.toList();
}
