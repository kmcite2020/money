// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Person _$PersonFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'valid':
      return PersonValid.fromJson(json);
    case 'invalid':
      return PersonInvalid.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'Person',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$Person {
  int get personID => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int personID, String name, DateTime created)
        valid,
    required TResult Function(int personID, String name) invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int personID, String name, DateTime created)? valid,
    TResult? Function(int personID, String name)? invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int personID, String name, DateTime created)? valid,
    TResult Function(int personID, String name)? invalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PersonValid value) valid,
    required TResult Function(PersonInvalid value) invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PersonValid value)? valid,
    TResult? Function(PersonInvalid value)? invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PersonValid value)? valid,
    TResult Function(PersonInvalid value)? invalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonCopyWith<Person> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonCopyWith<$Res> {
  factory $PersonCopyWith(Person value, $Res Function(Person) then) =
      _$PersonCopyWithImpl<$Res, Person>;
  @useResult
  $Res call({int personID, String name});
}

/// @nodoc
class _$PersonCopyWithImpl<$Res, $Val extends Person>
    implements $PersonCopyWith<$Res> {
  _$PersonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? personID = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      personID: null == personID
          ? _value.personID
          : personID // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PersonValidImplCopyWith<$Res>
    implements $PersonCopyWith<$Res> {
  factory _$$PersonValidImplCopyWith(
          _$PersonValidImpl value, $Res Function(_$PersonValidImpl) then) =
      __$$PersonValidImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int personID, String name, DateTime created});
}

/// @nodoc
class __$$PersonValidImplCopyWithImpl<$Res>
    extends _$PersonCopyWithImpl<$Res, _$PersonValidImpl>
    implements _$$PersonValidImplCopyWith<$Res> {
  __$$PersonValidImplCopyWithImpl(
      _$PersonValidImpl _value, $Res Function(_$PersonValidImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? personID = null,
    Object? name = null,
    Object? created = null,
  }) {
    return _then(_$PersonValidImpl(
      personID: null == personID
          ? _value.personID
          : personID // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PersonValidImpl extends PersonValid with DiagnosticableTreeMixin {
  const _$PersonValidImpl(
      {required this.personID,
      required this.name,
      required this.created,
      final String? $type})
      : $type = $type ?? 'valid',
        super._();

  factory _$PersonValidImpl.fromJson(Map<String, dynamic> json) =>
      _$$PersonValidImplFromJson(json);

  @override
  final int personID;
  @override
  final String name;
  @override
  final DateTime created;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Person.valid(personID: $personID, name: $name, created: $created)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Person.valid'))
      ..add(DiagnosticsProperty('personID', personID))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('created', created));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonValidImpl &&
            (identical(other.personID, personID) ||
                other.personID == personID) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.created, created) || other.created == created));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, personID, name, created);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonValidImplCopyWith<_$PersonValidImpl> get copyWith =>
      __$$PersonValidImplCopyWithImpl<_$PersonValidImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int personID, String name, DateTime created)
        valid,
    required TResult Function(int personID, String name) invalid,
  }) {
    return valid(personID, name, created);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int personID, String name, DateTime created)? valid,
    TResult? Function(int personID, String name)? invalid,
  }) {
    return valid?.call(personID, name, created);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int personID, String name, DateTime created)? valid,
    TResult Function(int personID, String name)? invalid,
    required TResult orElse(),
  }) {
    if (valid != null) {
      return valid(personID, name, created);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PersonValid value) valid,
    required TResult Function(PersonInvalid value) invalid,
  }) {
    return valid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PersonValid value)? valid,
    TResult? Function(PersonInvalid value)? invalid,
  }) {
    return valid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PersonValid value)? valid,
    TResult Function(PersonInvalid value)? invalid,
    required TResult orElse(),
  }) {
    if (valid != null) {
      return valid(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PersonValidImplToJson(
      this,
    );
  }
}

abstract class PersonValid extends Person {
  const factory PersonValid(
      {required final int personID,
      required final String name,
      required final DateTime created}) = _$PersonValidImpl;
  const PersonValid._() : super._();

  factory PersonValid.fromJson(Map<String, dynamic> json) =
      _$PersonValidImpl.fromJson;

  @override
  int get personID;
  @override
  String get name;
  DateTime get created;
  @override
  @JsonKey(ignore: true)
  _$$PersonValidImplCopyWith<_$PersonValidImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PersonInvalidImplCopyWith<$Res>
    implements $PersonCopyWith<$Res> {
  factory _$$PersonInvalidImplCopyWith(
          _$PersonInvalidImpl value, $Res Function(_$PersonInvalidImpl) then) =
      __$$PersonInvalidImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int personID, String name});
}

/// @nodoc
class __$$PersonInvalidImplCopyWithImpl<$Res>
    extends _$PersonCopyWithImpl<$Res, _$PersonInvalidImpl>
    implements _$$PersonInvalidImplCopyWith<$Res> {
  __$$PersonInvalidImplCopyWithImpl(
      _$PersonInvalidImpl _value, $Res Function(_$PersonInvalidImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? personID = null,
    Object? name = null,
  }) {
    return _then(_$PersonInvalidImpl(
      personID: null == personID
          ? _value.personID
          : personID // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PersonInvalidImpl extends PersonInvalid with DiagnosticableTreeMixin {
  const _$PersonInvalidImpl(
      {this.personID = -1, this.name = 'Invalid', final String? $type})
      : $type = $type ?? 'invalid',
        super._();

  factory _$PersonInvalidImpl.fromJson(Map<String, dynamic> json) =>
      _$$PersonInvalidImplFromJson(json);

  @override
  @JsonKey()
  final int personID;
  @override
  @JsonKey()
  final String name;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Person.invalid(personID: $personID, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Person.invalid'))
      ..add(DiagnosticsProperty('personID', personID))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonInvalidImpl &&
            (identical(other.personID, personID) ||
                other.personID == personID) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, personID, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonInvalidImplCopyWith<_$PersonInvalidImpl> get copyWith =>
      __$$PersonInvalidImplCopyWithImpl<_$PersonInvalidImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int personID, String name, DateTime created)
        valid,
    required TResult Function(int personID, String name) invalid,
  }) {
    return invalid(personID, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int personID, String name, DateTime created)? valid,
    TResult? Function(int personID, String name)? invalid,
  }) {
    return invalid?.call(personID, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int personID, String name, DateTime created)? valid,
    TResult Function(int personID, String name)? invalid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(personID, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PersonValid value) valid,
    required TResult Function(PersonInvalid value) invalid,
  }) {
    return invalid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PersonValid value)? valid,
    TResult? Function(PersonInvalid value)? invalid,
  }) {
    return invalid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PersonValid value)? valid,
    TResult Function(PersonInvalid value)? invalid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PersonInvalidImplToJson(
      this,
    );
  }
}

abstract class PersonInvalid extends Person {
  const factory PersonInvalid({final int personID, final String name}) =
      _$PersonInvalidImpl;
  const PersonInvalid._() : super._();

  factory PersonInvalid.fromJson(Map<String, dynamic> json) =
      _$PersonInvalidImpl.fromJson;

  @override
  int get personID;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$PersonInvalidImplCopyWith<_$PersonInvalidImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Transactions _$TransactionsFromJson(Map<String, dynamic> json) {
  return _Transactions.fromJson(json);
}

/// @nodoc
mixin _$Transactions {
  Map<int, Transaction> get cache => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionsCopyWith<Transactions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionsCopyWith<$Res> {
  factory $TransactionsCopyWith(
          Transactions value, $Res Function(Transactions) then) =
      _$TransactionsCopyWithImpl<$Res, Transactions>;
  @useResult
  $Res call({Map<int, Transaction> cache});
}

/// @nodoc
class _$TransactionsCopyWithImpl<$Res, $Val extends Transactions>
    implements $TransactionsCopyWith<$Res> {
  _$TransactionsCopyWithImpl(this._value, this._then);

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
              as Map<int, Transaction>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransactionsImplCopyWith<$Res>
    implements $TransactionsCopyWith<$Res> {
  factory _$$TransactionsImplCopyWith(
          _$TransactionsImpl value, $Res Function(_$TransactionsImpl) then) =
      __$$TransactionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<int, Transaction> cache});
}

/// @nodoc
class __$$TransactionsImplCopyWithImpl<$Res>
    extends _$TransactionsCopyWithImpl<$Res, _$TransactionsImpl>
    implements _$$TransactionsImplCopyWith<$Res> {
  __$$TransactionsImplCopyWithImpl(
      _$TransactionsImpl _value, $Res Function(_$TransactionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cache = null,
  }) {
    return _then(_$TransactionsImpl(
      cache: null == cache
          ? _value._cache
          : cache // ignore: cast_nullable_to_non_nullable
              as Map<int, Transaction>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionsImpl extends _Transactions with DiagnosticableTreeMixin {
  const _$TransactionsImpl(
      {final Map<int, Transaction> cache = const <int, Transaction>{}})
      : _cache = cache,
        super._();

  factory _$TransactionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionsImplFromJson(json);

  final Map<int, Transaction> _cache;
  @override
  @JsonKey()
  Map<int, Transaction> get cache {
    if (_cache is EqualUnmodifiableMapView) return _cache;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_cache);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Transactions(cache: $cache)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Transactions'))
      ..add(DiagnosticsProperty('cache', cache));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionsImpl &&
            const DeepCollectionEquality().equals(other._cache, _cache));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cache));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionsImplCopyWith<_$TransactionsImpl> get copyWith =>
      __$$TransactionsImplCopyWithImpl<_$TransactionsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionsImplToJson(
      this,
    );
  }
}

abstract class _Transactions extends Transactions {
  const factory _Transactions({final Map<int, Transaction> cache}) =
      _$TransactionsImpl;
  const _Transactions._() : super._();

  factory _Transactions.fromJson(Map<String, dynamic> json) =
      _$TransactionsImpl.fromJson;

  @override
  Map<int, Transaction> get cache;
  @override
  @JsonKey(ignore: true)
  _$$TransactionsImplCopyWith<_$TransactionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Persons _$PersonsFromJson(Map<String, dynamic> json) {
  return _Persons.fromJson(json);
}

/// @nodoc
mixin _$Persons {
  Map<int, Person> get cache => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonsCopyWith<Persons> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonsCopyWith<$Res> {
  factory $PersonsCopyWith(Persons value, $Res Function(Persons) then) =
      _$PersonsCopyWithImpl<$Res, Persons>;
  @useResult
  $Res call({Map<int, Person> cache});
}

/// @nodoc
class _$PersonsCopyWithImpl<$Res, $Val extends Persons>
    implements $PersonsCopyWith<$Res> {
  _$PersonsCopyWithImpl(this._value, this._then);

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
              as Map<int, Person>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PersonsImplCopyWith<$Res> implements $PersonsCopyWith<$Res> {
  factory _$$PersonsImplCopyWith(
          _$PersonsImpl value, $Res Function(_$PersonsImpl) then) =
      __$$PersonsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<int, Person> cache});
}

/// @nodoc
class __$$PersonsImplCopyWithImpl<$Res>
    extends _$PersonsCopyWithImpl<$Res, _$PersonsImpl>
    implements _$$PersonsImplCopyWith<$Res> {
  __$$PersonsImplCopyWithImpl(
      _$PersonsImpl _value, $Res Function(_$PersonsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cache = null,
  }) {
    return _then(_$PersonsImpl(
      cache: null == cache
          ? _value._cache
          : cache // ignore: cast_nullable_to_non_nullable
              as Map<int, Person>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PersonsImpl with DiagnosticableTreeMixin implements _Persons {
  const _$PersonsImpl({final Map<int, Person> cache = const <int, Person>{}})
      : _cache = cache;

  factory _$PersonsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PersonsImplFromJson(json);

  final Map<int, Person> _cache;
  @override
  @JsonKey()
  Map<int, Person> get cache {
    if (_cache is EqualUnmodifiableMapView) return _cache;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_cache);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Persons(cache: $cache)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Persons'))
      ..add(DiagnosticsProperty('cache', cache));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonsImpl &&
            const DeepCollectionEquality().equals(other._cache, _cache));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cache));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonsImplCopyWith<_$PersonsImpl> get copyWith =>
      __$$PersonsImplCopyWithImpl<_$PersonsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PersonsImplToJson(
      this,
    );
  }
}

abstract class _Persons implements Persons {
  const factory _Persons({final Map<int, Person> cache}) = _$PersonsImpl;

  factory _Persons.fromJson(Map<String, dynamic> json) = _$PersonsImpl.fromJson;

  @override
  Map<int, Person> get cache;
  @override
  @JsonKey(ignore: true)
  _$$PersonsImplCopyWith<_$PersonsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Transaction _$TransactionFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'valid':
      return TransactionValid.fromJson(json);
    case 'invalid':
      return TransactionInvalid.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'Transaction',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$Transaction {
  int get transactionID => throw _privateConstructorUsedError;
  int get personID => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  String get notes => throw _privateConstructorUsedError;
  bool get editing => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int transactionID, int personID, int amount,
            String notes, bool editing, DateTime created)
        valid,
    required TResult Function(int transactionID, int personID, int amount,
            String notes, bool editing)
        invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int transactionID, int personID, int amount, String notes,
            bool editing, DateTime created)?
        valid,
    TResult? Function(int transactionID, int personID, int amount, String notes,
            bool editing)?
        invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int transactionID, int personID, int amount, String notes,
            bool editing, DateTime created)?
        valid,
    TResult Function(int transactionID, int personID, int amount, String notes,
            bool editing)?
        invalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionValid value) valid,
    required TResult Function(TransactionInvalid value) invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionValid value)? valid,
    TResult? Function(TransactionInvalid value)? invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionValid value)? valid,
    TResult Function(TransactionInvalid value)? invalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionCopyWith<Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionCopyWith<$Res> {
  factory $TransactionCopyWith(
          Transaction value, $Res Function(Transaction) then) =
      _$TransactionCopyWithImpl<$Res, Transaction>;
  @useResult
  $Res call(
      {int transactionID,
      int personID,
      int amount,
      String notes,
      bool editing});
}

/// @nodoc
class _$TransactionCopyWithImpl<$Res, $Val extends Transaction>
    implements $TransactionCopyWith<$Res> {
  _$TransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionID = null,
    Object? personID = null,
    Object? amount = null,
    Object? notes = null,
    Object? editing = null,
  }) {
    return _then(_value.copyWith(
      transactionID: null == transactionID
          ? _value.transactionID
          : transactionID // ignore: cast_nullable_to_non_nullable
              as int,
      personID: null == personID
          ? _value.personID
          : personID // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
      editing: null == editing
          ? _value.editing
          : editing // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransactionValidImplCopyWith<$Res>
    implements $TransactionCopyWith<$Res> {
  factory _$$TransactionValidImplCopyWith(_$TransactionValidImpl value,
          $Res Function(_$TransactionValidImpl) then) =
      __$$TransactionValidImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int transactionID,
      int personID,
      int amount,
      String notes,
      bool editing,
      DateTime created});
}

/// @nodoc
class __$$TransactionValidImplCopyWithImpl<$Res>
    extends _$TransactionCopyWithImpl<$Res, _$TransactionValidImpl>
    implements _$$TransactionValidImplCopyWith<$Res> {
  __$$TransactionValidImplCopyWithImpl(_$TransactionValidImpl _value,
      $Res Function(_$TransactionValidImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionID = null,
    Object? personID = null,
    Object? amount = null,
    Object? notes = null,
    Object? editing = null,
    Object? created = null,
  }) {
    return _then(_$TransactionValidImpl(
      transactionID: null == transactionID
          ? _value.transactionID
          : transactionID // ignore: cast_nullable_to_non_nullable
              as int,
      personID: null == personID
          ? _value.personID
          : personID // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
      editing: null == editing
          ? _value.editing
          : editing // ignore: cast_nullable_to_non_nullable
              as bool,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionValidImpl extends TransactionValid
    with DiagnosticableTreeMixin {
  const _$TransactionValidImpl(
      {this.transactionID = -1,
      this.personID = -1,
      this.amount = 0,
      this.notes = 'VALID',
      this.editing = false,
      required this.created,
      final String? $type})
      : $type = $type ?? 'valid',
        super._();

  factory _$TransactionValidImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionValidImplFromJson(json);

  @override
  @JsonKey()
  final int transactionID;
  @override
  @JsonKey()
  final int personID;
  @override
  @JsonKey()
  final int amount;
  @override
  @JsonKey()
  final String notes;
  @override
  @JsonKey()
  final bool editing;
  @override
  final DateTime created;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Transaction.valid(transactionID: $transactionID, personID: $personID, amount: $amount, notes: $notes, editing: $editing, created: $created)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Transaction.valid'))
      ..add(DiagnosticsProperty('transactionID', transactionID))
      ..add(DiagnosticsProperty('personID', personID))
      ..add(DiagnosticsProperty('amount', amount))
      ..add(DiagnosticsProperty('notes', notes))
      ..add(DiagnosticsProperty('editing', editing))
      ..add(DiagnosticsProperty('created', created));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionValidImpl &&
            (identical(other.transactionID, transactionID) ||
                other.transactionID == transactionID) &&
            (identical(other.personID, personID) ||
                other.personID == personID) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.editing, editing) || other.editing == editing) &&
            (identical(other.created, created) || other.created == created));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, transactionID, personID, amount, notes, editing, created);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionValidImplCopyWith<_$TransactionValidImpl> get copyWith =>
      __$$TransactionValidImplCopyWithImpl<_$TransactionValidImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int transactionID, int personID, int amount,
            String notes, bool editing, DateTime created)
        valid,
    required TResult Function(int transactionID, int personID, int amount,
            String notes, bool editing)
        invalid,
  }) {
    return valid(transactionID, personID, amount, notes, editing, created);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int transactionID, int personID, int amount, String notes,
            bool editing, DateTime created)?
        valid,
    TResult? Function(int transactionID, int personID, int amount, String notes,
            bool editing)?
        invalid,
  }) {
    return valid?.call(
        transactionID, personID, amount, notes, editing, created);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int transactionID, int personID, int amount, String notes,
            bool editing, DateTime created)?
        valid,
    TResult Function(int transactionID, int personID, int amount, String notes,
            bool editing)?
        invalid,
    required TResult orElse(),
  }) {
    if (valid != null) {
      return valid(transactionID, personID, amount, notes, editing, created);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionValid value) valid,
    required TResult Function(TransactionInvalid value) invalid,
  }) {
    return valid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionValid value)? valid,
    TResult? Function(TransactionInvalid value)? invalid,
  }) {
    return valid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionValid value)? valid,
    TResult Function(TransactionInvalid value)? invalid,
    required TResult orElse(),
  }) {
    if (valid != null) {
      return valid(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionValidImplToJson(
      this,
    );
  }
}

abstract class TransactionValid extends Transaction {
  const factory TransactionValid(
      {final int transactionID,
      final int personID,
      final int amount,
      final String notes,
      final bool editing,
      required final DateTime created}) = _$TransactionValidImpl;
  const TransactionValid._() : super._();

  factory TransactionValid.fromJson(Map<String, dynamic> json) =
      _$TransactionValidImpl.fromJson;

  @override
  int get transactionID;
  @override
  int get personID;
  @override
  int get amount;
  @override
  String get notes;
  @override
  bool get editing;
  DateTime get created;
  @override
  @JsonKey(ignore: true)
  _$$TransactionValidImplCopyWith<_$TransactionValidImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TransactionInvalidImplCopyWith<$Res>
    implements $TransactionCopyWith<$Res> {
  factory _$$TransactionInvalidImplCopyWith(_$TransactionInvalidImpl value,
          $Res Function(_$TransactionInvalidImpl) then) =
      __$$TransactionInvalidImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int transactionID,
      int personID,
      int amount,
      String notes,
      bool editing});
}

/// @nodoc
class __$$TransactionInvalidImplCopyWithImpl<$Res>
    extends _$TransactionCopyWithImpl<$Res, _$TransactionInvalidImpl>
    implements _$$TransactionInvalidImplCopyWith<$Res> {
  __$$TransactionInvalidImplCopyWithImpl(_$TransactionInvalidImpl _value,
      $Res Function(_$TransactionInvalidImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionID = null,
    Object? personID = null,
    Object? amount = null,
    Object? notes = null,
    Object? editing = null,
  }) {
    return _then(_$TransactionInvalidImpl(
      transactionID: null == transactionID
          ? _value.transactionID
          : transactionID // ignore: cast_nullable_to_non_nullable
              as int,
      personID: null == personID
          ? _value.personID
          : personID // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
      editing: null == editing
          ? _value.editing
          : editing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionInvalidImpl extends TransactionInvalid
    with DiagnosticableTreeMixin {
  const _$TransactionInvalidImpl(
      {this.transactionID = -1,
      this.personID = -1,
      this.amount = 0,
      this.notes = 'INVALID',
      this.editing = false,
      final String? $type})
      : $type = $type ?? 'invalid',
        super._();

  factory _$TransactionInvalidImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionInvalidImplFromJson(json);

  @override
  @JsonKey()
  final int transactionID;
  @override
  @JsonKey()
  final int personID;
  @override
  @JsonKey()
  final int amount;
  @override
  @JsonKey()
  final String notes;
  @override
  @JsonKey()
  final bool editing;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Transaction.invalid(transactionID: $transactionID, personID: $personID, amount: $amount, notes: $notes, editing: $editing)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Transaction.invalid'))
      ..add(DiagnosticsProperty('transactionID', transactionID))
      ..add(DiagnosticsProperty('personID', personID))
      ..add(DiagnosticsProperty('amount', amount))
      ..add(DiagnosticsProperty('notes', notes))
      ..add(DiagnosticsProperty('editing', editing));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionInvalidImpl &&
            (identical(other.transactionID, transactionID) ||
                other.transactionID == transactionID) &&
            (identical(other.personID, personID) ||
                other.personID == personID) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.editing, editing) || other.editing == editing));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, transactionID, personID, amount, notes, editing);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionInvalidImplCopyWith<_$TransactionInvalidImpl> get copyWith =>
      __$$TransactionInvalidImplCopyWithImpl<_$TransactionInvalidImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int transactionID, int personID, int amount,
            String notes, bool editing, DateTime created)
        valid,
    required TResult Function(int transactionID, int personID, int amount,
            String notes, bool editing)
        invalid,
  }) {
    return invalid(transactionID, personID, amount, notes, editing);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int transactionID, int personID, int amount, String notes,
            bool editing, DateTime created)?
        valid,
    TResult? Function(int transactionID, int personID, int amount, String notes,
            bool editing)?
        invalid,
  }) {
    return invalid?.call(transactionID, personID, amount, notes, editing);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int transactionID, int personID, int amount, String notes,
            bool editing, DateTime created)?
        valid,
    TResult Function(int transactionID, int personID, int amount, String notes,
            bool editing)?
        invalid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(transactionID, personID, amount, notes, editing);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionValid value) valid,
    required TResult Function(TransactionInvalid value) invalid,
  }) {
    return invalid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionValid value)? valid,
    TResult? Function(TransactionInvalid value)? invalid,
  }) {
    return invalid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionValid value)? valid,
    TResult Function(TransactionInvalid value)? invalid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionInvalidImplToJson(
      this,
    );
  }
}

abstract class TransactionInvalid extends Transaction {
  const factory TransactionInvalid(
      {final int transactionID,
      final int personID,
      final int amount,
      final String notes,
      final bool editing}) = _$TransactionInvalidImpl;
  const TransactionInvalid._() : super._();

  factory TransactionInvalid.fromJson(Map<String, dynamic> json) =
      _$TransactionInvalidImpl.fromJson;

  @override
  int get transactionID;
  @override
  int get personID;
  @override
  int get amount;
  @override
  String get notes;
  @override
  bool get editing;
  @override
  @JsonKey(ignore: true)
  _$$TransactionInvalidImplCopyWith<_$TransactionInvalidImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
