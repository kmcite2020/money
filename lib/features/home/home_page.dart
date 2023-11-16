import 'package:flutter/material.dart';
import 'package:project_money/features/core/services.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../core/go_router.dart';

class HomePage extends ReactiveStatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'MONEY'.text(),
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        children: [
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 2,
            children: [
              'Total Peoples'.text(textScaleFactor: 1.5).center(),
              "Total Loans".text(),

              // Card(
              //   child: SizedBox(
              //     child: EntriesBloc.to.entries.length
              //         .text(textScaleFactor: 3)
              //         .center(),
              //   ),
              // ).pad(),
              // Card(
              //   child: PersonsBloc.to.persons.length
              //       .text(textScaleFactor: 3)
              //       .center(),
              // ).pad(),
            ],
          ),
        ],
      ),
      floatingActionButton: ButtonBar(
        children: [
          FloatingActionButton(
            tooltip: 'PERSONS',
            heroTag: randomID,
            onPressed: () {
              navigator.to(Routes.persons);
            },
            child: const Icon(Icons.supervised_user_circle),
          ),
          FloatingActionButton(
            tooltip: 'ENTRIES',
            heroTag: randomID,
            onPressed: () {
              navigator.to(Routes.entries);
            },
            child: const Icon(Icons.edit_note_rounded),
          ),
          FloatingActionButton(
            tooltip: 'SETTINGS',
            heroTag: randomID,
            onPressed: () {
              navigator.to(Routes.settings);
            },
            child: const Icon(Icons.settings),
          ),
        ],
      ),
    );
  }
}
