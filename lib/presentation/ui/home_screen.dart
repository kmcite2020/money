part of 'ui.dart';

class HomeScreen extends ReactiveStatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'MONEY'.text(textScaleFactor: titleTextScaleFactor),
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        children: [
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 2,
            children: [
              'Entries'.text(textScaleFactor: 1.5).center(),
              'Perons'.text(textScaleFactor: 1.5).center(),
              Card(
                child: SizedBox(
                  child: EntriesBloc.to.entries.length.text(textScaleFactor: 3).center(),
                ),
              ).pad(),
              Card(
                child: PersonsBloc.to.persons.length.text(textScaleFactor: 3).center(),
              ).pad(),
            ],
          ),
        ],
      ),
      floatingActionButton: ButtonBar(
        children: [
          FloatingActionButton(
            tooltip: 'PERSONS',
            heroTag: randomID,
            onPressed: () {
              navigator.to(Routes.persons);
            },
            child: const Icon(Icons.supervised_user_circle),
          ),
          FloatingActionButton(
            tooltip: 'ENTRIES',
            heroTag: randomID,
            onPressed: () {
              navigator.to(Routes.entries);
            },
            child: const Icon(Icons.edit_note_rounded),
          ),
          FloatingActionButton(
            tooltip: 'SETTINGS',
            heroTag: randomID,
            onPressed: () {
              navigator.to(Routes.settings);
            },
            child: const Icon(Icons.settings),
          ),
        ],
      ),
    );
  }
}
