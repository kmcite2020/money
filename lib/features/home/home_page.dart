import 'package:flutter/material.dart';
import 'package:project_money/features/core/services.dart';
import 'package:project_money/features/peoples/peoples.dart';
import 'package:project_money/my_app.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

class DashboardPage extends ReactiveStatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Opacity(opacity: .1, child: loanIcon.center()),
        CustomScrollView(
          slivers: [
            SliverAppBar(
              title: 'MONEY'.text(),
            ),
            SliverList.list(
              children: [
                'Peoples'.text(textScaleFactor: 1.5).pad(),
                peoplesManager.peoples.length
                    .text(textScaleFactor: 5)
                    .pad()
                    .card(),
                "Loans".text(textScaleFactor: 1.5).pad(),
                peoplesManager.peoples.totalLoans
                    .text(textScaleFactor: 3)
                    .pad()
                    .card(),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
