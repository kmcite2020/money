
// class AddPersonBloc {
//   final personRM = RM.inject<Person?>(() => null);

//   static final to = AddPersonBloc();
//   Person? get state => personRM.state;
//   void init() {
//     personRM.state ??= Person();
//   }

//   void dispose() {
//     navigator.back();
//     onPersonChanged(null);
//   }

//   void onPersonChanged(Person? state) {
//     personRM.state = state;
//     personRM.notify();
//   }

//   void onNameChanged(String name) {
//     onPersonChanged(state?..name = name);
//   }

//   void onHistoryShownChanged(bool historyShown) {
//     onPersonChanged(state?..historyShown = historyShown);
//   }

//   void onEditingChanged(bool editing) {
//     onPersonChanged(state?..editing = editing);
//   }

//   void save() {
//     PersonsRepository.to.putPerson(state!);
//     onPersonChanged(null);
//     navigator.back();
//   }
// }

// class EditPersonBloc {
//   final int id;

//   static EditPersonBloc to(int id) => EditPersonBloc(id);
//   EditPersonBloc(this.id);
//   late final personRM = RM.injectStream(
//     () => PersonsRepository.to.watchPerson(id),
//   );

//   Person? get state => personRM.state;

//   void onPersonChanged(Person? newState) {
//     if (newState == null) return;
//     PersonsRepository.to.putPerson(newState);
//   }

//   void onNameChanged(String name) {
//     onPersonChanged(state?..name = name);
//   }

//   void onHistoryShownChanged(bool historyShown) {
//     onPersonChanged(state?..historyShown = historyShown);
//   }

//   void onEditingChanged(bool editing) {
//     onPersonChanged(state?..editing = editing);
//   }

//   void addPersonToBox() {
//     PersonsRepository.to.putPerson(state!);
//     onPersonChanged(
//       Person(),
//     );
//   }

//   void delete(Person person) {
//     PersonsRepository.to.deletePerson(person);
//     navigator.back();
//   }
// }
