import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../core/navigator.dart';
import '../core/services.dart';

class AddPeoplePage extends ReactiveStatelessWidget {
  const AddPeoplePage({super.key});
  @override
  void didMountWidget(BuildContext context) {
    // Future(AddPersonBloc.to.init);
    super.didMountWidget(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'Add People'.text(),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          TextFormField(
                  // initialValue: AddPersonBloc.to.state?.name,
                  // onChanged: AddPersonBloc.to.onNameChanged,
                  )
              .pad(),
          // SwitchListTile(
          //   title:
          //       'HISTORY SHOWN: ${AddPersonBloc.to.state?.historyShown}'.text(),
          //   value: AddPersonBloc.to.state?.historyShown ?? false,
          //   onChanged: AddPersonBloc.to.onHistoryShownChanged,
          // ),
          // SwitchListTile(
          //   title: 'EDITING: ${AddPersonBloc.to.state?.editing}'.text(),
          //   value: AddPersonBloc.to.state?.editing ?? false,
          //   onChanged: AddPersonBloc.to.onEditingChanged,
          // ),
          // AddPersonBloc.to.state.text(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: randomID,
        onPressed: navigator.back,
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}
