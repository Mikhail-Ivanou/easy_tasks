// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'task_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TaskListEventTearOff {
  const _$TaskListEventTearOff();

// ignore: unused_element
  _GetFavorite getFavorite() {
    return const _GetFavorite();
  }

// ignore: unused_element
  _GetAllTasks getAllTasks() {
    return const _GetAllTasks();
  }

// ignore: unused_element
  _GetTasksWithCategory getTasksWithCategory(String id) {
    return _GetTasksWithCategory(
      id,
    );
  }

// ignore: unused_element
  _GetTasksWithOtherCategory getTasksOtherCategory() {
    return const _GetTasksWithOtherCategory();
  }
}

/// @nodoc
// ignore: unused_element
const $TaskListEvent = _$TaskListEventTearOff();

/// @nodoc
mixin _$TaskListEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getFavorite(),
    @required Result getAllTasks(),
    @required Result getTasksWithCategory(String id),
    @required Result getTasksOtherCategory(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getFavorite(),
    Result getAllTasks(),
    Result getTasksWithCategory(String id),
    Result getTasksOtherCategory(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getFavorite(_GetFavorite value),
    @required Result getAllTasks(_GetAllTasks value),
    @required Result getTasksWithCategory(_GetTasksWithCategory value),
    @required Result getTasksOtherCategory(_GetTasksWithOtherCategory value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getFavorite(_GetFavorite value),
    Result getAllTasks(_GetAllTasks value),
    Result getTasksWithCategory(_GetTasksWithCategory value),
    Result getTasksOtherCategory(_GetTasksWithOtherCategory value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $TaskListEventCopyWith<$Res> {
  factory $TaskListEventCopyWith(
          TaskListEvent value, $Res Function(TaskListEvent) then) =
      _$TaskListEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TaskListEventCopyWithImpl<$Res>
    implements $TaskListEventCopyWith<$Res> {
  _$TaskListEventCopyWithImpl(this._value, this._then);

  final TaskListEvent _value;
  // ignore: unused_field
  final $Res Function(TaskListEvent) _then;
}

/// @nodoc
abstract class _$GetFavoriteCopyWith<$Res> {
  factory _$GetFavoriteCopyWith(
          _GetFavorite value, $Res Function(_GetFavorite) then) =
      __$GetFavoriteCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetFavoriteCopyWithImpl<$Res> extends _$TaskListEventCopyWithImpl<$Res>
    implements _$GetFavoriteCopyWith<$Res> {
  __$GetFavoriteCopyWithImpl(
      _GetFavorite _value, $Res Function(_GetFavorite) _then)
      : super(_value, (v) => _then(v as _GetFavorite));

  @override
  _GetFavorite get _value => super._value as _GetFavorite;
}

/// @nodoc
class _$_GetFavorite implements _GetFavorite {
  const _$_GetFavorite();

  @override
  String toString() {
    return 'TaskListEvent.getFavorite()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetFavorite);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getFavorite(),
    @required Result getAllTasks(),
    @required Result getTasksWithCategory(String id),
    @required Result getTasksOtherCategory(),
  }) {
    assert(getFavorite != null);
    assert(getAllTasks != null);
    assert(getTasksWithCategory != null);
    assert(getTasksOtherCategory != null);
    return getFavorite();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getFavorite(),
    Result getAllTasks(),
    Result getTasksWithCategory(String id),
    Result getTasksOtherCategory(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getFavorite != null) {
      return getFavorite();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getFavorite(_GetFavorite value),
    @required Result getAllTasks(_GetAllTasks value),
    @required Result getTasksWithCategory(_GetTasksWithCategory value),
    @required Result getTasksOtherCategory(_GetTasksWithOtherCategory value),
  }) {
    assert(getFavorite != null);
    assert(getAllTasks != null);
    assert(getTasksWithCategory != null);
    assert(getTasksOtherCategory != null);
    return getFavorite(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getFavorite(_GetFavorite value),
    Result getAllTasks(_GetAllTasks value),
    Result getTasksWithCategory(_GetTasksWithCategory value),
    Result getTasksOtherCategory(_GetTasksWithOtherCategory value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getFavorite != null) {
      return getFavorite(this);
    }
    return orElse();
  }
}

abstract class _GetFavorite implements TaskListEvent {
  const factory _GetFavorite() = _$_GetFavorite;
}

/// @nodoc
abstract class _$GetAllTasksCopyWith<$Res> {
  factory _$GetAllTasksCopyWith(
          _GetAllTasks value, $Res Function(_GetAllTasks) then) =
      __$GetAllTasksCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetAllTasksCopyWithImpl<$Res> extends _$TaskListEventCopyWithImpl<$Res>
    implements _$GetAllTasksCopyWith<$Res> {
  __$GetAllTasksCopyWithImpl(
      _GetAllTasks _value, $Res Function(_GetAllTasks) _then)
      : super(_value, (v) => _then(v as _GetAllTasks));

  @override
  _GetAllTasks get _value => super._value as _GetAllTasks;
}

/// @nodoc
class _$_GetAllTasks implements _GetAllTasks {
  const _$_GetAllTasks();

  @override
  String toString() {
    return 'TaskListEvent.getAllTasks()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetAllTasks);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getFavorite(),
    @required Result getAllTasks(),
    @required Result getTasksWithCategory(String id),
    @required Result getTasksOtherCategory(),
  }) {
    assert(getFavorite != null);
    assert(getAllTasks != null);
    assert(getTasksWithCategory != null);
    assert(getTasksOtherCategory != null);
    return getAllTasks();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getFavorite(),
    Result getAllTasks(),
    Result getTasksWithCategory(String id),
    Result getTasksOtherCategory(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getAllTasks != null) {
      return getAllTasks();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getFavorite(_GetFavorite value),
    @required Result getAllTasks(_GetAllTasks value),
    @required Result getTasksWithCategory(_GetTasksWithCategory value),
    @required Result getTasksOtherCategory(_GetTasksWithOtherCategory value),
  }) {
    assert(getFavorite != null);
    assert(getAllTasks != null);
    assert(getTasksWithCategory != null);
    assert(getTasksOtherCategory != null);
    return getAllTasks(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getFavorite(_GetFavorite value),
    Result getAllTasks(_GetAllTasks value),
    Result getTasksWithCategory(_GetTasksWithCategory value),
    Result getTasksOtherCategory(_GetTasksWithOtherCategory value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getAllTasks != null) {
      return getAllTasks(this);
    }
    return orElse();
  }
}

abstract class _GetAllTasks implements TaskListEvent {
  const factory _GetAllTasks() = _$_GetAllTasks;
}

/// @nodoc
abstract class _$GetTasksWithCategoryCopyWith<$Res> {
  factory _$GetTasksWithCategoryCopyWith(_GetTasksWithCategory value,
          $Res Function(_GetTasksWithCategory) then) =
      __$GetTasksWithCategoryCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class __$GetTasksWithCategoryCopyWithImpl<$Res>
    extends _$TaskListEventCopyWithImpl<$Res>
    implements _$GetTasksWithCategoryCopyWith<$Res> {
  __$GetTasksWithCategoryCopyWithImpl(
      _GetTasksWithCategory _value, $Res Function(_GetTasksWithCategory) _then)
      : super(_value, (v) => _then(v as _GetTasksWithCategory));

  @override
  _GetTasksWithCategory get _value => super._value as _GetTasksWithCategory;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(_GetTasksWithCategory(
      id == freezed ? _value.id : id as String,
    ));
  }
}

/// @nodoc
class _$_GetTasksWithCategory implements _GetTasksWithCategory {
  const _$_GetTasksWithCategory(this.id) : assert(id != null);

  @override
  final String id;

  @override
  String toString() {
    return 'TaskListEvent.getTasksWithCategory(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetTasksWithCategory &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @override
  _$GetTasksWithCategoryCopyWith<_GetTasksWithCategory> get copyWith =>
      __$GetTasksWithCategoryCopyWithImpl<_GetTasksWithCategory>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getFavorite(),
    @required Result getAllTasks(),
    @required Result getTasksWithCategory(String id),
    @required Result getTasksOtherCategory(),
  }) {
    assert(getFavorite != null);
    assert(getAllTasks != null);
    assert(getTasksWithCategory != null);
    assert(getTasksOtherCategory != null);
    return getTasksWithCategory(id);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getFavorite(),
    Result getAllTasks(),
    Result getTasksWithCategory(String id),
    Result getTasksOtherCategory(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getTasksWithCategory != null) {
      return getTasksWithCategory(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getFavorite(_GetFavorite value),
    @required Result getAllTasks(_GetAllTasks value),
    @required Result getTasksWithCategory(_GetTasksWithCategory value),
    @required Result getTasksOtherCategory(_GetTasksWithOtherCategory value),
  }) {
    assert(getFavorite != null);
    assert(getAllTasks != null);
    assert(getTasksWithCategory != null);
    assert(getTasksOtherCategory != null);
    return getTasksWithCategory(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getFavorite(_GetFavorite value),
    Result getAllTasks(_GetAllTasks value),
    Result getTasksWithCategory(_GetTasksWithCategory value),
    Result getTasksOtherCategory(_GetTasksWithOtherCategory value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getTasksWithCategory != null) {
      return getTasksWithCategory(this);
    }
    return orElse();
  }
}

abstract class _GetTasksWithCategory implements TaskListEvent {
  const factory _GetTasksWithCategory(String id) = _$_GetTasksWithCategory;

  String get id;
  _$GetTasksWithCategoryCopyWith<_GetTasksWithCategory> get copyWith;
}

/// @nodoc
abstract class _$GetTasksWithOtherCategoryCopyWith<$Res> {
  factory _$GetTasksWithOtherCategoryCopyWith(_GetTasksWithOtherCategory value,
          $Res Function(_GetTasksWithOtherCategory) then) =
      __$GetTasksWithOtherCategoryCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetTasksWithOtherCategoryCopyWithImpl<$Res>
    extends _$TaskListEventCopyWithImpl<$Res>
    implements _$GetTasksWithOtherCategoryCopyWith<$Res> {
  __$GetTasksWithOtherCategoryCopyWithImpl(_GetTasksWithOtherCategory _value,
      $Res Function(_GetTasksWithOtherCategory) _then)
      : super(_value, (v) => _then(v as _GetTasksWithOtherCategory));

  @override
  _GetTasksWithOtherCategory get _value =>
      super._value as _GetTasksWithOtherCategory;
}

/// @nodoc
class _$_GetTasksWithOtherCategory implements _GetTasksWithOtherCategory {
  const _$_GetTasksWithOtherCategory();

  @override
  String toString() {
    return 'TaskListEvent.getTasksOtherCategory()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetTasksWithOtherCategory);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getFavorite(),
    @required Result getAllTasks(),
    @required Result getTasksWithCategory(String id),
    @required Result getTasksOtherCategory(),
  }) {
    assert(getFavorite != null);
    assert(getAllTasks != null);
    assert(getTasksWithCategory != null);
    assert(getTasksOtherCategory != null);
    return getTasksOtherCategory();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getFavorite(),
    Result getAllTasks(),
    Result getTasksWithCategory(String id),
    Result getTasksOtherCategory(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getTasksOtherCategory != null) {
      return getTasksOtherCategory();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getFavorite(_GetFavorite value),
    @required Result getAllTasks(_GetAllTasks value),
    @required Result getTasksWithCategory(_GetTasksWithCategory value),
    @required Result getTasksOtherCategory(_GetTasksWithOtherCategory value),
  }) {
    assert(getFavorite != null);
    assert(getAllTasks != null);
    assert(getTasksWithCategory != null);
    assert(getTasksOtherCategory != null);
    return getTasksOtherCategory(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getFavorite(_GetFavorite value),
    Result getAllTasks(_GetAllTasks value),
    Result getTasksWithCategory(_GetTasksWithCategory value),
    Result getTasksOtherCategory(_GetTasksWithOtherCategory value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getTasksOtherCategory != null) {
      return getTasksOtherCategory(this);
    }
    return orElse();
  }
}

abstract class _GetTasksWithOtherCategory implements TaskListEvent {
  const factory _GetTasksWithOtherCategory() = _$_GetTasksWithOtherCategory;
}

/// @nodoc
class _$TaskListStateTearOff {
  const _$TaskListStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _IsLoading isLoading() {
    return const _IsLoading();
  }

// ignore: unused_element
  _LoadSuccess loadSuccess(List<Task> tasks) {
    return _LoadSuccess(
      tasks,
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
const $TaskListState = _$TaskListStateTearOff();

/// @nodoc
mixin _$TaskListState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result isLoading(),
    @required Result loadSuccess(List<Task> tasks),
    @required Result loadFailure(FirebaseFailure failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result isLoading(),
    Result loadSuccess(List<Task> tasks),
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
abstract class $TaskListStateCopyWith<$Res> {
  factory $TaskListStateCopyWith(
          TaskListState value, $Res Function(TaskListState) then) =
      _$TaskListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TaskListStateCopyWithImpl<$Res>
    implements $TaskListStateCopyWith<$Res> {
  _$TaskListStateCopyWithImpl(this._value, this._then);

  final TaskListState _value;
  // ignore: unused_field
  final $Res Function(TaskListState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$TaskListStateCopyWithImpl<$Res>
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
    return 'TaskListState.initial()';
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
    @required Result loadSuccess(List<Task> tasks),
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
    Result loadSuccess(List<Task> tasks),
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

abstract class _Initial implements TaskListState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$IsLoadingCopyWith<$Res> {
  factory _$IsLoadingCopyWith(
          _IsLoading value, $Res Function(_IsLoading) then) =
      __$IsLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$IsLoadingCopyWithImpl<$Res> extends _$TaskListStateCopyWithImpl<$Res>
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
    return 'TaskListState.isLoading()';
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
    @required Result loadSuccess(List<Task> tasks),
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
    Result loadSuccess(List<Task> tasks),
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

abstract class _IsLoading implements TaskListState {
  const factory _IsLoading() = _$_IsLoading;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({List<Task> tasks});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res> extends _$TaskListStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object tasks = freezed,
  }) {
    return _then(_LoadSuccess(
      tasks == freezed ? _value.tasks : tasks as List<Task>,
    ));
  }
}

/// @nodoc
class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.tasks) : assert(tasks != null);

  @override
  final List<Task> tasks;

  @override
  String toString() {
    return 'TaskListState.loadSuccess(tasks: $tasks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.tasks, tasks) ||
                const DeepCollectionEquality().equals(other.tasks, tasks)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(tasks);

  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result isLoading(),
    @required Result loadSuccess(List<Task> tasks),
    @required Result loadFailure(FirebaseFailure failure),
  }) {
    assert(initial != null);
    assert(isLoading != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(tasks);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result isLoading(),
    Result loadSuccess(List<Task> tasks),
    Result loadFailure(FirebaseFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(tasks);
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

abstract class _LoadSuccess implements TaskListState {
  const factory _LoadSuccess(List<Task> tasks) = _$_LoadSuccess;

  List<Task> get tasks;
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
class __$LoadFailureCopyWithImpl<$Res> extends _$TaskListStateCopyWithImpl<$Res>
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
    return 'TaskListState.loadFailure(failure: $failure)';
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
    @required Result loadSuccess(List<Task> tasks),
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
    Result loadSuccess(List<Task> tasks),
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

abstract class _LoadFailure implements TaskListState {
  const factory _LoadFailure(FirebaseFailure failure) = _$_LoadFailure;

  FirebaseFailure get failure;
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
