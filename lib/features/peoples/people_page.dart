import '../../main.dart';

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
          SliverAppBar(
            title: people.name.text(),
            actions: [
              IconButton(
                onPressed: () {
                  peopleManager.setEditing(!people.editing);
                },
                icon: Icon(
                  people.editing ? Icons.done : Icons.edit,
                ),
              ).pad(
                customPadding: EdgeInsets.only(
                  right: settingsManager.settings.padding,
                ),
              ),
            ],
          ),
          if (people.editing)
            SliverList.list(
              children: [
                TextFormField(
                  initialValue: people.name,
                  onFieldSubmitted: peopleManager.setName,
                  decoration: InputDecoration(
                      labelText: 'Name - press enter to apply changes',
                      suffix: IconButton(
                        tooltip: 'create new entry',
                        onPressed: () {
                          peopleManager.setEntry(
                            (entry) => entry.copyWith(
                              amount: 0,
                              timeCreated: DateTime.now(),
                            ),
                          );
                        },
                        icon: Icon(Icons.add_business),
                      ),
                      helperText: 'press + button to add more entries'),
                ).pad().card(),
                people.totalLoan().text(textScaleFactor: 5).pad().card(),
                ...people.listOfEntries().map(
                  (eachEntry) {
                    return EntryUI(
                      key: Key(eachEntry.toString()),
                      entry: eachEntry,
                      onAmountChanged: (amount) {
                        peopleManager.setEntryAmount(
                          amount!,
                          eachEntry,
                        );
                      },
                      onTimeChanged: (amount) {
                        peopleManager.setEntryTime(
                          amount!,
                          eachEntry,
                        );
                      },
                      onDeleted: () {
                        peopleManager.deleteEntry(eachEntry);
                      },
                    ).pad().card();
                  },
                ), // people.id.text(textScaleFactor: 4).pad(),
              ],
            )
          else
            SliverList.list(
              children: [
                Wrap(
                  children: people.listOfEntries().map(
                    (eachEntry) {
                      return Column(
                        children: [
                          eachEntry.amount.text(textScaleFactor: 1.5).pad(),
                          eachEntry.timeCreated.date().text().pad(),
                        ],
                      ).card();
                    },
                  ).toList(),
                ),
              ],
            ),
        ],
      ),
    );
  }
}

extension DateTimeExtensions on DateTime {
  String date() => "$day/$month/$year";
  String time() => "$hour:$minute";
  String datetime() => date() + ' ' + time();
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

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: entry.amount.toString(),
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Amount - press enter to apply changes',
        helperText: entry.timeCreated.date(),
        prefixIcon: IconButton(
          onPressed: () async {
            final dateTime = await showDatePicker(
              context: context,
              firstDate: DateTime(1950),
              lastDate: DateTime.now(),
              initialDate: entry.timeCreated,
            );
            onTimeChanged?.call(dateTime);
          },
          icon: Icon(Icons.update),
        ),
        suffixIcon: IconButton(
          onPressed: onDeleted,
          icon: Icon(Icons.delete),
        ),
      ),
      onFieldSubmitted: (str) => onAmountChanged?.call(
        int.tryParse(str),
      ),
    ).pad();
  }
}
