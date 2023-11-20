// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EntryImpl _$$EntryImplFromJson(Map<String, dynamic> json) => _$EntryImpl(
      id: json['id'] as String,
      amount: json['amount'] as int,
      timeCreated: DateTime.parse(json['timeCreated'] as String),
    );

Map<String, dynamic> _$$EntryImplToJson(_$EntryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'timeCreated': instance.timeCreated.toIso8601String(),
    };
