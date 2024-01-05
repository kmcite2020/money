import '../../../main.dart';

class TransactionBuilder extends UI {
  const TransactionBuilder({
    Key? key,
    required this.id,
    required this.builder,
  }) : super(key: key);
  final String id;
  final Widget Function(Transaction transaction) builder;
  @override
  Widget build(context) {
    final transaction = transactionsManager.getByID(id);
    if (transaction.isValid) {
      return builder(transaction);
    } else {
      return 'Invalid'.text();
    }
  }
}
