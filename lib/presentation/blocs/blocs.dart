import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:project_money/domain/models/models.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../domain/repositories/providers/providers.dart';

part 'add_entry_bloc.dart';
part 'add_person_bloc.dart';
part 'entries_bloc.dart';
part 'settings_bloc.dart';

class BlocStorage implements IPersistStore {
  late SharedPreferences _sharedPreferences;

  @override
  Future<void> init() async {
    // Initialize the plugging
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  @override
  Object? read(String key) {
    return _sharedPreferences.getString(key);
  }

  @override
  Future<void> write<T>(String key, T value) async {
    await _sharedPreferences.setString(key, value as String);
  }

  @override
  Future<void> delete(String key) async {
    await _sharedPreferences.remove(key);
  }

  @override
  Future<void> deleteAll() async {
    await _sharedPreferences.clear();
  }
}

class EntryBloc {
  final int id;
  EntryBloc(this.id);
  late final entryRM = RM.injectStream(() => EntriesRepository.to.watchEntry(id));
  Entry? get entry => entryRM.state;
  Person? get person {
    entry?.person.loadSync();
    return entry?.person.value;
  }
}
