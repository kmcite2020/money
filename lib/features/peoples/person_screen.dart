import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

class PersonScreen extends ReactiveStatelessWidget {
  const PersonScreen({
    super.key,
    required this.id,
  });
  final int id;
  @override
  Widget build(BuildContext context) {
    // final person = People.fromJson({});
    // final editPersonBloc = EditPersonBloc(id);
    return Scaffold(
      appBar: AppBar(
        // title: person!.name.text(),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          // person.name.text(textScaleFactor: 3).pad(),
          // person.id.text(textScaleFactor: 4).pad(),
          // if (person.editing)
          //   TextFormField(
          //     initialValue: person.name,
          //     onChanged: editPersonBloc.onNameChanged,
          //   ).pad(),
          // if (person.historyShown!)
          //   ...EntriesBloc.to.entries
          //       .where(
          //         (element) => element.personId == person.id,
          //       )
          //       .map(
          //         (entry) => Column(
          //           children: [
          //             (entry.amount).text(),
          //             (entry.timeCreated).text(),
          //           ],
          //         ),
          //       ),
        ],
      ),
      floatingActionButton: ButtonBar(
        children: [
          // FloatingActionButton(
          //   heroTag: randomID,
          //   onPressed: () => editPersonBloc.delete(person),
          //   backgroundColor: Colors.red,
          //   child: const Icon(Icons.delete),
          // ),
          // FloatingActionButton(
          //   heroTag: randomID,
          //   onPressed: () {
          //     editPersonBloc.onHistoryShownChanged(!person.historyShown);
          //   },
          //   child: Icon(
          //     person.historyShown ? Icons.hide_image : Icons.shower,
          //   ),
          // ),
          // FloatingActionButton(
          //   heroTag: randomID,
          //   onPressed: () => editPersonBloc.onEditingChanged(!person.editing),
          //   child: Icon(
          //     person.editing ? Icons.done : Icons.edit,
          //   ),
          // ),
          // FloatingActionButton(
          //   heroTag: randomID,
          //   onPressed: navigator.back,
          //   child: Icon(
          //     Icons.arrow_back,
          //   ),
          // ),
        ],
      ),
    );
  }
}
