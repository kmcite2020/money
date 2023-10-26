part of 'ui.dart';

class AddPersonScreen extends ReactiveStatelessWidget {
  const AddPersonScreen({super.key});
  @override
  void didMountWidget(BuildContext context) {
    Future(AddPersonBloc.to.init);
    super.didMountWidget(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'Add Person'.text(textScaleFactor: titleTextScaleFactor),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          TextFormField(
            initialValue: AddPersonBloc.to.state?.name,
            onChanged: AddPersonBloc.to.onNameChanged,
          ).pad(),
          SwitchListTile(
            title: 'HISTORY SHOWN: ${AddPersonBloc.to.state?.historyShown}'.text(),
            value: AddPersonBloc.to.state?.historyShown ?? false,
            onChanged: AddPersonBloc.to.onHistoryShownChanged,
          ),
          SwitchListTile(
            title: 'EDITING: ${AddPersonBloc.to.state?.editing}'.text(),
            value: AddPersonBloc.to.state?.editing ?? false,
            onChanged: AddPersonBloc.to.onEditingChanged,
          ),
          AddPersonBloc.to.state.text(),
        ],
      ),
      floatingActionButton: ButtonBar(
        children: [
          FloatingActionButton(
            heroTag: randomID,
            onPressed: AddPersonBloc.to.dispose,
            child: const Icon(Icons.cancel),
          ),
          FloatingActionButton(
            heroTag: randomID,
            onPressed: AddPersonBloc.to.save,
            child: const Icon(Icons.done),
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
