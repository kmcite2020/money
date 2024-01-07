// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PersonImpl _$$PersonImplFromJson(Map<String, dynamic> json) => _$PersonImpl(
      personID: json['personID'] as String,
      name: json['name'] as String,
      editing: json['editing'] as bool? ?? false,
      created: DateTime.parse(json['created'] as String),
    );

Map<String, dynamic> _$$PersonImplToJson(_$PersonImpl instance) =>
    <String, dynamic>{
      'personID': instance.personID,
      'name': instance.name,
      'editing': instance.editing,
      'created': instance.created.toIso8601String(),
    };

_$TransactionsImpl _$$TransactionsImplFromJson(Map<String, dynamic> json) =>
    _$TransactionsImpl(
      cache: (json['cache'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, Transaction.fromJson(e)),
          ) ??
          const <String, Transaction>{},
    );

Map<String, dynamic> _$$TransactionsImplToJson(_$TransactionsImpl instance) =>
    <String, dynamic>{
      'cache': instance.cache,
    };

_$PersonsImpl _$$PersonsImplFromJson(Map<String, dynamic> json) =>
    _$PersonsImpl(
      cache: (json['cache'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, Person.fromJson(e)),
          ) ??
          const <String, Person>{},
    );

Map<String, dynamic> _$$PersonsImplToJson(_$PersonsImpl instance) =>
    <String, dynamic>{
      'cache': instance.cache,
    };

_$TransactionImpl _$$TransactionImplFromJson(Map<String, dynamic> json) =>
    _$TransactionImpl(
      transactionID: json['transactionID'] as String,
      personID: json['personID'] as String?,
      amount: json['amount'] as int? ?? 0,
      notes: json['notes'] as String? ?? 'VALID',
      editing: json['editing'] as bool? ?? false,
      created: DateTime.parse(json['created'] as String),
    );

Map<String, dynamic> _$$TransactionImplToJson(_$TransactionImpl instance) =>
    <String, dynamic>{
      'transactionID': instance.transactionID,
      'personID': instance.personID,
      'amount': instance.amount,
      'notes': instance.notes,
      'editing': instance.editing,
      'created': instance.created.toIso8601String(),
    };
