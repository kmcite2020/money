import '../../../main.dart';

class PersonPage extends UI {
  const PersonPage({
    required this.id,
  });
  final String id;
  @override
  Widget build(BuildContext context) {
    return PersonBuilder(
      id: id,
      builder: (Person person) {
        final transactions = transactionsManager.getTransactionsByPersonID(id);
        transactions.sort(
          (a, b) => a.created.compareTo(b.created),
        );
        return Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(
                onPressed: () {
                  personsManager
                      .addPerson(person.copyWith(editing: !person.editing));
                },
                icon: Icon(person.editing ? Icons.done : Icons.edit),
              ),
            ],
          ),
          body: Column(
            children: [
              'ID'.text(textScaleFactor: 2).pad(),
              person.personID.text().center(),
              if (person.editing)
                TextFormField(
                  initialValue: person.name,
                  onChanged: (value) {
                    personsManager.addPerson(
                      person.copyWith(name: value),
                    );
                  },
                  onFieldSubmitted: (value) {
                    personsManager.addPerson(
                      person.copyWith(editing: !person.editing),
                    );
                  },
                  decoration: InputDecoration(labelText: 'NAME'),
                ).pad()
              else ...[
                'NAME'.text(textScaleFactor: 2),
                person.name.text(textScaleFactor: 1.5).pad(),
              ],
              'AMOUNT'.text(textScaleFactor: 2),
              person.amount.text(textScaleFactor: 1.5).pad(),
              IconButton.outlined(
                onPressed: () {
                  transactionsManager.addTransaction(
                    Transaction().copyWith(personID: id),
                  );
                },
                icon: Icon(
                  Icons.add_a_photo_sharp,
                ),
              ),
              Wrap(
                children: transactions
                    .map(
                      (e) => InputChip(
                        onPressed: () {
                          navigator.to(
                            TransactionPage(id: e.transactionID),
                          );
                        },
                        label: e.amount.text(),
                      ).pad(
                        customPadding: EdgeInsets.all(4),
                      ),
                    )
                    .toList(),
              )
            ],
          ),
        );
      },
    );
  }
}

extension DateTimeExtensions on DateTime {
  String date() => "$day/$month/$year";
  String time() => "$hour:$minute";
  String datetime() => date() + ' ' + time();
}
