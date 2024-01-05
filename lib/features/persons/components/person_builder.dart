import '../../../main.dart';

class PersonBuilder extends UI {
  const PersonBuilder({
    Key? key,
    required this.id,
    required this.builder,
  }) : super(key: key);
  final int id;
  final Widget Function(Person person) builder;
  @override
  Widget build(context) {
    final person = personsManager.getByID(id);
    switch (person.runtimeType) {
      case PersonInvalid:
        return 'isINVALID'.text();
      default:
        return builder(person);
    }
  }
}
