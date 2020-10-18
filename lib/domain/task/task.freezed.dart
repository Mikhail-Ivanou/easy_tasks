// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TaskTearOff {
  const _$TaskTearOff();

// ignore: unused_element
  _Task call(
      {String id,
      @required String title,
      bool isCompleted,
      TaskCategory category,
      List<String> tags,
      DateTime dueDate,
      Timestamp dateCreated,
      TaskPriority priority,
      String notes,
      bool isFavorite}) {
    return _Task(
      id: id,
      title: title,
      isCompleted: isCompleted,
      category: category,
      tags: tags,
      dueDate: dueDate,
      dateCreated: dateCreated,
      priority: priority,
      notes: notes,
      isFavorite: isFavorite,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Task = _$TaskTearOff();

/// @nodoc
mixin _$Task {
  String get id;
  String get title;
  bool get isCompleted;
  TaskCategory get category;
  List<String> get tags;
  DateTime get dueDate;
  Timestamp get dateCreated;
  TaskPriority get priority;
  String get notes;
  bool get isFavorite;

  $TaskCopyWith<Task> get copyWith;
}

/// @nodoc
abstract class $TaskCopyWith<$Res> {
  factory $TaskCopyWith(Task value, $Res Function(Task) then) =
      _$TaskCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String title,
      bool isCompleted,
      TaskCategory category,
      List<String> tags,
      DateTime dueDate,
      Timestamp dateCreated,
      TaskPriority priority,
      String notes,
      bool isFavorite});

  $TaskCategoryCopyWith<$Res> get category;
}

/// @nodoc
class _$TaskCopyWithImpl<$Res> implements $TaskCopyWith<$Res> {
  _$TaskCopyWithImpl(this._value, this._then);

  final Task _value;
  // ignore: unused_field
  final $Res Function(Task) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object isCompleted = freezed,
    Object category = freezed,
    Object tags = freezed,
    Object dueDate = freezed,
    Object dateCreated = freezed,
    Object priority = freezed,
    Object notes = freezed,
    Object isFavorite = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      isCompleted:
          isCompleted == freezed ? _value.isCompleted : isCompleted as bool,
      category:
          category == freezed ? _value.category : category as TaskCategory,
      tags: tags == freezed ? _value.tags : tags as List<String>,
      dueDate: dueDate == freezed ? _value.dueDate : dueDate as DateTime,
      dateCreated: dateCreated == freezed
          ? _value.dateCreated
          : dateCreated as Timestamp,
      priority:
          priority == freezed ? _value.priority : priority as TaskPriority,
      notes: notes == freezed ? _value.notes : notes as String,
      isFavorite:
          isFavorite == freezed ? _value.isFavorite : isFavorite as bool,
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
abstract class _$TaskCopyWith<$Res> implements $TaskCopyWith<$Res> {
  factory _$TaskCopyWith(_Task value, $Res Function(_Task) then) =
      __$TaskCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String title,
      bool isCompleted,
      TaskCategory category,
      List<String> tags,
      DateTime dueDate,
      Timestamp dateCreated,
      TaskPriority priority,
      String notes,
      bool isFavorite});

  @override
  $TaskCategoryCopyWith<$Res> get category;
}

/// @nodoc
class __$TaskCopyWithImpl<$Res> extends _$TaskCopyWithImpl<$Res>
    implements _$TaskCopyWith<$Res> {
  __$TaskCopyWithImpl(_Task _value, $Res Function(_Task) _then)
      : super(_value, (v) => _then(v as _Task));

  @override
  _Task get _value => super._value as _Task;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object isCompleted = freezed,
    Object category = freezed,
    Object tags = freezed,
    Object dueDate = freezed,
    Object dateCreated = freezed,
    Object priority = freezed,
    Object notes = freezed,
    Object isFavorite = freezed,
  }) {
    return _then(_Task(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      isCompleted:
          isCompleted == freezed ? _value.isCompleted : isCompleted as bool,
      category:
          category == freezed ? _value.category : category as TaskCategory,
      tags: tags == freezed ? _value.tags : tags as List<String>,
      dueDate: dueDate == freezed ? _value.dueDate : dueDate as DateTime,
      dateCreated: dateCreated == freezed
          ? _value.dateCreated
          : dateCreated as Timestamp,
      priority:
          priority == freezed ? _value.priority : priority as TaskPriority,
      notes: notes == freezed ? _value.notes : notes as String,
      isFavorite:
          isFavorite == freezed ? _value.isFavorite : isFavorite as bool,
    ));
  }
}

/// @nodoc
class _$_Task implements _Task {
  const _$_Task(
      {this.id,
      @required this.title,
      this.isCompleted,
      this.category,
      this.tags,
      this.dueDate,
      this.dateCreated,
      this.priority,
      this.notes,
      this.isFavorite})
      : assert(title != null);

  @override
  final String id;
  @override
  final String title;
  @override
  final bool isCompleted;
  @override
  final TaskCategory category;
  @override
  final List<String> tags;
  @override
  final DateTime dueDate;
  @override
  final Timestamp dateCreated;
  @override
  final TaskPriority priority;
  @override
  final String notes;
  @override
  final bool isFavorite;

  @override
  String toString() {
    return 'Task(id: $id, title: $title, isCompleted: $isCompleted, category: $category, tags: $tags, dueDate: $dueDate, dateCreated: $dateCreated, priority: $priority, notes: $notes, isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Task &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.isCompleted, isCompleted) ||
                const DeepCollectionEquality()
                    .equals(other.isCompleted, isCompleted)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.tags, tags) ||
                const DeepCollectionEquality().equals(other.tags, tags)) &&
            (identical(other.dueDate, dueDate) ||
                const DeepCollectionEquality()
                    .equals(other.dueDate, dueDate)) &&
            (identical(other.dateCreated, dateCreated) ||
                const DeepCollectionEquality()
                    .equals(other.dateCreated, dateCreated)) &&
            (identical(other.priority, priority) ||
                const DeepCollectionEquality()
                    .equals(other.priority, priority)) &&
            (identical(other.notes, notes) ||
                const DeepCollectionEquality().equals(other.notes, notes)) &&
            (identical(other.isFavorite, isFavorite) ||
                const DeepCollectionEquality()
                    .equals(other.isFavorite, isFavorite)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(isCompleted) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(tags) ^
      const DeepCollectionEquality().hash(dueDate) ^
      const DeepCollectionEquality().hash(dateCreated) ^
      const DeepCollectionEquality().hash(priority) ^
      const DeepCollectionEquality().hash(notes) ^
      const DeepCollectionEquality().hash(isFavorite);

  @override
  _$TaskCopyWith<_Task> get copyWith =>
      __$TaskCopyWithImpl<_Task>(this, _$identity);
}

abstract class _Task implements Task {
  const factory _Task(
      {String id,
      @required String title,
      bool isCompleted,
      TaskCategory category,
      List<String> tags,
      DateTime dueDate,
      Timestamp dateCreated,
      TaskPriority priority,
      String notes,
      bool isFavorite}) = _$_Task;

  @override
  String get id;
  @override
  String get title;
  @override
  bool get isCompleted;
  @override
  TaskCategory get category;
  @override
  List<String> get tags;
  @override
  DateTime get dueDate;
  @override
  Timestamp get dateCreated;
  @override
  TaskPriority get priority;
  @override
  String get notes;
  @override
  bool get isFavorite;
  @override
  _$TaskCopyWith<_Task> get copyWith;
}
