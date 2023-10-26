// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'models.dart';

@collection
class Person {
  Id id = Isar.autoIncrement;

  String? nameValue;
  bool? historyShownValue;
  bool? editingValue;

  @ignore
  String get name => nameValue ?? '';
  set name(String? value) {
    nameValue = value;
  }

  @ignore
  bool get historyShown => historyShownValue ?? false;
  set historyShown(bool? value) {
    historyShownValue = value;
  }

  @ignore
  bool get editing => editingValue ?? false;

  set editing(bool? value) {
    editingValue = value;
  }

  @override
  String toString() {
    return 'Person(id: $id, nameValue: $nameValue, historyShownValue: $historyShownValue, editingValue: $editingValue)';
  }
}
