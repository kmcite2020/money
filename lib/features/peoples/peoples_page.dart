import '../../main.dart';

class PeoplesPage extends ReactiveStatelessWidget {
  const PeoplesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          title: 'PEOPLES'.text(),
        ),
        SliverList.list(
          children: [
            ElevatedButton(
              onPressed: () {
                peoplesManager.setPeople(
                  People.init(),
                );
              },
              child: 'Add New People'.text(),
            ).pad(),
          ],
        ),
        SliverList.builder(
          itemCount: peoplesManager.mapOfPeoples.length,
          itemBuilder: (context, index) {
            final _people = peoplesManager.listOfPeoples[index];
            return ListTile(
              title: _people.name.text(textScaleFactor: 2.0).pad(),
              subtitle: _people.totalLoan().text(textScaleFactor: 3).pad(),
              onTap: () => navigator.to(PeoplePage(id: _people.id)),
              trailing: IconButton(
                onPressed: () {
                  peoplesManager.removePeople(_people);
                },
                icon: Icon(Icons.delete),
              ),
            );
          },
        ),
      ],
    );
  }
}
