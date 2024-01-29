// ignore_for_file: public_member_api_docs, sort_constructors_first
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
              person.personID.text(textScaleFactor: 4),
              person.name.text(textScaleFactor: 5),
              TextFormField(
                initialValue: person.name,
                onChanged: (value) {
                  personsManager.addPerson(person.copyWith(name: value));
                },
                onFieldSubmitted: (value) {},
              ).pad(),
              IconButton(
                onPressed: () {
                  // transactionsManager.addTransaction(
                  //   Transaction.create().copyWith(personID: id),
                  // );
                },
                icon: Icon(
                  Icons.add_a_photo_sharp,
                ),
              ),
              // Wrap(
              //   children: transactionsManager
              //       .getTransactionByPersonID(id)
              //       .map(
              //         (e) => Chip(
              //           label: e.amount.text(),
              //         ),
              //       )
              //       .toList(),
              // )
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
