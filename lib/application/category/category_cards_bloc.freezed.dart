// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'category_cards_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CategoryCardsEventTearOff {
  const _$CategoryCardsEventTearOff();

// ignore: unused_element
  _GetCategories getCategories() {
    return const _GetCategories();
  }
}

/// @nodoc
// ignore: unused_element
const $CategoryCardsEvent = _$CategoryCardsEventTearOff();

/// @nodoc
mixin _$CategoryCardsEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getCategories(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getCategories(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getCategories(_GetCategories value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getCategories(_GetCategories value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $CategoryCardsEventCopyWith<$Res> {
  factory $CategoryCardsEventCopyWith(
          CategoryCardsEvent value, $Res Function(CategoryCardsEvent) then) =
      _$CategoryCardsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CategoryCardsEventCopyWithImpl<$Res>
    implements $CategoryCardsEventCopyWith<$Res> {
  _$CategoryCardsEventCopyWithImpl(this._value, this._then);

  final CategoryCardsEvent _value;
  // ignore: unused_field
  final $Res Function(CategoryCardsEvent) _then;
}

/// @nodoc
abstract class _$GetCategoriesCopyWith<$Res> {
  factory _$GetCategoriesCopyWith(
          _GetCategories value, $Res Function(_GetCategories) then) =
      __$GetCategoriesCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetCategoriesCopyWithImpl<$Res>
    extends _$CategoryCardsEventCopyWithImpl<$Res>
    implements _$GetCategoriesCopyWith<$Res> {
  __$GetCategoriesCopyWithImpl(
      _GetCategories _value, $Res Function(_GetCategories) _then)
      : super(_value, (v) => _then(v as _GetCategories));

  @override
  _GetCategories get _value => super._value as _GetCategories;
}

/// @nodoc
class _$_GetCategories implements _GetCategories {
  const _$_GetCategories();

  @override
  String toString() {
    return 'CategoryCardsEvent.getCategories()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetCategories);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getCategories(),
  }) {
    assert(getCategories != null);
    return getCategories();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getCategories(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getCategories != null) {
      return getCategories();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getCategories(_GetCategories value),
  }) {
    assert(getCategories != null);
    return getCategories(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getCategories(_GetCategories value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getCategories != null) {
      return getCategories(this);
    }
    return orElse();
  }
}

abstract class _GetCategories implements CategoryCardsEvent {
  const factory _GetCategories() = _$_GetCategories;
}

/// @nodoc
class _$CategoryCardsStateTearOff {
  const _$CategoryCardsStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _IsLoading isLoading() {
    return const _IsLoading();
  }

// ignore: unused_element
  _LoadSuccess loadSuccess(List<TaskCategory> categories) {
    return _LoadSuccess(
      categories,
    );
  }

// ignore: unused_element
  _LoadFailure loadFailure(FirebaseFailure failure) {
    return _LoadFailure(
      failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CategoryCardsState = _$CategoryCardsStateTearOff();

/// @nodoc
mixin _$CategoryCardsState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result isLoading(),
    @required Result loadSuccess(List<TaskCategory> categories),
    @required Result loadFailure(FirebaseFailure failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result isLoading(),
    Result loadSuccess(List<TaskCategory> categories),
    Result loadFailure(FirebaseFailure failure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result isLoading(_IsLoading value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result isLoading(_IsLoading value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $CategoryCardsStateCopyWith<$Res> {
  factory $CategoryCardsStateCopyWith(
          CategoryCardsState value, $Res Function(CategoryCardsState) then) =
      _$CategoryCardsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CategoryCardsStateCopyWithImpl<$Res>
    implements $CategoryCardsStateCopyWith<$Res> {
  _$CategoryCardsStateCopyWithImpl(this._value, this._then);

  final CategoryCardsState _value;
  // ignore: unused_field
  final $Res Function(CategoryCardsState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$CategoryCardsStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'CategoryCardsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result isLoading(),
    @required Result loadSuccess(List<TaskCategory> categories),
    @required Result loadFailure(FirebaseFailure failure),
  }) {
    assert(initial != null);
    assert(isLoading != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result isLoading(),
    Result loadSuccess(List<TaskCategory> categories),
    Result loadFailure(FirebaseFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result isLoading(_IsLoading value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(isLoading != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result isLoading(_IsLoading value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CategoryCardsState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$IsLoadingCopyWith<$Res> {
  factory _$IsLoadingCopyWith(
          _IsLoading value, $Res Function(_IsLoading) then) =
      __$IsLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$IsLoadingCopyWithImpl<$Res>
    extends _$CategoryCardsStateCopyWithImpl<$Res>
    implements _$IsLoadingCopyWith<$Res> {
  __$IsLoadingCopyWithImpl(_IsLoading _value, $Res Function(_IsLoading) _then)
      : super(_value, (v) => _then(v as _IsLoading));

  @override
  _IsLoading get _value => super._value as _IsLoading;
}

/// @nodoc
class _$_IsLoading implements _IsLoading {
  const _$_IsLoading();

  @override
  String toString() {
    return 'CategoryCardsState.isLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _IsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result isLoading(),
    @required Result loadSuccess(List<TaskCategory> categories),
    @required Result loadFailure(FirebaseFailure failure),
  }) {
    assert(initial != null);
    assert(isLoading != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return isLoading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result isLoading(),
    Result loadSuccess(List<TaskCategory> categories),
    Result loadFailure(FirebaseFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (isLoading != null) {
      return isLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result isLoading(_IsLoading value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(isLoading != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return isLoading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result isLoading(_IsLoading value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (isLoading != null) {
      return isLoading(this);
    }
    return orElse();
  }
}

abstract class _IsLoading implements CategoryCardsState {
  const factory _IsLoading() = _$_IsLoading;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({List<TaskCategory> categories});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$CategoryCardsStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object categories = freezed,
  }) {
    return _then(_LoadSuccess(
      categories == freezed
          ? _value.categories
          : categories as List<TaskCategory>,
    ));
  }
}

/// @nodoc
class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.categories) : assert(categories != null);

  @override
  final List<TaskCategory> categories;

  @override
  String toString() {
    return 'CategoryCardsState.loadSuccess(categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(categories);

  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result isLoading(),
    @required Result loadSuccess(List<TaskCategory> categories),
    @required Result loadFailure(FirebaseFailure failure),
  }) {
    assert(initial != null);
    assert(isLoading != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(categories);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result isLoading(),
    Result loadSuccess(List<TaskCategory> categories),
    Result loadFailure(FirebaseFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(categories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result isLoading(_IsLoading value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(isLoading != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result isLoading(_IsLoading value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements CategoryCardsState {
  const factory _LoadSuccess(List<TaskCategory> categories) = _$_LoadSuccess;

  List<TaskCategory> get categories;
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({FirebaseFailure failure});

  $FirebaseFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$CategoryCardsStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_LoadFailure(
      failure == freezed ? _value.failure : failure as FirebaseFailure,
    ));
  }

  @override
  $FirebaseFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $FirebaseFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.failure) : assert(failure != null);

  @override
  final FirebaseFailure failure;

  @override
  String toString() {
    return 'CategoryCardsState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result isLoading(),
    @required Result loadSuccess(List<TaskCategory> categories),
    @required Result loadFailure(FirebaseFailure failure),
  }) {
    assert(initial != null);
    assert(isLoading != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result isLoading(),
    Result loadSuccess(List<TaskCategory> categories),
    Result loadFailure(FirebaseFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result isLoading(_IsLoading value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(isLoading != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result isLoading(_IsLoading value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements CategoryCardsState {
  const factory _LoadFailure(FirebaseFailure failure) = _$_LoadFailure;

  FirebaseFailure get failure;
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
