import 'package:flutter/material.dart';
import 'package:project_money/features/core/services.dart';
import 'package:project_money/my_app.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

class MyDrawer extends ReactiveStatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: NavigationDrawer(
        onDestinationSelected: (int index) {
          onPageIndexChanged(index);
          RM.navigate.back();
        },
        selectedIndex: pageIndex,
        children: [
          "Money".text(textScaleFactor: 3).pad(),
          loanIcon,
          NavigationDrawerDestination(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard'.text(),
          ),
          NavigationDrawerDestination(
            icon: Icon(Icons.people),
            label: 'Peoples'.text(),
          ),
          NavigationDrawerDestination(
            icon: Icon(Icons.settings),
            label: 'Settings'.text(),
          ),
          // NavigationDrawerDestination(
          //   icon: Icon(Icons.people),
          //   label: 'Peoples'.text(),
          // ),
        ],
      ),
    );
  }
}

final pageIndexRM = RM.inject(() => 0, autoDisposeWhenNotUsed: false);
int get pageIndex => pageIndexRM.state;
void onPageIndexChanged(int index) => pageIndexRM.state = index;
