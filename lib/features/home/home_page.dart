import 'package:flutter/material.dart';
import 'package:project_money/features/core/services.dart';
import 'package:project_money/features/peoples/peoples.dart';
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
              "Total Loans".text(textScaleFactor: 1.5).center(),
              peoplesManager.listOfPeoples.length
                  .text(textScaleFactor: 1.5)
                  .center(),
              peoplesManager.listOfPeoples.length
                  .text(textScaleFactor: 1.5)
                  .center(),
            ],
          ),
        ],
      ),
      floatingActionButton: ButtonBar(
        children: [
          FloatingActionButton(
            tooltip: 'PEOPLES',
            heroTag: randomID,
            onPressed: () {
              navigator.to(Routes.peoples);
            },
            child: const Icon(Icons.supervised_user_circle),
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
