// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'task_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TaskDetailEventTearOff {
  const _$TaskDetailEventTearOff();

// ignore: unused_element
  _Initialized initialized({Task initialTask, TaskCategory category}) {
    return _Initialized(
      initialTask: initialTask,
      category: category,
    );
  }

// ignore: unused_element
  _TitleChanged titleChanged(String titleStr) {
    return _TitleChanged(
      titleStr,
    );
  }

// ignore: unused_element
  _CompletedChanged completedChanged() {
    return const _CompletedChanged();
  }

// ignore: unused_element
  _FavChanged favChanged() {
    return const _FavChanged();
  }

// ignore: unused_element
  _CategoryChanged categoryChanged({TaskCategory category}) {
    return _CategoryChanged(
      category: category,
    );
  }

// ignore: unused_element
  _TagsChanged tagsChanged(List<String> tags) {
    return _TagsChanged(
      tags,
    );
  }

// ignore: unused_element
  _DueDateChanged dueDateChanged({DateTime dueDate}) {
    return _DueDateChanged(
      dueDate: dueDate,
    );
  }

// ignore: unused_element
  _PriorityChanged priorityChanged(TaskPriority priority) {
    return _PriorityChanged(
      priority,
    );
  }

// ignore: unused_element
  _NotesChanged notesChanged(String note) {
    return _NotesChanged(
      note,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TaskDetailEvent = _$TaskDetailEventTearOff();

/// @nodoc
mixin _$TaskDetailEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Task initialTask, TaskCategory category),
    @required Result titleChanged(String titleStr),
    @required Result completedChanged(),
    @required Result favChanged(),
    @required Result categoryChanged(TaskCategory category),
    @required Result tagsChanged(List<String> tags),
    @required Result dueDateChanged(DateTime dueDate),
    @required Result priorityChanged(TaskPriority priority),
    @required Result notesChanged(String note),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Task initialTask, TaskCategory category),
    Result titleChanged(String titleStr),
    Result completedChanged(),
    Result favChanged(),
    Result categoryChanged(TaskCategory category),
    Result tagsChanged(List<String> tags),
    Result dueDateChanged(DateTime dueDate),
    Result priorityChanged(TaskPriority priority),
    Result notesChanged(String note),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result titleChanged(_TitleChanged value),
    @required Result completedChanged(_CompletedChanged value),
    @required Result favChanged(_FavChanged value),
    @required Result categoryChanged(_CategoryChanged value),
    @required Result tagsChanged(_TagsChanged value),
    @required Result dueDateChanged(_DueDateChanged value),
    @required Result priorityChanged(_PriorityChanged value),
    @required Result notesChanged(_NotesChanged value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result titleChanged(_TitleChanged value),
    Result completedChanged(_CompletedChanged value),
    Result favChanged(_FavChanged value),
    Result categoryChanged(_CategoryChanged value),
    Result tagsChanged(_TagsChanged value),
    Result dueDateChanged(_DueDateChanged value),
    Result priorityChanged(_PriorityChanged value),
    Result notesChanged(_NotesChanged value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $TaskDetailEventCopyWith<$Res> {
  factory $TaskDetailEventCopyWith(
          TaskDetailEvent value, $Res Function(TaskDetailEvent) then) =
      _$TaskDetailEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TaskDetailEventCopyWithImpl<$Res>
    implements $TaskDetailEventCopyWith<$Res> {
  _$TaskDetailEventCopyWithImpl(this._value, this._then);

  final TaskDetailEvent _value;
  // ignore: unused_field
  final $Res Function(TaskDetailEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Task initialTask, TaskCategory category});

  $TaskCopyWith<$Res> get initialTask;
  $TaskCategoryCopyWith<$Res> get category;
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$TaskDetailEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object initialTask = freezed,
    Object category = freezed,
  }) {
    return _then(_Initialized(
      initialTask:
          initialTask == freezed ? _value.initialTask : initialTask as Task,
      category:
          category == freezed ? _value.category : category as TaskCategory,
    ));
  }

  @override
  $TaskCopyWith<$Res> get initialTask {
    if (_value.initialTask == null) {
      return null;
    }
    return $TaskCopyWith<$Res>(_value.initialTask, (value) {
      return _then(_value.copyWith(initialTask: value));
    });
  }

  @override
  $TaskCategoryCopyWith<$Res> get category {
    if (_value.category == null) {
      return null;
    }
    return $TaskCategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value));
    });
  }
}

/// @nodoc
class _$_Initialized implements _Initialized {
  const _$_Initialized({this.initialTask, this.category});

  @override
  final Task initialTask;
  @override
  final TaskCategory category;

  @override
  String toString() {
    return 'TaskDetailEvent.initialized(initialTask: $initialTask, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.initialTask, initialTask) ||
                const DeepCollectionEquality()
                    .equals(other.initialTask, initialTask)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(initialTask) ^
      const DeepCollectionEquality().hash(category);

  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Task initialTask, TaskCategory category),
    @required Result titleChanged(String titleStr),
    @required Result completedChanged(),
    @required Result favChanged(),
    @required Result categoryChanged(TaskCategory category),
    @required Result tagsChanged(List<String> tags),
    @required Result dueDateChanged(DateTime dueDate),
    @required Result priorityChanged(TaskPriority priority),
    @required Result notesChanged(String note),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(completedChanged != null);
    assert(favChanged != null);
    assert(categoryChanged != null);
    assert(tagsChanged != null);
    assert(dueDateChanged != null);
    assert(priorityChanged != null);
    assert(notesChanged != null);
    return initialized(initialTask, category);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Task initialTask, TaskCategory category),
    Result titleChanged(String titleStr),
    Result completedChanged(),
    Result favChanged(),
    Result categoryChanged(TaskCategory category),
    Result tagsChanged(List<String> tags),
    Result dueDateChanged(DateTime dueDate),
    Result priorityChanged(TaskPriority priority),
    Result notesChanged(String note),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(initialTask, category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result titleChanged(_TitleChanged value),
    @required Result completedChanged(_CompletedChanged value),
    @required Result favChanged(_FavChanged value),
    @required Result categoryChanged(_CategoryChanged value),
    @required Result tagsChanged(_TagsChanged value),
    @required Result dueDateChanged(_DueDateChanged value),
    @required Result priorityChanged(_PriorityChanged value),
    @required Result notesChanged(_NotesChanged value),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(completedChanged != null);
    assert(favChanged != null);
    assert(categoryChanged != null);
    assert(tagsChanged != null);
    assert(dueDateChanged != null);
    assert(priorityChanged != null);
    assert(notesChanged != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result titleChanged(_TitleChanged value),
    Result completedChanged(_CompletedChanged value),
    Result favChanged(_FavChanged value),
    Result categoryChanged(_CategoryChanged value),
    Result tagsChanged(_TagsChanged value),
    Result dueDateChanged(_DueDateChanged value),
    Result priorityChanged(_PriorityChanged value),
    Result notesChanged(_NotesChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements TaskDetailEvent {
  const factory _Initialized({Task initialTask, TaskCategory category}) =
      _$_Initialized;

  Task get initialTask;
  TaskCategory get category;
  _$InitializedCopyWith<_Initialized> get copyWith;
}

/// @nodoc
abstract class _$TitleChangedCopyWith<$Res> {
  factory _$TitleChangedCopyWith(
          _TitleChanged value, $Res Function(_TitleChanged) then) =
      __$TitleChangedCopyWithImpl<$Res>;
  $Res call({String titleStr});
}

/// @nodoc
class __$TitleChangedCopyWithImpl<$Res>
    extends _$TaskDetailEventCopyWithImpl<$Res>
    implements _$TitleChangedCopyWith<$Res> {
  __$TitleChangedCopyWithImpl(
      _TitleChanged _value, $Res Function(_TitleChanged) _then)
      : super(_value, (v) => _then(v as _TitleChanged));

  @override
  _TitleChanged get _value => super._value as _TitleChanged;

  @override
  $Res call({
    Object titleStr = freezed,
  }) {
    return _then(_TitleChanged(
      titleStr == freezed ? _value.titleStr : titleStr as String,
    ));
  }
}

/// @nodoc
class _$_TitleChanged implements _TitleChanged {
  const _$_TitleChanged(this.titleStr) : assert(titleStr != null);

  @override
  final String titleStr;

  @override
  String toString() {
    return 'TaskDetailEvent.titleChanged(titleStr: $titleStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TitleChanged &&
            (identical(other.titleStr, titleStr) ||
                const DeepCollectionEquality()
                    .equals(other.titleStr, titleStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(titleStr);

  @override
  _$TitleChangedCopyWith<_TitleChanged> get copyWith =>
      __$TitleChangedCopyWithImpl<_TitleChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Task initialTask, TaskCategory category),
    @required Result titleChanged(String titleStr),
    @required Result completedChanged(),
    @required Result favChanged(),
    @required Result categoryChanged(TaskCategory category),
    @required Result tagsChanged(List<String> tags),
    @required Result dueDateChanged(DateTime dueDate),
    @required Result priorityChanged(TaskPriority priority),
    @required Result notesChanged(String note),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(completedChanged != null);
    assert(favChanged != null);
    assert(categoryChanged != null);
    assert(tagsChanged != null);
    assert(dueDateChanged != null);
    assert(priorityChanged != null);
    assert(notesChanged != null);
    return titleChanged(titleStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Task initialTask, TaskCategory category),
    Result titleChanged(String titleStr),
    Result completedChanged(),
    Result favChanged(),
    Result categoryChanged(TaskCategory category),
    Result tagsChanged(List<String> tags),
    Result dueDateChanged(DateTime dueDate),
    Result priorityChanged(TaskPriority priority),
    Result notesChanged(String note),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (titleChanged != null) {
      return titleChanged(titleStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result titleChanged(_TitleChanged value),
    @required Result completedChanged(_CompletedChanged value),
    @required Result favChanged(_FavChanged value),
    @required Result categoryChanged(_CategoryChanged value),
    @required Result tagsChanged(_TagsChanged value),
    @required Result dueDateChanged(_DueDateChanged value),
    @required Result priorityChanged(_PriorityChanged value),
    @required Result notesChanged(_NotesChanged value),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(completedChanged != null);
    assert(favChanged != null);
    assert(categoryChanged != null);
    assert(tagsChanged != null);
    assert(dueDateChanged != null);
    assert(priorityChanged != null);
    assert(notesChanged != null);
    return titleChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result titleChanged(_TitleChanged value),
    Result completedChanged(_CompletedChanged value),
    Result favChanged(_FavChanged value),
    Result categoryChanged(_CategoryChanged value),
    Result tagsChanged(_TagsChanged value),
    Result dueDateChanged(_DueDateChanged value),
    Result priorityChanged(_PriorityChanged value),
    Result notesChanged(_NotesChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (titleChanged != null) {
      return titleChanged(this);
    }
    return orElse();
  }
}

abstract class _TitleChanged implements TaskDetailEvent {
  const factory _TitleChanged(String titleStr) = _$_TitleChanged;

  String get titleStr;
  _$TitleChangedCopyWith<_TitleChanged> get copyWith;
}

/// @nodoc
abstract class _$CompletedChangedCopyWith<$Res> {
  factory _$CompletedChangedCopyWith(
          _CompletedChanged value, $Res Function(_CompletedChanged) then) =
      __$CompletedChangedCopyWithImpl<$Res>;
}

/// @nodoc
class __$CompletedChangedCopyWithImpl<$Res>
    extends _$TaskDetailEventCopyWithImpl<$Res>
    implements _$CompletedChangedCopyWith<$Res> {
  __$CompletedChangedCopyWithImpl(
      _CompletedChanged _value, $Res Function(_CompletedChanged) _then)
      : super(_value, (v) => _then(v as _CompletedChanged));

  @override
  _CompletedChanged get _value => super._value as _CompletedChanged;
}

/// @nodoc
class _$_CompletedChanged implements _CompletedChanged {
  const _$_CompletedChanged();

  @override
  String toString() {
    return 'TaskDetailEvent.completedChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CompletedChanged);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Task initialTask, TaskCategory category),
    @required Result titleChanged(String titleStr),
    @required Result completedChanged(),
    @required Result favChanged(),
    @required Result categoryChanged(TaskCategory category),
    @required Result tagsChanged(List<String> tags),
    @required Result dueDateChanged(DateTime dueDate),
    @required Result priorityChanged(TaskPriority priority),
    @required Result notesChanged(String note),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(completedChanged != null);
    assert(favChanged != null);
    assert(categoryChanged != null);
    assert(tagsChanged != null);
    assert(dueDateChanged != null);
    assert(priorityChanged != null);
    assert(notesChanged != null);
    return completedChanged();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Task initialTask, TaskCategory category),
    Result titleChanged(String titleStr),
    Result completedChanged(),
    Result favChanged(),
    Result categoryChanged(TaskCategory category),
    Result tagsChanged(List<String> tags),
    Result dueDateChanged(DateTime dueDate),
    Result priorityChanged(TaskPriority priority),
    Result notesChanged(String note),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (completedChanged != null) {
      return completedChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result titleChanged(_TitleChanged value),
    @required Result completedChanged(_CompletedChanged value),
    @required Result favChanged(_FavChanged value),
    @required Result categoryChanged(_CategoryChanged value),
    @required Result tagsChanged(_TagsChanged value),
    @required Result dueDateChanged(_DueDateChanged value),
    @required Result priorityChanged(_PriorityChanged value),
    @required Result notesChanged(_NotesChanged value),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(completedChanged != null);
    assert(favChanged != null);
    assert(categoryChanged != null);
    assert(tagsChanged != null);
    assert(dueDateChanged != null);
    assert(priorityChanged != null);
    assert(notesChanged != null);
    return completedChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result titleChanged(_TitleChanged value),
    Result completedChanged(_CompletedChanged value),
    Result favChanged(_FavChanged value),
    Result categoryChanged(_CategoryChanged value),
    Result tagsChanged(_TagsChanged value),
    Result dueDateChanged(_DueDateChanged value),
    Result priorityChanged(_PriorityChanged value),
    Result notesChanged(_NotesChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (completedChanged != null) {
      return completedChanged(this);
    }
    return orElse();
  }
}

abstract class _CompletedChanged implements TaskDetailEvent {
  const factory _CompletedChanged() = _$_CompletedChanged;
}

/// @nodoc
abstract class _$FavChangedCopyWith<$Res> {
  factory _$FavChangedCopyWith(
          _FavChanged value, $Res Function(_FavChanged) then) =
      __$FavChangedCopyWithImpl<$Res>;
}

/// @nodoc
class __$FavChangedCopyWithImpl<$Res>
    extends _$TaskDetailEventCopyWithImpl<$Res>
    implements _$FavChangedCopyWith<$Res> {
  __$FavChangedCopyWithImpl(
      _FavChanged _value, $Res Function(_FavChanged) _then)
      : super(_value, (v) => _then(v as _FavChanged));

  @override
  _FavChanged get _value => super._value as _FavChanged;
}

/// @nodoc
class _$_FavChanged implements _FavChanged {
  const _$_FavChanged();

  @override
  String toString() {
    return 'TaskDetailEvent.favChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FavChanged);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Task initialTask, TaskCategory category),
    @required Result titleChanged(String titleStr),
    @required Result completedChanged(),
    @required Result favChanged(),
    @required Result categoryChanged(TaskCategory category),
    @required Result tagsChanged(List<String> tags),
    @required Result dueDateChanged(DateTime dueDate),
    @required Result priorityChanged(TaskPriority priority),
    @required Result notesChanged(String note),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(completedChanged != null);
    assert(favChanged != null);
    assert(categoryChanged != null);
    assert(tagsChanged != null);
    assert(dueDateChanged != null);
    assert(priorityChanged != null);
    assert(notesChanged != null);
    return favChanged();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Task initialTask, TaskCategory category),
    Result titleChanged(String titleStr),
    Result completedChanged(),
    Result favChanged(),
    Result categoryChanged(TaskCategory category),
    Result tagsChanged(List<String> tags),
    Result dueDateChanged(DateTime dueDate),
    Result priorityChanged(TaskPriority priority),
    Result notesChanged(String note),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (favChanged != null) {
      return favChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result titleChanged(_TitleChanged value),
    @required Result completedChanged(_CompletedChanged value),
    @required Result favChanged(_FavChanged value),
    @required Result categoryChanged(_CategoryChanged value),
    @required Result tagsChanged(_TagsChanged value),
    @required Result dueDateChanged(_DueDateChanged value),
    @required Result priorityChanged(_PriorityChanged value),
    @required Result notesChanged(_NotesChanged value),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(completedChanged != null);
    assert(favChanged != null);
    assert(categoryChanged != null);
    assert(tagsChanged != null);
    assert(dueDateChanged != null);
    assert(priorityChanged != null);
    assert(notesChanged != null);
    return favChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result titleChanged(_TitleChanged value),
    Result completedChanged(_CompletedChanged value),
    Result favChanged(_FavChanged value),
    Result categoryChanged(_CategoryChanged value),
    Result tagsChanged(_TagsChanged value),
    Result dueDateChanged(_DueDateChanged value),
    Result priorityChanged(_PriorityChanged value),
    Result notesChanged(_NotesChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (favChanged != null) {
      return favChanged(this);
    }
    return orElse();
  }
}

abstract class _FavChanged implements TaskDetailEvent {
  const factory _FavChanged() = _$_FavChanged;
}

/// @nodoc
abstract class _$CategoryChangedCopyWith<$Res> {
  factory _$CategoryChangedCopyWith(
          _CategoryChanged value, $Res Function(_CategoryChanged) then) =
      __$CategoryChangedCopyWithImpl<$Res>;
  $Res call({TaskCategory category});

  $TaskCategoryCopyWith<$Res> get category;
}

/// @nodoc
class __$CategoryChangedCopyWithImpl<$Res>
    extends _$TaskDetailEventCopyWithImpl<$Res>
    implements _$CategoryChangedCopyWith<$Res> {
  __$CategoryChangedCopyWithImpl(
      _CategoryChanged _value, $Res Function(_CategoryChanged) _then)
      : super(_value, (v) => _then(v as _CategoryChanged));

  @override
  _CategoryChanged get _value => super._value as _CategoryChanged;

  @override
  $Res call({
    Object category = freezed,
  }) {
    return _then(_CategoryChanged(
      category:
          category == freezed ? _value.category : category as TaskCategory,
    ));
  }

  @override
  $TaskCategoryCopyWith<$Res> get category {
    if (_value.category == null) {
      return null;
    }
    return $TaskCategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value));
    });
  }
}

/// @nodoc
class _$_CategoryChanged implements _CategoryChanged {
  const _$_CategoryChanged({this.category});

  @override
  final TaskCategory category;

  @override
  String toString() {
    return 'TaskDetailEvent.categoryChanged(category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CategoryChanged &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(category);

  @override
  _$CategoryChangedCopyWith<_CategoryChanged> get copyWith =>
      __$CategoryChangedCopyWithImpl<_CategoryChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Task initialTask, TaskCategory category),
    @required Result titleChanged(String titleStr),
    @required Result completedChanged(),
    @required Result favChanged(),
    @required Result categoryChanged(TaskCategory category),
    @required Result tagsChanged(List<String> tags),
    @required Result dueDateChanged(DateTime dueDate),
    @required Result priorityChanged(TaskPriority priority),
    @required Result notesChanged(String note),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(completedChanged != null);
    assert(favChanged != null);
    assert(categoryChanged != null);
    assert(tagsChanged != null);
    assert(dueDateChanged != null);
    assert(priorityChanged != null);
    assert(notesChanged != null);
    return categoryChanged(category);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Task initialTask, TaskCategory category),
    Result titleChanged(String titleStr),
    Result completedChanged(),
    Result favChanged(),
    Result categoryChanged(TaskCategory category),
    Result tagsChanged(List<String> tags),
    Result dueDateChanged(DateTime dueDate),
    Result priorityChanged(TaskPriority priority),
    Result notesChanged(String note),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (categoryChanged != null) {
      return categoryChanged(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result titleChanged(_TitleChanged value),
    @required Result completedChanged(_CompletedChanged value),
    @required Result favChanged(_FavChanged value),
    @required Result categoryChanged(_CategoryChanged value),
    @required Result tagsChanged(_TagsChanged value),
    @required Result dueDateChanged(_DueDateChanged value),
    @required Result priorityChanged(_PriorityChanged value),
    @required Result notesChanged(_NotesChanged value),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(completedChanged != null);
    assert(favChanged != null);
    assert(categoryChanged != null);
    assert(tagsChanged != null);
    assert(dueDateChanged != null);
    assert(priorityChanged != null);
    assert(notesChanged != null);
    return categoryChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result titleChanged(_TitleChanged value),
    Result completedChanged(_CompletedChanged value),
    Result favChanged(_FavChanged value),
    Result categoryChanged(_CategoryChanged value),
    Result tagsChanged(_TagsChanged value),
    Result dueDateChanged(_DueDateChanged value),
    Result priorityChanged(_PriorityChanged value),
    Result notesChanged(_NotesChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (categoryChanged != null) {
      return categoryChanged(this);
    }
    return orElse();
  }
}

abstract class _CategoryChanged implements TaskDetailEvent {
  const factory _CategoryChanged({TaskCategory category}) = _$_CategoryChanged;

  TaskCategory get category;
  _$CategoryChangedCopyWith<_CategoryChanged> get copyWith;
}

/// @nodoc
abstract class _$TagsChangedCopyWith<$Res> {
  factory _$TagsChangedCopyWith(
          _TagsChanged value, $Res Function(_TagsChanged) then) =
      __$TagsChangedCopyWithImpl<$Res>;
  $Res call({List<String> tags});
}

/// @nodoc
class __$TagsChangedCopyWithImpl<$Res>
    extends _$TaskDetailEventCopyWithImpl<$Res>
    implements _$TagsChangedCopyWith<$Res> {
  __$TagsChangedCopyWithImpl(
      _TagsChanged _value, $Res Function(_TagsChanged) _then)
      : super(_value, (v) => _then(v as _TagsChanged));

  @override
  _TagsChanged get _value => super._value as _TagsChanged;

  @override
  $Res call({
    Object tags = freezed,
  }) {
    return _then(_TagsChanged(
      tags == freezed ? _value.tags : tags as List<String>,
    ));
  }
}

/// @nodoc
class _$_TagsChanged implements _TagsChanged {
  const _$_TagsChanged(this.tags) : assert(tags != null);

  @override
  final List<String> tags;

  @override
  String toString() {
    return 'TaskDetailEvent.tagsChanged(tags: $tags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TagsChanged &&
            (identical(other.tags, tags) ||
                const DeepCollectionEquality().equals(other.tags, tags)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(tags);

  @override
  _$TagsChangedCopyWith<_TagsChanged> get copyWith =>
      __$TagsChangedCopyWithImpl<_TagsChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Task initialTask, TaskCategory category),
    @required Result titleChanged(String titleStr),
    @required Result completedChanged(),
    @required Result favChanged(),
    @required Result categoryChanged(TaskCategory category),
    @required Result tagsChanged(List<String> tags),
    @required Result dueDateChanged(DateTime dueDate),
    @required Result priorityChanged(TaskPriority priority),
    @required Result notesChanged(String note),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(completedChanged != null);
    assert(favChanged != null);
    assert(categoryChanged != null);
    assert(tagsChanged != null);
    assert(dueDateChanged != null);
    assert(priorityChanged != null);
    assert(notesChanged != null);
    return tagsChanged(tags);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Task initialTask, TaskCategory category),
    Result titleChanged(String titleStr),
    Result completedChanged(),
    Result favChanged(),
    Result categoryChanged(TaskCategory category),
    Result tagsChanged(List<String> tags),
    Result dueDateChanged(DateTime dueDate),
    Result priorityChanged(TaskPriority priority),
    Result notesChanged(String note),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (tagsChanged != null) {
      return tagsChanged(tags);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result titleChanged(_TitleChanged value),
    @required Result completedChanged(_CompletedChanged value),
    @required Result favChanged(_FavChanged value),
    @required Result categoryChanged(_CategoryChanged value),
    @required Result tagsChanged(_TagsChanged value),
    @required Result dueDateChanged(_DueDateChanged value),
    @required Result priorityChanged(_PriorityChanged value),
    @required Result notesChanged(_NotesChanged value),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(completedChanged != null);
    assert(favChanged != null);
    assert(categoryChanged != null);
    assert(tagsChanged != null);
    assert(dueDateChanged != null);
    assert(priorityChanged != null);
    assert(notesChanged != null);
    return tagsChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result titleChanged(_TitleChanged value),
    Result completedChanged(_CompletedChanged value),
    Result favChanged(_FavChanged value),
    Result categoryChanged(_CategoryChanged value),
    Result tagsChanged(_TagsChanged value),
    Result dueDateChanged(_DueDateChanged value),
    Result priorityChanged(_PriorityChanged value),
    Result notesChanged(_NotesChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (tagsChanged != null) {
      return tagsChanged(this);
    }
    return orElse();
  }
}

abstract class _TagsChanged implements TaskDetailEvent {
  const factory _TagsChanged(List<String> tags) = _$_TagsChanged;

  List<String> get tags;
  _$TagsChangedCopyWith<_TagsChanged> get copyWith;
}

/// @nodoc
abstract class _$DueDateChangedCopyWith<$Res> {
  factory _$DueDateChangedCopyWith(
          _DueDateChanged value, $Res Function(_DueDateChanged) then) =
      __$DueDateChangedCopyWithImpl<$Res>;
  $Res call({DateTime dueDate});
}

/// @nodoc
class __$DueDateChangedCopyWithImpl<$Res>
    extends _$TaskDetailEventCopyWithImpl<$Res>
    implements _$DueDateChangedCopyWith<$Res> {
  __$DueDateChangedCopyWithImpl(
      _DueDateChanged _value, $Res Function(_DueDateChanged) _then)
      : super(_value, (v) => _then(v as _DueDateChanged));

  @override
  _DueDateChanged get _value => super._value as _DueDateChanged;

  @override
  $Res call({
    Object dueDate = freezed,
  }) {
    return _then(_DueDateChanged(
      dueDate: dueDate == freezed ? _value.dueDate : dueDate as DateTime,
    ));
  }
}

/// @nodoc
class _$_DueDateChanged implements _DueDateChanged {
  const _$_DueDateChanged({this.dueDate});

  @override
  final DateTime dueDate;

  @override
  String toString() {
    return 'TaskDetailEvent.dueDateChanged(dueDate: $dueDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DueDateChanged &&
            (identical(other.dueDate, dueDate) ||
                const DeepCollectionEquality().equals(other.dueDate, dueDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(dueDate);

  @override
  _$DueDateChangedCopyWith<_DueDateChanged> get copyWith =>
      __$DueDateChangedCopyWithImpl<_DueDateChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Task initialTask, TaskCategory category),
    @required Result titleChanged(String titleStr),
    @required Result completedChanged(),
    @required Result favChanged(),
    @required Result categoryChanged(TaskCategory category),
    @required Result tagsChanged(List<String> tags),
    @required Result dueDateChanged(DateTime dueDate),
    @required Result priorityChanged(TaskPriority priority),
    @required Result notesChanged(String note),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(completedChanged != null);
    assert(favChanged != null);
    assert(categoryChanged != null);
    assert(tagsChanged != null);
    assert(dueDateChanged != null);
    assert(priorityChanged != null);
    assert(notesChanged != null);
    return dueDateChanged(dueDate);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Task initialTask, TaskCategory category),
    Result titleChanged(String titleStr),
    Result completedChanged(),
    Result favChanged(),
    Result categoryChanged(TaskCategory category),
    Result tagsChanged(List<String> tags),
    Result dueDateChanged(DateTime dueDate),
    Result priorityChanged(TaskPriority priority),
    Result notesChanged(String note),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (dueDateChanged != null) {
      return dueDateChanged(dueDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result titleChanged(_TitleChanged value),
    @required Result completedChanged(_CompletedChanged value),
    @required Result favChanged(_FavChanged value),
    @required Result categoryChanged(_CategoryChanged value),
    @required Result tagsChanged(_TagsChanged value),
    @required Result dueDateChanged(_DueDateChanged value),
    @required Result priorityChanged(_PriorityChanged value),
    @required Result notesChanged(_NotesChanged value),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(completedChanged != null);
    assert(favChanged != null);
    assert(categoryChanged != null);
    assert(tagsChanged != null);
    assert(dueDateChanged != null);
    assert(priorityChanged != null);
    assert(notesChanged != null);
    return dueDateChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result titleChanged(_TitleChanged value),
    Result completedChanged(_CompletedChanged value),
    Result favChanged(_FavChanged value),
    Result categoryChanged(_CategoryChanged value),
    Result tagsChanged(_TagsChanged value),
    Result dueDateChanged(_DueDateChanged value),
    Result priorityChanged(_PriorityChanged value),
    Result notesChanged(_NotesChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (dueDateChanged != null) {
      return dueDateChanged(this);
    }
    return orElse();
  }
}

abstract class _DueDateChanged implements TaskDetailEvent {
  const factory _DueDateChanged({DateTime dueDate}) = _$_DueDateChanged;

  DateTime get dueDate;
  _$DueDateChangedCopyWith<_DueDateChanged> get copyWith;
}

/// @nodoc
abstract class _$PriorityChangedCopyWith<$Res> {
  factory _$PriorityChangedCopyWith(
          _PriorityChanged value, $Res Function(_PriorityChanged) then) =
      __$PriorityChangedCopyWithImpl<$Res>;
  $Res call({TaskPriority priority});
}

/// @nodoc
class __$PriorityChangedCopyWithImpl<$Res>
    extends _$TaskDetailEventCopyWithImpl<$Res>
    implements _$PriorityChangedCopyWith<$Res> {
  __$PriorityChangedCopyWithImpl(
      _PriorityChanged _value, $Res Function(_PriorityChanged) _then)
      : super(_value, (v) => _then(v as _PriorityChanged));

  @override
  _PriorityChanged get _value => super._value as _PriorityChanged;

  @override
  $Res call({
    Object priority = freezed,
  }) {
    return _then(_PriorityChanged(
      priority == freezed ? _value.priority : priority as TaskPriority,
    ));
  }
}

/// @nodoc
class _$_PriorityChanged implements _PriorityChanged {
  const _$_PriorityChanged(this.priority) : assert(priority != null);

  @override
  final TaskPriority priority;

  @override
  String toString() {
    return 'TaskDetailEvent.priorityChanged(priority: $priority)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PriorityChanged &&
            (identical(other.priority, priority) ||
                const DeepCollectionEquality()
                    .equals(other.priority, priority)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(priority);

  @override
  _$PriorityChangedCopyWith<_PriorityChanged> get copyWith =>
      __$PriorityChangedCopyWithImpl<_PriorityChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Task initialTask, TaskCategory category),
    @required Result titleChanged(String titleStr),
    @required Result completedChanged(),
    @required Result favChanged(),
    @required Result categoryChanged(TaskCategory category),
    @required Result tagsChanged(List<String> tags),
    @required Result dueDateChanged(DateTime dueDate),
    @required Result priorityChanged(TaskPriority priority),
    @required Result notesChanged(String note),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(completedChanged != null);
    assert(favChanged != null);
    assert(categoryChanged != null);
    assert(tagsChanged != null);
    assert(dueDateChanged != null);
    assert(priorityChanged != null);
    assert(notesChanged != null);
    return priorityChanged(priority);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Task initialTask, TaskCategory category),
    Result titleChanged(String titleStr),
    Result completedChanged(),
    Result favChanged(),
    Result categoryChanged(TaskCategory category),
    Result tagsChanged(List<String> tags),
    Result dueDateChanged(DateTime dueDate),
    Result priorityChanged(TaskPriority priority),
    Result notesChanged(String note),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (priorityChanged != null) {
      return priorityChanged(priority);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result titleChanged(_TitleChanged value),
    @required Result completedChanged(_CompletedChanged value),
    @required Result favChanged(_FavChanged value),
    @required Result categoryChanged(_CategoryChanged value),
    @required Result tagsChanged(_TagsChanged value),
    @required Result dueDateChanged(_DueDateChanged value),
    @required Result priorityChanged(_PriorityChanged value),
    @required Result notesChanged(_NotesChanged value),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(completedChanged != null);
    assert(favChanged != null);
    assert(categoryChanged != null);
    assert(tagsChanged != null);
    assert(dueDateChanged != null);
    assert(priorityChanged != null);
    assert(notesChanged != null);
    return priorityChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result titleChanged(_TitleChanged value),
    Result completedChanged(_CompletedChanged value),
    Result favChanged(_FavChanged value),
    Result categoryChanged(_CategoryChanged value),
    Result tagsChanged(_TagsChanged value),
    Result dueDateChanged(_DueDateChanged value),
    Result priorityChanged(_PriorityChanged value),
    Result notesChanged(_NotesChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (priorityChanged != null) {
      return priorityChanged(this);
    }
    return orElse();
  }
}

abstract class _PriorityChanged implements TaskDetailEvent {
  const factory _PriorityChanged(TaskPriority priority) = _$_PriorityChanged;

  TaskPriority get priority;
  _$PriorityChangedCopyWith<_PriorityChanged> get copyWith;
}

/// @nodoc
abstract class _$NotesChangedCopyWith<$Res> {
  factory _$NotesChangedCopyWith(
          _NotesChanged value, $Res Function(_NotesChanged) then) =
      __$NotesChangedCopyWithImpl<$Res>;
  $Res call({String note});
}

/// @nodoc
class __$NotesChangedCopyWithImpl<$Res>
    extends _$TaskDetailEventCopyWithImpl<$Res>
    implements _$NotesChangedCopyWith<$Res> {
  __$NotesChangedCopyWithImpl(
      _NotesChanged _value, $Res Function(_NotesChanged) _then)
      : super(_value, (v) => _then(v as _NotesChanged));

  @override
  _NotesChanged get _value => super._value as _NotesChanged;

  @override
  $Res call({
    Object note = freezed,
  }) {
    return _then(_NotesChanged(
      note == freezed ? _value.note : note as String,
    ));
  }
}

/// @nodoc
class _$_NotesChanged implements _NotesChanged {
  const _$_NotesChanged(this.note) : assert(note != null);

  @override
  final String note;

  @override
  String toString() {
    return 'TaskDetailEvent.notesChanged(note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NotesChanged &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(note);

  @override
  _$NotesChangedCopyWith<_NotesChanged> get copyWith =>
      __$NotesChangedCopyWithImpl<_NotesChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Task initialTask, TaskCategory category),
    @required Result titleChanged(String titleStr),
    @required Result completedChanged(),
    @required Result favChanged(),
    @required Result categoryChanged(TaskCategory category),
    @required Result tagsChanged(List<String> tags),
    @required Result dueDateChanged(DateTime dueDate),
    @required Result priorityChanged(TaskPriority priority),
    @required Result notesChanged(String note),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(completedChanged != null);
    assert(favChanged != null);
    assert(categoryChanged != null);
    assert(tagsChanged != null);
    assert(dueDateChanged != null);
    assert(priorityChanged != null);
    assert(notesChanged != null);
    return notesChanged(note);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Task initialTask, TaskCategory category),
    Result titleChanged(String titleStr),
    Result completedChanged(),
    Result favChanged(),
    Result categoryChanged(TaskCategory category),
    Result tagsChanged(List<String> tags),
    Result dueDateChanged(DateTime dueDate),
    Result priorityChanged(TaskPriority priority),
    Result notesChanged(String note),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notesChanged != null) {
      return notesChanged(note);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result titleChanged(_TitleChanged value),
    @required Result completedChanged(_CompletedChanged value),
    @required Result favChanged(_FavChanged value),
    @required Result categoryChanged(_CategoryChanged value),
    @required Result tagsChanged(_TagsChanged value),
    @required Result dueDateChanged(_DueDateChanged value),
    @required Result priorityChanged(_PriorityChanged value),
    @required Result notesChanged(_NotesChanged value),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(completedChanged != null);
    assert(favChanged != null);
    assert(categoryChanged != null);
    assert(tagsChanged != null);
    assert(dueDateChanged != null);
    assert(priorityChanged != null);
    assert(notesChanged != null);
    return notesChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result titleChanged(_TitleChanged value),
    Result completedChanged(_CompletedChanged value),
    Result favChanged(_FavChanged value),
    Result categoryChanged(_CategoryChanged value),
    Result tagsChanged(_TagsChanged value),
    Result dueDateChanged(_DueDateChanged value),
    Result priorityChanged(_PriorityChanged value),
    Result notesChanged(_NotesChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notesChanged != null) {
      return notesChanged(this);
    }
    return orElse();
  }
}

abstract class _NotesChanged implements TaskDetailEvent {
  const factory _NotesChanged(String note) = _$_NotesChanged;

  String get note;
  _$NotesChangedCopyWith<_NotesChanged> get copyWith;
}

/// @nodoc
class _$TaskDetailStateTearOff {
  const _$TaskDetailStateTearOff();

// ignore: unused_element
  _TaskDetailState call(
      {@required Task task,
      @required bool isTitleValid,
      @required bool isSaving,
      @required bool isNew,
      @required FirebaseResponse response,
      @required bool showErrorMessages}) {
    return _TaskDetailState(
      task: task,
      isTitleValid: isTitleValid,
      isSaving: isSaving,
      isNew: isNew,
      response: response,
      showErrorMessages: showErrorMessages,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TaskDetailState = _$TaskDetailStateTearOff();

/// @nodoc
mixin _$TaskDetailState {
  Task get task;
  bool get isTitleValid;
  bool get isSaving;
  bool get isNew;
  FirebaseResponse get response;
  bool get showErrorMessages;

  $TaskDetailStateCopyWith<TaskDetailState> get copyWith;
}

/// @nodoc
abstract class $TaskDetailStateCopyWith<$Res> {
  factory $TaskDetailStateCopyWith(
          TaskDetailState value, $Res Function(TaskDetailState) then) =
      _$TaskDetailStateCopyWithImpl<$Res>;
  $Res call(
      {Task task,
      bool isTitleValid,
      bool isSaving,
      bool isNew,
      FirebaseResponse response,
      bool showErrorMessages});

  $TaskCopyWith<$Res> get task;
  $FirebaseResponseCopyWith<$Res> get response;
}

/// @nodoc
class _$TaskDetailStateCopyWithImpl<$Res>
    implements $TaskDetailStateCopyWith<$Res> {
  _$TaskDetailStateCopyWithImpl(this._value, this._then);

  final TaskDetailState _value;
  // ignore: unused_field
  final $Res Function(TaskDetailState) _then;

  @override
  $Res call({
    Object task = freezed,
    Object isTitleValid = freezed,
    Object isSaving = freezed,
    Object isNew = freezed,
    Object response = freezed,
    Object showErrorMessages = freezed,
  }) {
    return _then(_value.copyWith(
      task: task == freezed ? _value.task : task as Task,
      isTitleValid:
          isTitleValid == freezed ? _value.isTitleValid : isTitleValid as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      isNew: isNew == freezed ? _value.isNew : isNew as bool,
      response:
          response == freezed ? _value.response : response as FirebaseResponse,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
    ));
  }

  @override
  $TaskCopyWith<$Res> get task {
    if (_value.task == null) {
      return null;
    }
    return $TaskCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value));
    });
  }

  @override
  $FirebaseResponseCopyWith<$Res> get response {
    if (_value.response == null) {
      return null;
    }
    return $FirebaseResponseCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value));
    });
  }
}

/// @nodoc
abstract class _$TaskDetailStateCopyWith<$Res>
    implements $TaskDetailStateCopyWith<$Res> {
  factory _$TaskDetailStateCopyWith(
          _TaskDetailState value, $Res Function(_TaskDetailState) then) =
      __$TaskDetailStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Task task,
      bool isTitleValid,
      bool isSaving,
      bool isNew,
      FirebaseResponse response,
      bool showErrorMessages});

  @override
  $TaskCopyWith<$Res> get task;
  @override
  $FirebaseResponseCopyWith<$Res> get response;
}

/// @nodoc
class __$TaskDetailStateCopyWithImpl<$Res>
    extends _$TaskDetailStateCopyWithImpl<$Res>
    implements _$TaskDetailStateCopyWith<$Res> {
  __$TaskDetailStateCopyWithImpl(
      _TaskDetailState _value, $Res Function(_TaskDetailState) _then)
      : super(_value, (v) => _then(v as _TaskDetailState));

  @override
  _TaskDetailState get _value => super._value as _TaskDetailState;

  @override
  $Res call({
    Object task = freezed,
    Object isTitleValid = freezed,
    Object isSaving = freezed,
    Object isNew = freezed,
    Object response = freezed,
    Object showErrorMessages = freezed,
  }) {
    return _then(_TaskDetailState(
      task: task == freezed ? _value.task : task as Task,
      isTitleValid:
          isTitleValid == freezed ? _value.isTitleValid : isTitleValid as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      isNew: isNew == freezed ? _value.isNew : isNew as bool,
      response:
          response == freezed ? _value.response : response as FirebaseResponse,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
    ));
  }
}

/// @nodoc
class _$_TaskDetailState implements _TaskDetailState {
  const _$_TaskDetailState(
      {@required this.task,
      @required this.isTitleValid,
      @required this.isSaving,
      @required this.isNew,
      @required this.response,
      @required this.showErrorMessages})
      : assert(task != null),
        assert(isTitleValid != null),
        assert(isSaving != null),
        assert(isNew != null),
        assert(response != null),
        assert(showErrorMessages != null);

  @override
  final Task task;
  @override
  final bool isTitleValid;
  @override
  final bool isSaving;
  @override
  final bool isNew;
  @override
  final FirebaseResponse response;
  @override
  final bool showErrorMessages;

  @override
  String toString() {
    return 'TaskDetailState(task: $task, isTitleValid: $isTitleValid, isSaving: $isSaving, isNew: $isNew, response: $response, showErrorMessages: $showErrorMessages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TaskDetailState &&
            (identical(other.task, task) ||
                const DeepCollectionEquality().equals(other.task, task)) &&
            (identical(other.isTitleValid, isTitleValid) ||
                const DeepCollectionEquality()
                    .equals(other.isTitleValid, isTitleValid)) &&
            (identical(other.isSaving, isSaving) ||
                const DeepCollectionEquality()
                    .equals(other.isSaving, isSaving)) &&
            (identical(other.isNew, isNew) ||
                const DeepCollectionEquality().equals(other.isNew, isNew)) &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(task) ^
      const DeepCollectionEquality().hash(isTitleValid) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(isNew) ^
      const DeepCollectionEquality().hash(response) ^
      const DeepCollectionEquality().hash(showErrorMessages);

  @override
  _$TaskDetailStateCopyWith<_TaskDetailState> get copyWith =>
      __$TaskDetailStateCopyWithImpl<_TaskDetailState>(this, _$identity);
}

abstract class _TaskDetailState implements TaskDetailState {
  const factory _TaskDetailState(
      {@required Task task,
      @required bool isTitleValid,
      @required bool isSaving,
      @required bool isNew,
      @required FirebaseResponse response,
      @required bool showErrorMessages}) = _$_TaskDetailState;

  @override
  Task get task;
  @override
  bool get isTitleValid;
  @override
  bool get isSaving;
  @override
  bool get isNew;
  @override
  FirebaseResponse get response;
  @override
  bool get showErrorMessages;
  @override
  _$TaskDetailStateCopyWith<_TaskDetailState> get copyWith;
}
