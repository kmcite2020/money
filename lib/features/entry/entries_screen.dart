import 'package:flutter/material.dart';
import 'package:project_money/features/core/services.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../core/go_router.dart';
import 'entry.dart';

class EntriesScreen extends ReactiveStatelessWidget {
  const EntriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'ENTRIES'.text(),
        automaticallyImplyLeading: false,
      ),
      // body: ListView.builder(
      //   itemCount: EntriesBloc.to.entries.length,
      //   itemBuilder: (context, index) => EntryTile(
      //     entry: EntriesBloc.to.entries[index],
      //   ),
      // ),
      floatingActionButton: ButtonBar(
        children: [
          FloatingActionButton(
            heroTag: randomID,
            onPressed: () {
              navigator.to(Routes.addEntry);
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

class EntryTile extends ReactiveStatelessWidget {
  const EntryTile({
    super.key,
    required this.entry,
  });
  final Entry entry;
  @override
  Widget build(BuildContext context) {
    // final person = PersonsRepository.to.watchPerson(entry.personId!);
    return ListTile(
      // title: person.name.text(textScaleFactor: 2),
      subtitle: Column(
        children: [
          entry.amount.text(textScaleFactor: 4).pad(),
        ],
      ),
      onTap: () {
        // navigator.to('/entry', arguments: entry.id);
      },
    );
  }
}
