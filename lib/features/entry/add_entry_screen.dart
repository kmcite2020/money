import '../../main.dart';

class AddEntryScreen extends ReactiveStatelessWidget {
  const AddEntryScreen({super.key});

  @override
  void didMountWidget(BuildContext context) {
    // AddEntryBloc.to.create();
    super.didMountWidget(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'Add Entry'.text(),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          // if (PersonsBloc.to.persons.isEmpty)
          //   'YOU CANNOT ADD ANY ENTRY UNLESS THERE IS AT LEAST ONE PERSON.'
          //       .text(textScaleFactor: 3)
          //       .pad()
          // else
          Column(
            children: [
              // TextFormField(
              //   initialValue: (AddEntryBloc.to.state?.amount ?? '').toString(),
              //   onChanged: (value) {
              //     final amount = int.tryParse(value);
              //     AddEntryBloc.to.onAmountChanged(amount);
              //   },
              //   decoration: const InputDecoration(labelText: 'Amount'),
              // ).pad(),
              // 'Person'.text().pad(),
              // // const PersonsDropdownBuilder(),
              // AddEntryBloc.to.state.text().pad(),
            ],
          ),
        ],
      ),
      floatingActionButton: ButtonBar(
        children: [
          // if (PersonsBloc.to.persons.isNotEmpty)
          //   FloatingActionButton(
          //     heroTag: randomID,
          //     onPressed: AddEntryBloc.to.dispose,
          //     child: const Icon(Icons.close),
          //   ),
          // if (PersonsBloc.to.persons.isNotEmpty)
          //   // FloatingActionButton(
          //   //   heroTag: randomID,
          //   //   onPressed: AddEntryBloc.to.state?.person == null
          //   //       ? null
          //   //       : AddEntryBloc.to.save,
          //   //   child: const Icon(Icons.done),
          //   // ),
          //   FloatingActionButton(
          //     heroTag: randomID,
          //     onPressed: navigator.back,
          //     child: const Icon(Icons.arrow_back),
          //   ),
        ],
      ),
    );
  }
}

// class PersonsDropdownBuilder extends ReactiveStatelessWidget {
//   const PersonsDropdownBuilder({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return DropdownButtonFormField<Person>(
//       value: PersonsBloc.to.persons.firstOrNull,
//       items: PersonsBloc.to.persons
//           .map(
//             (eachPerson) => DropdownMenuItem(
//               value: eachPerson,
//               child: (eachPerson.name).text(),
//             ),
//           )
//           .toList(),
//       onChanged: AddEntryBloc.to.onPersonChanged,
//       decoration: const InputDecoration(labelText: 'Person'),
//     ).pad();
//   }
// }
