// part of '../../features/entry/blocs.dart';

// class AddEntryBloc {
//   static final to = AddEntryBloc();
//   final entryRM = RM.inject<Entry?>(() => null);

//   void onEntryChanged(Entry? state) {
//     entryRM.state = state;
//     entryRM.notify();
//   }

//   Entry? get state => entryRM.state;
//   set state(Entry? entry) => entryRM.state = entry;

//   void onTimeCreatedChanged(DateTime timeCreated) {
//     onEntryChanged(state?.copyWith(timeCreated: timeCreated));
//   }

//   void onAmountChanged(int? amount) {
//     onEntryChanged(state?.copyWith(amount: amount!));
//   }

//   // void onPersonChanged(Person? person) {
//   //   final newPerson = state?..person.value = person;

//   //   // isar.writeTxnSync(() => newPerson?.person.saveSync());
//   //   onEntryChanged(newPerson);
//   // }

//   void dispose() {
//     onEntryChanged(null);
//     navigator.back();
//   }

//   void save() {
//     try {
//       if (state?.timeCreated == null) {
//         // state = state?..timeCreated = DateTime.now();
//       }
//       EntriesRepository.to.putEntry(state!);
//       dispose();
//     } catch (e) {
//       log(e.toString());
//     }
//   }

//   void create() {
//     // onEntryChanged(
//     //   Entry(),
//     // );
//   }
// }
