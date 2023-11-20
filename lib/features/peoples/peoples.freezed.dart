// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'peoples.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

People _$PeopleFromJson(Map<String, dynamic> json) {
  return _People.fromJson(json);
}

/// @nodoc
mixin _$People {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get historyShown => throw _privateConstructorUsedError;
  bool get editing => throw _privateConstructorUsedError;
  Map<String, Entry> get entries => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PeopleCopyWith<People> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PeopleCopyWith<$Res> {
  factory $PeopleCopyWith(People value, $Res Function(People) then) =
      _$PeopleCopyWithImpl<$Res, People>;
  @useResult
  $Res call(
      {String id,
      String name,
      bool historyShown,
      bool editing,
      Map<String, Entry> entries});
}

/// @nodoc
class _$PeopleCopyWithImpl<$Res, $Val extends People>
    implements $PeopleCopyWith<$Res> {
  _$PeopleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? historyShown = null,
    Object? editing = null,
    Object? entries = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      historyShown: null == historyShown
          ? _value.historyShown
          : historyShown // ignore: cast_nullable_to_non_nullable
              as bool,
      editing: null == editing
          ? _value.editing
          : editing // ignore: cast_nullable_to_non_nullable
              as bool,
      entries: null == entries
          ? _value.entries
          : entries // ignore: cast_nullable_to_non_nullable
              as Map<String, Entry>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PeopleImplCopyWith<$Res> implements $PeopleCopyWith<$Res> {
  factory _$$PeopleImplCopyWith(
          _$PeopleImpl value, $Res Function(_$PeopleImpl) then) =
      __$$PeopleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      bool historyShown,
      bool editing,
      Map<String, Entry> entries});
}

/// @nodoc
class __$$PeopleImplCopyWithImpl<$Res>
    extends _$PeopleCopyWithImpl<$Res, _$PeopleImpl>
    implements _$$PeopleImplCopyWith<$Res> {
  __$$PeopleImplCopyWithImpl(
      _$PeopleImpl _value, $Res Function(_$PeopleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? historyShown = null,
    Object? editing = null,
    Object? entries = null,
  }) {
    return _then(_$PeopleImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      historyShown: null == historyShown
          ? _value.historyShown
          : historyShown // ignore: cast_nullable_to_non_nullable
              as bool,
      editing: null == editing
          ? _value.editing
          : editing // ignore: cast_nullable_to_non_nullable
              as bool,
      entries: null == entries
          ? _value._entries
          : entries // ignore: cast_nullable_to_non_nullable
              as Map<String, Entry>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PeopleImpl implements _People {
  const _$PeopleImpl(
      {required this.id,
      required this.name,
      required this.historyShown,
      required this.editing,
      required final Map<String, Entry> entries})
      : _entries = entries;

  factory _$PeopleImpl.fromJson(Map<String, dynamic> json) =>
      _$$PeopleImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final bool historyShown;
  @override
  final bool editing;
  final Map<String, Entry> _entries;
  @override
  Map<String, Entry> get entries {
    if (_entries is EqualUnmodifiableMapView) return _entries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_entries);
  }

  @override
  String toString() {
    return 'People(id: $id, name: $name, historyShown: $historyShown, editing: $editing, entries: $entries)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PeopleImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.historyShown, historyShown) ||
                other.historyShown == historyShown) &&
            (identical(other.editing, editing) || other.editing == editing) &&
            const DeepCollectionEquality().equals(other._entries, _entries));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, historyShown, editing,
      const DeepCollectionEquality().hash(_entries));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PeopleImplCopyWith<_$PeopleImpl> get copyWith =>
      __$$PeopleImplCopyWithImpl<_$PeopleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PeopleImplToJson(
      this,
    );
  }
}

abstract class _People implements People {
  const factory _People(
      {required final String id,
      required final String name,
      required final bool historyShown,
      required final bool editing,
      required final Map<String, Entry> entries}) = _$PeopleImpl;

  factory _People.fromJson(Map<String, dynamic> json) = _$PeopleImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  bool get historyShown;
  @override
  bool get editing;
  @override
  Map<String, Entry> get entries;
  @override
  @JsonKey(ignore: true)
  _$$PeopleImplCopyWith<_$PeopleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Peoples _$PeoplesFromJson(Map<String, dynamic> json) {
  return _Peoples.fromJson(json);
}

/// @nodoc
mixin _$Peoples {
  Map<String, People> get cache => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PeoplesCopyWith<Peoples> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PeoplesCopyWith<$Res> {
  factory $PeoplesCopyWith(Peoples value, $Res Function(Peoples) then) =
      _$PeoplesCopyWithImpl<$Res, Peoples>;
  @useResult
  $Res call({Map<String, People> cache});
}

/// @nodoc
class _$PeoplesCopyWithImpl<$Res, $Val extends Peoples>
    implements $PeoplesCopyWith<$Res> {
  _$PeoplesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cache = null,
  }) {
    return _then(_value.copyWith(
      cache: null == cache
          ? _value.cache
          : cache // ignore: cast_nullable_to_non_nullable
              as Map<String, People>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PeoplesImplCopyWith<$Res> implements $PeoplesCopyWith<$Res> {
  factory _$$PeoplesImplCopyWith(
          _$PeoplesImpl value, $Res Function(_$PeoplesImpl) then) =
      __$$PeoplesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, People> cache});
}

/// @nodoc
class __$$PeoplesImplCopyWithImpl<$Res>
    extends _$PeoplesCopyWithImpl<$Res, _$PeoplesImpl>
    implements _$$PeoplesImplCopyWith<$Res> {
  __$$PeoplesImplCopyWithImpl(
      _$PeoplesImpl _value, $Res Function(_$PeoplesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cache = null,
  }) {
    return _then(_$PeoplesImpl(
      cache: null == cache
          ? _value._cache
          : cache // ignore: cast_nullable_to_non_nullable
              as Map<String, People>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PeoplesImpl implements _Peoples {
  const _$PeoplesImpl({required final Map<String, People> cache})
      : _cache = cache;

  factory _$PeoplesImpl.fromJson(Map<String, dynamic> json) =>
      _$$PeoplesImplFromJson(json);

  final Map<String, People> _cache;
  @override
  Map<String, People> get cache {
    if (_cache is EqualUnmodifiableMapView) return _cache;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_cache);
  }

  @override
  String toString() {
    return 'Peoples(cache: $cache)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PeoplesImpl &&
            const DeepCollectionEquality().equals(other._cache, _cache));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cache));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PeoplesImplCopyWith<_$PeoplesImpl> get copyWith =>
      __$$PeoplesImplCopyWithImpl<_$PeoplesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PeoplesImplToJson(
      this,
    );
  }
}

abstract class _Peoples implements Peoples {
  const factory _Peoples({required final Map<String, People> cache}) =
      _$PeoplesImpl;

  factory _Peoples.fromJson(Map<String, dynamic> json) = _$PeoplesImpl.fromJson;

  @override
  Map<String, People> get cache;
  @override
  @JsonKey(ignore: true)
  _$$PeoplesImplCopyWith<_$PeoplesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
