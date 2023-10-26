part of 'ui.dart';

class PersonsScreen extends ReactiveStatelessWidget {
  const PersonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'PERSONS'.text(textScaleFactor: titleTextScaleFactor),
        automaticallyImplyLeading: false,
      ),
      body: ListView.builder(
        itemCount: PersonsBloc.to.persons.length,
        itemBuilder: (context, index) {
          final person = PersonsBloc.to.persons[index];
          return ListTile(
            title: Column(
              children: [
                person.name.text(textScaleFactor: 2.5).pad(),
                totalAmount(person.id).text(textScaleFactor: 2),
                if (person.historyShown)
                  ...entriesForPerson(person.id).map(
                    (e) => (e.amount).text(),
                  ),
              ],
            ),
            onTap: () {
              navigator.to('/person', arguments: person.id);
            },
          );
        },
      ),
      floatingActionButton: ButtonBar(
        children: [
          FloatingActionButton(
            heroTag: randomID,
            onPressed: () {
              navigator.to(Routes.addPerson);
            },
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            heroTag: randomID,
            onPressed: navigator.back,
            child: const Icon(Icons.arrow_back),
          ),
        ],
      ),
    );
  }
}
