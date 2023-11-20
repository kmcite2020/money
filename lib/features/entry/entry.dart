import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project_money/features/core/services.dart';

part 'entry.g.dart';
part 'entry.freezed.dart';

@freezed
class Entry with _$Entry {
  const factory Entry({
    required final String id,
    required final int amount,
    required final DateTime timeCreated,
  }) = _Entry;

  factory Entry.init() => Entry(
        id: randomID,
        amount: 0,
        timeCreated: DateTime.now(),
      );
  factory Entry.fromJson(Map<String, dynamic> json) => _$EntryFromJson(json);
}
