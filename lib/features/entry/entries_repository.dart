// part of '../../../features/core/providers.dart';

// class EntriesRepository {
//   static final to = EntriesRepository();
//   void putEntry(Entry entry) => isar.writeTxnSync(
//         () => isar.entries.putSync(entry),
//       );
//   void deleteEntry(Entry entry) => isar.writeTxnSync(
//         () => isar.entries.deleteSync(entry.id),
//       );
//   void clearEntries() => isar.writeTxnSync(
//         () => isar.entries.clearSync(),
//       );
//   Stream<Entry?> watchEntry(int id) =>
//       isar.entries.watchObject(id, fireImmediately: true);
//   Stream<List<Entry>> watchEntries() =>
//       isar.entries.where().watch(fireImmediately: true);
// }
