import '../../main.dart';

part 'models.freezed.dart';
part 'models.g.dart';

@freezed
class Person with _$Person {
  const factory Person.valid({
    required final int personID,
    required final String name,
    required final DateTime created,
  }) = PersonValid;
  const factory Person.invalid({
    @Default(-1) final int personID,
    @Default('Invalid') final String name,
  }) = PersonInvalid;
  const Person._();
  static Person create() => Person.valid(
        personID: personsManager.length + 1,
        name: '',
        created: DateTime.now(),
      );
  factory Person.fromJson(json) => _$PersonFromJson(json);
}

@freezed
class Transactions with _$Transactions {
  const factory Transactions({
    @Default(<int, Transaction>{}) final Map<int, Transaction> cache,
  }) = _Transactions;
  const Transactions._();
  int get balance => cache.values.fold(
        0,
        (previousValue, element) => previousValue + element.amount,
      );
  factory Transactions.fromJson(json) => _$TransactionsFromJson(json);
}

@freezed
class Persons with _$Persons {
  const factory Persons({
    @Default(<int, Person>{}) final Map<int, Person> cache,
  }) = _Persons;

  factory Persons.fromJson(json) => _$PersonsFromJson(json);
}

@freezed
class Transaction with _$Transaction {
  const factory Transaction.valid({
    @Default(-1) final int transactionID,
    @Default(-1) final int personID,
    @Default(0) final int amount,
    @Default('VALID') final String notes,
    @Default(false) final bool editing,
    required final DateTime created,
  }) = TransactionValid;
  const factory Transaction.invalid({
    @Default(-1) final int transactionID,
    @Default(-1) final int personID,
    @Default(0) final int amount,
    @Default('INVALID') final String notes,
    @Default(false) final bool editing,
  }) = TransactionInvalid;
  factory Transaction.create() => Transaction.valid(
        transactionID: transactionsManager.length + 1,
        created: DateTime.now(),
      );

  const Transaction._();
  Person get person => personsManager.getByID(this.personID);
  bool get isPersonInvalid {
    switch (personID) {
      case -1:
        return true;
      default:
        return false;
    }
  }

  factory Transaction.fromJson(json) => _$TransactionFromJson(json);
}
