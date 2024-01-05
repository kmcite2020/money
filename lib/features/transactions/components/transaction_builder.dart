import '../../../main.dart';

class TransactionBuilder extends UI {
  const TransactionBuilder({
    Key? key,
    required this.id,
    required this.builder,
  }) : super(key: key);
  final int id;
  final Widget Function(Transaction transaction) builder;
  @override
  Widget build(context) {
    final transaction = transactionsManager.getByID(id);
    switch (transaction.runtimeType) {
      case TransactionInvalid:
        return 'isINVALID'.text();
      default:
        return builder(transaction);
    }
  }
}
