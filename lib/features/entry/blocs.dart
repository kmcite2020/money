import 'dart:convert';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:project_money/features/settings/models.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

part '../settings/settings_bloc.dart';

class BlocStorage implements IPersistStore {
  late Box _box;

  @override
  Future<void> init() async {
    await Hive.initFlutter();
    _box = await Hive.openBox('project_money');
  }

  @override
  Object? read(String key) {
    return _box.get(key);
  }

  @override
  Future<void> write<T>(String key, T value) async {
    await _box.put(key, value as String);
  }

  @override
  Future<void> delete(String key) async {
    await _box.delete(key);
  }

  @override
  Future<void> deleteAll() async {
    await _box.clear();
  }
}

// class EntryBloc {
//   final int id;
//   EntryBloc(this.id);
//   late final entryRM =
//       RM.injectStream(() => EntriesRepository.to.watchEntry(id));
//   Entry? get entry => entryRM.state;
//   Person? get person {
//     entry?.person.loadSync();
//     return entry?.person.value;
//   }
// }
