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

class ReactiveBuilder<T> extends UI {
  const ReactiveBuilder({
    Key? key,
    required this.cache,
    required this.id,
    required this.builder,
  }) : super(key: key);
  final String id;
  final Map<String, T> cache;
  final Widget Function(T t) builder;
  @override
  Widget build(context) {
    final t = cache[id];

    if (t != null) {
      return builder(t);
    } else {
      return '$id not found'.text();
    }
  }
}
