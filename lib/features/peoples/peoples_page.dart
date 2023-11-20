import 'package:flutter/material.dart';
import 'package:project_money/features/peoples/people_page.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../core/navigator.dart';
import '../core/services.dart';
import 'people.dart';
import 'peoples.dart';

class PeoplesPage extends ReactiveStatelessWidget {
  const PeoplesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          title: 'PEOPLES'.text(),
        ),
        SliverList.list(
          children: [
            ElevatedButton(
              onPressed: () {
                peoplesManager.setPeople(
                  People(
                    id: randomID,
                    name: '',
                    historyShown: true,
                    editing: false,
                    entries: {},
                  ),
                );
              },
              child: 'Add New People'.text(),
            ).pad(),
          ],
        ),
        SliverList.builder(
          itemCount: peoplesManager.mapOfPeoples.length,
          itemBuilder: (context, index) {
            final _people = peoplesManager.listOfPeoples[index];
            final PeopleManager peopleManager = PeopleManager()(_people);
            return ListTile(
              title: Column(
                children: [
                  if (_people.editing)
                    TextFormField(
                      initialValue: _people.name,
                      onChanged: peopleManager.setName,
                    ).pad()
                  else
                    _people.name.text(textScaleFactor: 2.5).pad(),
                  _people.totalLoan().text(textScaleFactor: 3).pad(),
                  Switch(
                    value: _people.editing,
                    onChanged: peopleManager.setEditing,
                  )
                ],
              ),
              onTap: () => navigator.to(PeoplePage(id: _people.id)),
            );
          },
        ),
      ],
    );
  }
}
