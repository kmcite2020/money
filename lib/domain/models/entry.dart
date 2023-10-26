// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'models.dart';

@Collection(accessor: 'entries')
class Entry {
  Id id = Isar.autoIncrement;

  final person = IsarLink<Person>();

  DateTime? timeCreatedValue;
  int? amountvalue;

  @ignore
  DateTime get timeCreated => timeCreatedValue ?? DateTime.now();
  set timeCreated(DateTime? value) {
    timeCreatedValue = value;
  }

  @ignore
  int get amount => amountvalue ?? 0;
  set amount(int? value) {
    amountvalue = value;
  }

  @override
  String toString() => '''Entry
  ID: $id, 
  TimeCreatedValue: $timeCreatedValue, 
  AmountValue: $amountvalue
  Person: ${person.value}
  ''';
}
