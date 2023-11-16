// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'peoples.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PeopleImpl _$$PeopleImplFromJson(Map<String, dynamic> json) => _$PeopleImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      historyShown: json['historyShown'] as bool,
      editing: json['editing'] as bool,
      entries: (json['entries'] as List<dynamic>)
          .map((e) => Entry.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PeopleImplToJson(_$PeopleImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'historyShown': instance.historyShown,
      'editing': instance.editing,
      'entries': instance.entries,
    };

_$PeoplesImpl _$$PeoplesImplFromJson(Map<String, dynamic> json) =>
    _$PeoplesImpl(
      cache: (json['cache'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, People.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$PeoplesImplToJson(_$PeoplesImpl instance) =>
    <String, dynamic>{
      'cache': instance.cache,
    };
