import '../../../main.dart';

class CreateTransactionDialogUI extends UI {
  const CreateTransactionDialogUI({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => navigator.toDialog(CreateTransactionDialog()),
      icon: Icon(
        Icons.track_changes,
        size: 50,
      ),
    );
  }
}

class CreateTransactionDialog extends UI {
  const CreateTransactionDialog({super.key});
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          'Name'.text().pad(),
          TextFormField(
            onFieldSubmitted: (value) {
              final val = int.tryParse(value);
              if (val == null) return;
              transactionsManager.addTransaction(
                Transaction().copyWith(amount: val),
              );
              navigator.back();
            },
            validator: (value) {
              final val = int.tryParse(value!);
              if (val == null) return 'Please enter valid number';
              return null;
            },
            keyboardType: TextInputType.number,
            autovalidateMode: AutovalidateMode.always,
          ).pad()
        ],
      ),
    );
  }
}
