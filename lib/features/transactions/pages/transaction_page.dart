import '../../../main.dart';

class TransactionPage extends UI {
  const TransactionPage({
    Key? key,
    required this.id,
  }) : super(key: key);
  final String id;
  @override
  Widget build(BuildContext context) {
    return TransactionBuilder(
      id: id,
      builder: (Transaction transaction) {
        return Scaffold(
          appBar: AppBar(
            title: transaction.person.name.text(),
            // backgroundColor:
            //     transaction.isPersonInvalid ? Colors.red : Colors.amber,
          ),
          body: ListView(
            children: [
              'Transaction ID'.text(textScaleFactor: 2).pad(),
              transaction.transactionID.text(textScaleFactor: 3).pad(),
              Divider(height: 0),
              Row(
                children: [
                  'Person'.text(textScaleFactor: 2).pad(),
                  PopupMenuButton(
                    itemBuilder: (_) {
                      return personsManager.persons
                          .map(
                            (e) => PopupMenuItem(
                              value: e.personID,
                              child: e.text(),
                            ),
                          )
                          .toList();
                    },
                    onSelected: (value) {
                      print(value);
                      transactionsManager.addTransaction(
                        transaction.copyWith(transactionID: value),
                      );
                    },
                  ),
                  Icon(Icons.done).pad(),
                ],
              ),
              // ElevatedButton(
              //   onPressed: transaction.isPersonInvalid
              //       ? null
              //       : () {
              //           navigator.to(PersonPage(id: transaction.personID));
              //         },
              //   child: transaction.person.text(textScaleFactor: 3).pad(),
              // ),
              Divider(height: 0),
              'Amount'.text(textScaleFactor: 2).pad(),
              transaction.amount.text(textScaleFactor: 3).pad(),
              Divider(height: 0),
              'Transaction Notes'.text(textScaleFactor: 2).pad(),
              transaction.notes.text(textScaleFactor: 3).pad(),
            ],
          ),
        );
      },
    );
  }
}
