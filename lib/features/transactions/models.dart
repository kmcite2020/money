import '../../main.dart';

part 'models.freezed.dart';
part 'models.g.dart';

@freezed
class Person with _$Person {
  const factory Person.raw({
    required final String personID,
    required final String name,
    @Default(false) final bool editing,
    required final DateTime created,
  }) = _Person;
  const Person._();
  factory Person() => Person.raw(
        personID: randomID,
        name: '',
        created: DateTime.now(),
      );
  factory Person.fromJson(json) => _$PersonFromJson(json);
}

@freezed
class Transactions with _$Transactions {
  const factory Transactions({
    @Default(<String, Transaction>{}) final Map<String, Transaction> cache,
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
    @Default(<String, Person>{}) final Map<String, Person> cache,
  }) = _Persons;

  factory Persons.fromJson(json) => _$PersonsFromJson(json);
}

@freezed
class Transaction with _$Transaction {
  const factory Transaction.raw({
    @Default('') final String transactionID,
    @Default('') final String personID,
    @Default(0) final int amount,
    @Default('VALID') final String notes,
    @Default(false) final bool editing,
    required final DateTime created,
  }) = _Transaction;
  factory Transaction() => Transaction.raw(
        transactionID: randomID,
        created: DateTime.now(),
      );

  const Transaction._();
  Person get person => personsManager.getByID(this.personID);
  bool get isPersonValid {
    switch (personID) {
      case '': // '' is invalid id
        return false;
      default:
        return true;
    }
  }

  bool get isValid {
    switch (transactionID) {
      case '': // '' is invalid id
        return false;
      default:
        return true;
    }
  }

  factory Transaction.fromJson(json) => _$TransactionFromJson(json);
}
