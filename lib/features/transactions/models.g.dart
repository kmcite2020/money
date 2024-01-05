// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PersonValidImpl _$$PersonValidImplFromJson(Map<String, dynamic> json) =>
    _$PersonValidImpl(
      personID: json['personID'] as int,
      name: json['name'] as String,
      created: DateTime.parse(json['created'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PersonValidImplToJson(_$PersonValidImpl instance) =>
    <String, dynamic>{
      'personID': instance.personID,
      'name': instance.name,
      'created': instance.created.toIso8601String(),
      'runtimeType': instance.$type,
    };

_$PersonInvalidImpl _$$PersonInvalidImplFromJson(Map<String, dynamic> json) =>
    _$PersonInvalidImpl(
      personID: json['personID'] as int? ?? -1,
      name: json['name'] as String? ?? 'Invalid',
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PersonInvalidImplToJson(_$PersonInvalidImpl instance) =>
    <String, dynamic>{
      'personID': instance.personID,
      'name': instance.name,
      'runtimeType': instance.$type,
    };

_$TransactionsImpl _$$TransactionsImplFromJson(Map<String, dynamic> json) =>
    _$TransactionsImpl(
      cache: (json['cache'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(int.parse(k), Transaction.fromJson(e)),
          ) ??
          const <int, Transaction>{},
    );

Map<String, dynamic> _$$TransactionsImplToJson(_$TransactionsImpl instance) =>
    <String, dynamic>{
      'cache': instance.cache.map((k, e) => MapEntry(k.toString(), e)),
    };

_$PersonsImpl _$$PersonsImplFromJson(Map<String, dynamic> json) =>
    _$PersonsImpl(
      cache: (json['cache'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(int.parse(k), Person.fromJson(e)),
          ) ??
          const <int, Person>{},
    );

Map<String, dynamic> _$$PersonsImplToJson(_$PersonsImpl instance) =>
    <String, dynamic>{
      'cache': instance.cache.map((k, e) => MapEntry(k.toString(), e)),
    };

_$TransactionValidImpl _$$TransactionValidImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionValidImpl(
      transactionID: json['transactionID'] as int? ?? -1,
      personID: json['personID'] as int? ?? -1,
      amount: json['amount'] as int? ?? 0,
      notes: json['notes'] as String? ?? 'VALID',
      editing: json['editing'] as bool? ?? false,
      created: DateTime.parse(json['created'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$TransactionValidImplToJson(
        _$TransactionValidImpl instance) =>
    <String, dynamic>{
      'transactionID': instance.transactionID,
      'personID': instance.personID,
      'amount': instance.amount,
      'notes': instance.notes,
      'editing': instance.editing,
      'created': instance.created.toIso8601String(),
      'runtimeType': instance.$type,
    };

_$TransactionInvalidImpl _$$TransactionInvalidImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionInvalidImpl(
      transactionID: json['transactionID'] as int? ?? -1,
      personID: json['personID'] as int? ?? -1,
      amount: json['amount'] as int? ?? 0,
      notes: json['notes'] as String? ?? 'INVALID',
      editing: json['editing'] as bool? ?? false,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$TransactionInvalidImplToJson(
        _$TransactionInvalidImpl instance) =>
    <String, dynamic>{
      'transactionID': instance.transactionID,
      'personID': instance.personID,
      'amount': instance.amount,
      'notes': instance.notes,
      'editing': instance.editing,
      'runtimeType': instance.$type,
    };
