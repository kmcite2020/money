import '../../../main.dart';

class PersonBuilder extends UI {
  const PersonBuilder({
    Key? key,
    required this.id,
    required this.builder,
  }) : super(key: key);
  final String id;
  final Widget Function(Person person) builder;
  @override
  Widget build(context) {
    final person = personsManager.getByID(id);
    switch (person.personID) {
      case '':
        return 'Invalid Person'.text();
      default:
        return builder(person);
    }
  }
}
