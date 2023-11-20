import 'dart:math';

import 'package:flutter/material.dart';
import 'package:project_money/features/core/services.dart';
import 'package:project_money/features/entry/blocs.dart';
import 'package:project_money/features/entry/entry.dart';
import 'package:project_money/features/peoples/people.dart';
import 'package:project_money/features/peoples/peoples.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

class PeoplePage extends ReactiveStatelessWidget {
  const PeoplePage({
    super.key,
    required this.id,
  });
  final String id;

  @override
  Widget build(BuildContext context) {
    final People people = peoplesManager.getID(id);
    final PeopleManager peopleManager = PeopleManager()(people);
    return Material(
      child: CustomScrollView(
        slivers: [
          SliverAppBar.medium(
            actions: [
              IconButton(
                onPressed: () {
                  peopleManager.setEditing(!people.editing);
                },
                icon: Icon(
                  people.editing ? Icons.done : Icons.edit,
                ),
              ).pad(
                customPadding:
                    EdgeInsets.only(right: settingsManager.settings.padding),
              ),
            ],
          ),
          SliverList.list(
            children: [
              if (people.editing)
                TextFormField(
                  initialValue: people.name,
                ).pad()
              else
                people.name.text(textScaleFactor: 3).pad(),
              Divider(),
              ...people.entries.values.map(
                (eachEntry) {
                  final EntryManagerForPeople entryManager =
                      EntryManagerForPeople()(people, eachEntry);
                  return EntryUI(
                    key: Key(eachEntry.toString()),
                    entry: eachEntry,
                    onAmountChanged: entryManager.setAmount,
                    onTimeChanged: entryManager.setDateTime,
                    onDeleted: () => peopleManager.deleteEntry(eachEntry),
                  );
                },
              ), // people.id.text(textScaleFactor: 4).pad(),
              people.totalLoan().text(textScaleFactor: 5).pad(),
              ElevatedButton(
                onPressed: () {
                  peopleManager.addEntry(
                    (entry) => entry.copyWith(
                      amount: Random().nextInt(9999),
                      timeCreated: DateTime.now(),
                    ),
                  );
                },
                child: "Add Entry".text(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

extension TotalAmount on People {
  int totalLoan() => this.entries.values.map(
        (e) {
          return e.amount;
        },
      ).fold(
        0,
        (previousValue, element) => previousValue + element,
      );
}

class EntryUI extends ReactiveStatelessWidget {
  const EntryUI({
    super.key,
    required this.entry,
    this.onAmountChanged,
    this.onTimeChanged,
    this.onDeleted,
  });
  final Entry entry;
  final ValueChanged<int?>? onAmountChanged;
  final ValueChanged<DateTime?>? onTimeChanged;
  final VoidCallback? onDeleted;

  Widget _dateTime(DateTime dateTime) {
    return Column(
      children: [
        "${dateTime.day}-${dateTime.month}-${dateTime.year}".text(),
        "${dateTime.hour}:${dateTime.minute}:${dateTime.second}".text(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        entry.amount.text(),
        _dateTime(entry.timeCreated),
        TextFormField(
          initialValue: entry.amount.toString(),
          keyboardType: TextInputType.number,
          onChanged: (str) => onAmountChanged?.call(int.tryParse(str)),
        ).pad(),
        ElevatedButton(
          onPressed: () async {
            final dateTime = await showDatePicker(
              context: context,
              firstDate: DateTime(1950),
              lastDate: DateTime.now(),
            );
            onTimeChanged?.call(dateTime);
          },
          child: 'Change DateTime'.text(),
        ).pad(),
        IconButton(
          onPressed: onDeleted,
          icon: Icon(Icons.delete),
        ),
        Divider(),
      ],
    );
  }
}

typedef PeopleEntry = ({People? people, Entry? entry});

class EntryManagerForPeople {
  final peopleEntryRM = RM.inject<PeopleEntry>(
    () => (
      people: null,
      entry: null,
    ),
  );
  People? get people => peopleEntryRM.state.people;
  setPeople(People people) {
    peoplesManager.setPeople(people);
  }

  Entry? get entry => peopleEntryRM.state.entry;

  EntryManagerForPeople call(People? people, Entry? entry) {
    peopleEntryRM.state = (
      people: people,
      entry: entry,
    );
    return this;
  }

  void setAmount(int? amount) {
    call(people, entry?.copyWith(amount: amount ?? 0));
  }

  void setDateTime(DateTime? dateTime) {
    call(people, entry?.copyWith(timeCreated: dateTime!));
  }
}
