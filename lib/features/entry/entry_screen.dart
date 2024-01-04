import '../../main.dart';

class EntryScreen extends ReactiveStatelessWidget {
  EntryScreen({
    super.key,
    required this.id,
  });
  final int id;
  // late final EntryBloc entryBloc;
  // @override
  // void didMountWidget(BuildContext context) {
  //   entryBloc = EntryBloc(id);
  //   super.didMountWidget(context);
  // }

  Widget build(BuildContext context) {
    // final entry = entryBloc.entry;
    return Scaffold(
      appBar: AppBar(
        title: 'ENTRY'.text(),
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        children: [
          // (entry).text().pad().card().pad(),
        ],
      ),
      floatingActionButton: ButtonBar(
        children: [
          // FloatingActionButton(
          //   heroTag: randomID,
          //   backgroundColor: Colors.red,
          //   onPressed: () => EntriesBloc.to.deleteEntry(entry!),
          //   child: const Icon(Icons.delete),
          // ),
          // FloatingActionButton(
          //   heroTag: randomID,
          //   onPressed: navigator.back,
          //   child: const Icon(Icons.arrow_back),
          // ),
        ],
      ),
    );
  }
}
