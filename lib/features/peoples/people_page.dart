import 'package:flutter/material.dart';
import 'package:project_money/features/core/services.dart';
import 'package:project_money/features/peoples/peoples.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../core/go_router.dart';

class PeoplePage extends ReactiveStatelessWidget {
  const PeoplePage({
    super.key,
    required this.id,
  });
  final String id;
  @override
  Widget build(BuildContext context) {
    final people = peoplesManager.getID(id);
    return Scaffold(
      appBar: AppBar(
        // title: person!.name.text(),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          people.name.text(textScaleFactor: 3).pad(),
          people.id.text(textScaleFactor: 4).pad(),
          people.text().pad(),
          if (people.editing)
            TextFormField(
              initialValue: people.name,
              // onChanged: editPersonBloc.onNameChanged,
            ).pad(),
          // if (people.historyShown!)
          //   ...EntriesBloc.to.entries
          //       .where(
          //         (element) => element.personId == people.id,
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
          FloatingActionButton(
            heroTag: randomID,
            onPressed: navigator.back,
            child: Icon(
              Icons.arrow_back,
            ),
          ),
          FloatingActionButton(
            heroTag: randomID,
            onPressed: () {
              peoplesManager.setPeople(
                people.copyWith(
                  editing: people.editing,
                ),
              );
            },
            child: Icon(
              people.editing ? Icons.done : Icons.edit,
            ),
          ),
        ],
      ),
    );
  }
}
