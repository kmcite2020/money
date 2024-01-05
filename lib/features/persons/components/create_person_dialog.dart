import 'package:money/main.dart';

class CreatePersonDialogUI extends UI {
  const CreatePersonDialogUI({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => navigator.toDialog(CreatePersonDialog()),
      icon: Icon(
        Icons.people,
        size: 50,
      ),
    );
  }
}

class CreatePersonDialog extends UI {
  const CreatePersonDialog({super.key});
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          'Name'.text().pad(),
          TextFormField(
            onFieldSubmitted: (value) {
              personsManager.addPerson(Person().copyWith(name: value));
              navigator.back();
            },
          ).pad(),
        ],
      ),
    );
  }
}
