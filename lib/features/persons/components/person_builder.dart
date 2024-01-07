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
        return Scaffold(
          body: GestureDetector(
            onTap: () => navigator.back(),
            child: '$id not found'
                .text(
                  textScaleFactor: 1.5,
                )
                .pad()
                .center()
                .card(),
          ),
        );
      default:
        return builder(person);
    }
  }
}
