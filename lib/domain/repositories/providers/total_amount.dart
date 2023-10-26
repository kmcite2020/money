part of 'providers.dart';

int totalAmount(int id) {
  return entriesForPerson(id).where(
    (element) {
      return element.person.value?.id == id;
    },
  ).fold(
    0,
    (
      previousValue,
      eachPersonEntry,
    ) {
      return (eachPersonEntry.amount) + previousValue;
    },
  );
}
