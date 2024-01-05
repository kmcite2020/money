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
  return _Person.fromJson(json);
}

/// @nodoc
mixin _$Person {
  String get personID => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get editing => throw _privateConstructorUsedError;
  DateTime get created => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String personID, String name, bool editing, DateTime created)
        raw,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String personID, String name, bool editing, DateTime created)?
        raw,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String personID, String name, bool editing, DateTime created)?
        raw,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Person value) raw,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Person value)? raw,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Person value)? raw,
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
  $Res call({String personID, String name, bool editing, DateTime created});
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
    Object? editing = null,
    Object? created = null,
  }) {
    return _then(_value.copyWith(
      personID: null == personID
          ? _value.personID
          : personID // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      editing: null == editing
          ? _value.editing
          : editing // ignore: cast_nullable_to_non_nullable
              as bool,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PersonImplCopyWith<$Res> implements $PersonCopyWith<$Res> {
  factory _$$PersonImplCopyWith(
          _$PersonImpl value, $Res Function(_$PersonImpl) then) =
      __$$PersonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String personID, String name, bool editing, DateTime created});
}

/// @nodoc
class __$$PersonImplCopyWithImpl<$Res>
    extends _$PersonCopyWithImpl<$Res, _$PersonImpl>
    implements _$$PersonImplCopyWith<$Res> {
  __$$PersonImplCopyWithImpl(
      _$PersonImpl _value, $Res Function(_$PersonImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? personID = null,
    Object? name = null,
    Object? editing = null,
    Object? created = null,
  }) {
    return _then(_$PersonImpl(
      personID: null == personID
          ? _value.personID
          : personID // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
class _$PersonImpl extends _Person with DiagnosticableTreeMixin {
  const _$PersonImpl(
      {required this.personID,
      required this.name,
      this.editing = false,
      required this.created})
      : super._();

  factory _$PersonImpl.fromJson(Map<String, dynamic> json) =>
      _$$PersonImplFromJson(json);

  @override
  final String personID;
  @override
  final String name;
  @override
  @JsonKey()
  final bool editing;
  @override
  final DateTime created;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Person.raw(personID: $personID, name: $name, editing: $editing, created: $created)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Person.raw'))
      ..add(DiagnosticsProperty('personID', personID))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('editing', editing))
      ..add(DiagnosticsProperty('created', created));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonImpl &&
            (identical(other.personID, personID) ||
                other.personID == personID) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.editing, editing) || other.editing == editing) &&
            (identical(other.created, created) || other.created == created));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, personID, name, editing, created);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonImplCopyWith<_$PersonImpl> get copyWith =>
      __$$PersonImplCopyWithImpl<_$PersonImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String personID, String name, bool editing, DateTime created)
        raw,
  }) {
    return raw(personID, name, editing, created);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String personID, String name, bool editing, DateTime created)?
        raw,
  }) {
    return raw?.call(personID, name, editing, created);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String personID, String name, bool editing, DateTime created)?
        raw,
    required TResult orElse(),
  }) {
    if (raw != null) {
      return raw(personID, name, editing, created);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Person value) raw,
  }) {
    return raw(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Person value)? raw,
  }) {
    return raw?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Person value)? raw,
    required TResult orElse(),
  }) {
    if (raw != null) {
      return raw(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PersonImplToJson(
      this,
    );
  }
}

abstract class _Person extends Person {
  const factory _Person(
      {required final String personID,
      required final String name,
      final bool editing,
      required final DateTime created}) = _$PersonImpl;
  const _Person._() : super._();

  factory _Person.fromJson(Map<String, dynamic> json) = _$PersonImpl.fromJson;

  @override
  String get personID;
  @override
  String get name;
  @override
  bool get editing;
  @override
  DateTime get created;
  @override
  @JsonKey(ignore: true)
  _$$PersonImplCopyWith<_$PersonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Transactions _$TransactionsFromJson(Map<String, dynamic> json) {
  return _Transactions.fromJson(json);
}

/// @nodoc
mixin _$Transactions {
  Map<String, Transaction> get cache => throw _privateConstructorUsedError;

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
  $Res call({Map<String, Transaction> cache});
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
              as Map<String, Transaction>,
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
  $Res call({Map<String, Transaction> cache});
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
              as Map<String, Transaction>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionsImpl extends _Transactions with DiagnosticableTreeMixin {
  const _$TransactionsImpl(
      {final Map<String, Transaction> cache = const <String, Transaction>{}})
      : _cache = cache,
        super._();

  factory _$TransactionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionsImplFromJson(json);

  final Map<String, Transaction> _cache;
  @override
  @JsonKey()
  Map<String, Transaction> get cache {
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
  bool operator ==(Object other) {
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
  const factory _Transactions({final Map<String, Transaction> cache}) =
      _$TransactionsImpl;
  const _Transactions._() : super._();

  factory _Transactions.fromJson(Map<String, dynamic> json) =
      _$TransactionsImpl.fromJson;

  @override
  Map<String, Transaction> get cache;
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
  Map<String, Person> get cache => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonsCopyWith<Persons> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonsCopyWith<$Res> {
  factory $PersonsCopyWith(Persons value, $Res Function(Persons) then) =
      _$PersonsCopyWithImpl<$Res, Persons>;
  @useResult
  $Res call({Map<String, Person> cache});
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
              as Map<String, Person>,
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
  $Res call({Map<String, Person> cache});
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
              as Map<String, Person>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PersonsImpl with DiagnosticableTreeMixin implements _Persons {
  const _$PersonsImpl(
      {final Map<String, Person> cache = const <String, Person>{}})
      : _cache = cache;

  factory _$PersonsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PersonsImplFromJson(json);

  final Map<String, Person> _cache;
  @override
  @JsonKey()
  Map<String, Person> get cache {
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
  bool operator ==(Object other) {
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
  const factory _Persons({final Map<String, Person> cache}) = _$PersonsImpl;

  factory _Persons.fromJson(Map<String, dynamic> json) = _$PersonsImpl.fromJson;

  @override
  Map<String, Person> get cache;
  @override
  @JsonKey(ignore: true)
  _$$PersonsImplCopyWith<_$PersonsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Transaction _$TransactionFromJson(Map<String, dynamic> json) {
  return _Transaction.fromJson(json);
}

/// @nodoc
mixin _$Transaction {
  String get transactionID => throw _privateConstructorUsedError;
  String get personID => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  String get notes => throw _privateConstructorUsedError;
  bool get editing => throw _privateConstructorUsedError;
  DateTime get created => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String transactionID, String personID, int amount,
            String notes, bool editing, DateTime created)
        raw,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String transactionID, String personID, int amount,
            String notes, bool editing, DateTime created)?
        raw,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String transactionID, String personID, int amount,
            String notes, bool editing, DateTime created)?
        raw,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Transaction value) raw,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Transaction value)? raw,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Transaction value)? raw,
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
      {String transactionID,
      String personID,
      int amount,
      String notes,
      bool editing,
      DateTime created});
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
    Object? created = null,
  }) {
    return _then(_value.copyWith(
      transactionID: null == transactionID
          ? _value.transactionID
          : transactionID // ignore: cast_nullable_to_non_nullable
              as String,
      personID: null == personID
          ? _value.personID
          : personID // ignore: cast_nullable_to_non_nullable
              as String,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransactionImplCopyWith<$Res>
    implements $TransactionCopyWith<$Res> {
  factory _$$TransactionImplCopyWith(
          _$TransactionImpl value, $Res Function(_$TransactionImpl) then) =
      __$$TransactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String transactionID,
      String personID,
      int amount,
      String notes,
      bool editing,
      DateTime created});
}

/// @nodoc
class __$$TransactionImplCopyWithImpl<$Res>
    extends _$TransactionCopyWithImpl<$Res, _$TransactionImpl>
    implements _$$TransactionImplCopyWith<$Res> {
  __$$TransactionImplCopyWithImpl(
      _$TransactionImpl _value, $Res Function(_$TransactionImpl) _then)
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
    return _then(_$TransactionImpl(
      transactionID: null == transactionID
          ? _value.transactionID
          : transactionID // ignore: cast_nullable_to_non_nullable
              as String,
      personID: null == personID
          ? _value.personID
          : personID // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$TransactionImpl extends _Transaction with DiagnosticableTreeMixin {
  const _$TransactionImpl(
      {this.transactionID = '',
      this.personID = '',
      this.amount = 0,
      this.notes = 'VALID',
      this.editing = false,
      required this.created})
      : super._();

  factory _$TransactionImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionImplFromJson(json);

  @override
  @JsonKey()
  final String transactionID;
  @override
  @JsonKey()
  final String personID;
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

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Transaction.raw(transactionID: $transactionID, personID: $personID, amount: $amount, notes: $notes, editing: $editing, created: $created)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Transaction.raw'))
      ..add(DiagnosticsProperty('transactionID', transactionID))
      ..add(DiagnosticsProperty('personID', personID))
      ..add(DiagnosticsProperty('amount', amount))
      ..add(DiagnosticsProperty('notes', notes))
      ..add(DiagnosticsProperty('editing', editing))
      ..add(DiagnosticsProperty('created', created));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionImpl &&
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
  _$$TransactionImplCopyWith<_$TransactionImpl> get copyWith =>
      __$$TransactionImplCopyWithImpl<_$TransactionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String transactionID, String personID, int amount,
            String notes, bool editing, DateTime created)
        raw,
  }) {
    return raw(transactionID, personID, amount, notes, editing, created);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String transactionID, String personID, int amount,
            String notes, bool editing, DateTime created)?
        raw,
  }) {
    return raw?.call(transactionID, personID, amount, notes, editing, created);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String transactionID, String personID, int amount,
            String notes, bool editing, DateTime created)?
        raw,
    required TResult orElse(),
  }) {
    if (raw != null) {
      return raw(transactionID, personID, amount, notes, editing, created);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Transaction value) raw,
  }) {
    return raw(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Transaction value)? raw,
  }) {
    return raw?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Transaction value)? raw,
    required TResult orElse(),
  }) {
    if (raw != null) {
      return raw(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionImplToJson(
      this,
    );
  }
}

abstract class _Transaction extends Transaction {
  const factory _Transaction(
      {final String transactionID,
      final String personID,
      final int amount,
      final String notes,
      final bool editing,
      required final DateTime created}) = _$TransactionImpl;
  const _Transaction._() : super._();

  factory _Transaction.fromJson(Map<String, dynamic> json) =
      _$TransactionImpl.fromJson;

  @override
  String get transactionID;
  @override
  String get personID;
  @override
  int get amount;
  @override
  String get notes;
  @override
  bool get editing;
  @override
  DateTime get created;
  @override
  @JsonKey(ignore: true)
  _$$TransactionImplCopyWith<_$TransactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
