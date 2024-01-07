import 'package:money/features/persons/components/create_person_dialog.dart';
import 'package:money/features/transactions/components/create_transaction_dialog.dart';

import '../../main.dart';

class HomePage extends UI {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: 'MONEY'.text(),
        ),
        body: Stack(
          children: [
            // Opacity(opacity: .1, child: loanIcon.center()),
            Column(
              children: [
                Column(
                  children: [
                    'Transactions History'.text().pad(),
                    SizedBox(
                      height: 200,
                      child: ListView(
                        children: transactionsManager.transactions.map(
                          (eachTransaction) {
                            return ElevatedButton(
                              onLongPress: () =>
                                  transactionsManager.removeTransaction(
                                eachTransaction.personID!,
                              ),
                              onPressed: () {
                                navigator.to(
                                  TransactionPage(
                                    id: eachTransaction.transactionID,
                                  ),
                                );
                              },
                              child: eachTransaction.amount.text(),
                            ).pad(
                              customPadding: EdgeInsets.symmetric(
                                horizontal: 4,
                                vertical: 2,
                              ),
                            );
                          },
                        ).toList(),
                      ),
                    ),
                  ],
                ).card(),
                Column(
                  children: [
                    'Persons'.text().pad(),
                    SizedBox(
                      height: 200,
                      child: ListView(
                        children: personsManager.persons.map(
                          (eachPerson) {
                            return ElevatedButton(
                              onLongPress: () => personsManager.removePerson(
                                eachPerson.personID,
                              ),
                              onPressed: () {
                                navigator.to(
                                  PersonPage(id: eachPerson.personID),
                                );
                              },
                              child: eachPerson.name.text(),
                            ).pad(
                              customPadding: EdgeInsets.symmetric(
                                horizontal: 4,
                                vertical: 2,
                              ),
                            );
                          },
                        ).toList(),
                      ),
                    ),
                  ],
                ).card(),
                'balance'.text(),
                transactionsManager.state.balance.text(textScaleFactor: 4),
                'to give'.text(),
                transactionsManager.state.toGive.text(textScaleFactor: 4),
                'to get'.text(),
                transactionsManager.state.toGet.text(textScaleFactor: 4),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CreateTransactionDialogUI(),
                      CreatePersonDialogUI(),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.vaccines,
                          size: 50,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          navigator.to(SettingsPage());
                        },
                        icon: Icon(
                          Icons.settings,
                          size: 50,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      );
}
