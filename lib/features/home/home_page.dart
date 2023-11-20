import 'package:flutter/material.dart';
import 'package:project_money/features/core/services.dart';
import 'package:project_money/features/peoples/peoples.dart';
import 'package:project_money/my_app.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

class DashboardPage extends ReactiveStatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          title: 'MONEY'.text(),
        ),
        SliverGrid.count(
          crossAxisCount: 2,
          children: [
            FloatingActionButton(
              // tooltip: 'PEOPLES',
              heroTag: randomID,
              onPressed: () {
                // navigator.to(Routes.peoples);
              },
              child: loanIcon,
            ).pad(),
            FloatingActionButton(
              tooltip: 'SETTINGS',
              heroTag: randomID,
              onPressed: () {
                // navigator.to(Routes.settings);
              },
              child: const Icon(Icons.settings),
            ).pad(),
          ],
        ),
        SliverGrid.count(
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
    );
  }
}
