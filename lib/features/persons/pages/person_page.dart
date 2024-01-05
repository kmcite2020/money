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
        return Scaffold(
          appBar: AppBar(),
          body: Column(
            children: [
              '${person.editing ? 'EDIT' : 'READ'} '.text().pad(),
              'ID'.text().pad(),
              person.personID.text().pad(),
              person.name.text(textScaleFactor: 5),
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
              ).pad(),
              IconButton(
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
                children: transactionsManager
                    .getTransactionsByPersonID(id)
                    .map(
                      (e) => Chip(
                        label: e.amount.text(),
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
