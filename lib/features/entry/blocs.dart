import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:project_money/features/settings/models.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

part '../settings/settings_bloc.dart';

class BlocStorage implements IPersistStore {
  late Box _sharedPreferences;

  @override
  Future<void> init() async {
    await Hive.initFlutter();
    _sharedPreferences = await Hive.openBox('default');
  }

  @override
  Object? read(String key) {
    return _sharedPreferences.get(key);
  }

  @override
  Future<void> write<T>(String key, T value) async {
    await _sharedPreferences.put(key, value as String);
  }

  @override
  Future<void> delete(String key) async {
    await _sharedPreferences.delete(key);
  }

  @override
  Future<void> deleteAll() async {
    await _sharedPreferences.clear();
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
