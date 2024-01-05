import '../../main.dart';

class TransactionsManager {
  final transactionsRM = RM.inject(
    () => Transactions(),
    persist: () => PersistState(
      key: 'transactions',
      fromJson: (json) => Transactions.fromJson(jsonDecode(json)),
      toJson: (state) => jsonEncode(state.toJson()),
    ),
  );
  Transaction getByID(int id) => state.cache[id] ?? Transaction.invalid();
  int get length => state.cache.length;
  List<Transaction> get transactions => state.cache.values.toList();

  List<Transaction> getTransactionByPersonID(int id) => transactions
      .where(
        (element) => element.personID == id,
      )
      .toList();

  Transactions get state => transactionsRM.state;
  set state(Transactions transactions) => transactionsRM.state = transactions;
  void addTransaction(Transaction transaction) {
    state = state.copyWith(
      cache: Map.of(state.cache)..[transaction.transactionID] = transaction,
    );
  }

  void removeTransaction(int id) {
    state = state.copyWith(
      cache: Map.of(state.cache)..remove(id),
    );
  }
}

final transactionsManager = TransactionsManager();
