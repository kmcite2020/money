import 'package:freezed_annotation/freezed_annotation.dart';

part 'entry.g.dart';
part 'entry.freezed.dart';

@freezed
class Entry with _$Entry {
  const factory Entry({
    required final int amount,
    required final DateTime timeCreated,
  }) = _Entry;

  factory Entry.fromJson(Map<String, dynamic> json) => _$EntryFromJson(json);
}
