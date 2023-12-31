import '../../../main.dart';

class TransactionPage extends UI {
  const TransactionPage({required this.id});
  final String id;
  @override
  Widget build(BuildContext context) {
    return TransactionBuilder(
      id: id,
      builder: (Transaction transaction) {
        return Scaffold(
          appBar: AppBar(
            title: transaction.person.name.text(),
            backgroundColor: transaction.isPersonValid
                ? settingsManager.settings.materialColor
                : Colors.red,
            actions: [
              IconButton(
                onPressed: () async {
                  await Future.delayed(17.milliseconds);
                  transactionsManager
                      .removeTransaction(transaction.transactionID);
                },
                icon: Icon(Icons.delete),
              ),
              IconButton(
                onPressed: () {
                  transactionsManager.addTransaction(
                    transaction.copyWith(editing: !transaction.editing),
                  );
                },
                icon: Icon(transaction.editing ? Icons.done : Icons.edit),
              ).pad(
                customPadding: EdgeInsets.only(
                  right: settingsManager.settings.padding,
                ),
              )
            ],
          ),
          body: ListView(
            children: [
              'DATED'.text(textScaleFactor: 2).pad(),
              transaction.created.datetime().text().pad(),
              Divider(height: 0),
              'Transaction ID'.text(textScaleFactor: 2).pad(),
              transaction.transactionID.text().pad(),
              Divider(height: 0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  'Person'.text(textScaleFactor: 2).pad(),
                  Row(
                    children: [
                      IconButton(
                        tooltip: 'Goto person details',
                        onPressed: transaction.isPersonValid
                            ? () {
                                navigator.to(
                                  PersonPage(id: transaction.personID!),
                                );
                              }
                            : null,
                        icon: Icon(Icons.read_more),
                      ).pad(),
                      PopupMenuButton(
                        enabled: personsManager.persons.isNotEmpty,
                        itemBuilder: (_) {
                          return personsManager.persons
                              .map(
                                (eachPerson) => PopupMenuItem(
                                  enabled: eachPerson.personID !=
                                      transaction.personID,
                                  value: eachPerson.personID,
                                  child: eachPerson.name.text(),
                                ),
                              )
                              .toList();
                        },
                        onSelected: (personID) {
                          transactionsManager.addTransaction(
                            transaction.copyWith(personID: personID),
                          );
                        },
                      ).pad(
                        customPadding: EdgeInsets.only(
                          right: settingsManager.settings.padding,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              transaction.person.name.text(textScaleFactor: 3).pad(),
              Divider(height: 0),
              Row(
                children: [
                  'Amount'.text(textScaleFactor: 2).pad(),
                ],
              ),
              if (transaction.editing)
                TextFormField(
                  initialValue: transaction.amount.toString(),
                  onChanged: (value) {
                    final val = int.tryParse(value);
                    if (val == null) return;
                    transactionsManager.addTransaction(
                      transaction.copyWith(amount: val),
                    );
                  },
                  validator: (value) {
                    final val = int.tryParse(value!);
                    if (val == null) return 'Please enter valid number';
                    return null;
                  },
                  keyboardType: TextInputType.number,
                  autovalidateMode: AutovalidateMode.always,
                ).pad()
              else
                transaction.amount.text(textScaleFactor: 3).pad(),
              Divider(height: 0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  'Transaction Notes'.text(textScaleFactor: 2).pad(),
                ],
              ),
              if (transaction.editing)
                TextFormField(
                  initialValue: transaction.notes,
                  minLines: 5,
                  maxLines: 10,
                  onChanged: (notes) {
                    transactionsManager.addTransaction(
                      transaction.copyWith(notes: notes),
                    );
                  },
                  autovalidateMode: AutovalidateMode.always,
                ).pad()
              else
                transaction.notes.text(textScaleFactor: 3).pad()
            ],
          ),
        );
      },
    );
  }
}
