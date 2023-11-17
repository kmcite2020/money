import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../core/go_router.dart';
import '../core/services.dart';
import 'people.dart';
import 'peoples.dart';

class PeoplesPage extends ReactiveStatelessWidget {
  const PeoplesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final peoplesManager = context.watch<PeoplesManager>();
    return Scaffold(
      appBar: AppBar(
        title: 'PEOPLES'.text(),
        automaticallyImplyLeading: false,
      ),
      body: ListView.builder(
        itemCount: peoplesManager.mapOfPeoples.length,
        itemBuilder: (context, index) {
          final _people = peoplesManager.listOfPeoples[index];

          final PeopleManager peopleManager = context.watch<PeopleManager>();
          return Builder(
            builder: (context) {
              return ListTile(
                title: Column(
                  children: [
                    _people.name.text(textScaleFactor: 2.5).pad(),
                    TextFormField(
                      initialValue: _people.name,
                      onChanged: peopleManager.setName,
                    ).pad(),
                    Switch(
                      value: _people.editing,
                      onChanged: peopleManager.setEditing,
                    )
                  ],
                ),
                onTap: () {
                  navigator.to(Routes.people, arguments: _people.id);
                },
              );
            }
          );
          // return peopleManager.peopleRMGlobal.inherited(
          //   stateOverride: () => peoplesManager.listOfPeoples[index],
          //   builder: (_) {
          //     peopleManager.peopleRMLocal = peopleManager.peopleRMGlobal(_);
          //     final _people = peopleManager.peopleRMGlobal.of(_);
          //     return ListTile(
          //       title: Column(
          //         children: [
          //           _people.name.text(textScaleFactor: 2.5).pad(),
          //           TextFormField(
          //             initialValue: _people.name,
          //             onChanged: peopleManager.setName,
          //           ).pad(),
          //           Switch(
          //             value: _people.editing,
          //             onChanged: peopleManager.setEditing,
          //           )
          //         ],
          //       ),
          //       onTap: () {
          //         navigator.to(Routes.people, arguments: _people.id);
          //       },
          //     );
          //   },
          // );
        },
      ),
      floatingActionButton: ButtonBar(
        children: [
          FloatingActionButton(
            heroTag: randomID,
            onPressed: () {
              peoplesManager.setPeople(
                People(
                  id: randomID,
                  name: 'name',
                  historyShown: true,
                  editing: false,
                  entries: [],
                ),
              );
            },
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            heroTag: randomID,
            onPressed: () => navigator.to(Routes.addPeople),
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
