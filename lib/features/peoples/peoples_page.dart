import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../core/go_router.dart';
import '../core/services.dart';
import 'peoples.dart';

class PeoplesPage extends ReactiveStatelessWidget {
  const PeoplesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'PERSONS'.text(),
        automaticallyImplyLeading: false,
      ),
      body: ListView.builder(
        itemCount: peoplesManager.mapOfPeoples.length,
        itemBuilder: (context, index) {
          final people = peoplesManager.listOfPeoples[index];
          return ListTile(
            title: Column(
              children: [
                people.name.text(textScaleFactor: 2.5).pad(),
                // totalAmount(people.id).text(textScaleFactor: 2),
                // if (person.historyShown)
                //   ...entriesForPerson(person.id).map(
                //     (e) => (e.amount).text(),
                //   ),
              ],
            ),
            onTap: () {
              navigator.to('/person', arguments: people.id);
            },
          );
        },
      ),
      floatingActionButton: ButtonBar(
        children: [
          FloatingActionButton(
            heroTag: randomID,
            onPressed: () {
              navigator.to(Routes.addPerson);
            },
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            heroTag: randomID,
            onPressed: navigator.back,
            child: const Icon(Icons.arrow_back),
          ),
        ],
      ),
    );
  }
}
