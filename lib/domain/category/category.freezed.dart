// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TaskCategoryTearOff {
  const _$TaskCategoryTearOff();

// ignore: unused_element
  _TaskCategory call(
      {String id,
      @required String title,
      @required IconData icon,
      @required Color color,
      @required int count,
      @required int position}) {
    return _TaskCategory(
      id: id,
      title: title,
      icon: icon,
      color: color,
      count: count,
      position: position,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TaskCategory = _$TaskCategoryTearOff();

/// @nodoc
mixin _$TaskCategory {
  String get id;
  String get title;
  IconData get icon;
  Color get color;
  int get count;
  int get position;

  $TaskCategoryCopyWith<TaskCategory> get copyWith;
}

/// @nodoc
abstract class $TaskCategoryCopyWith<$Res> {
  factory $TaskCategoryCopyWith(
          TaskCategory value, $Res Function(TaskCategory) then) =
      _$TaskCategoryCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String title,
      IconData icon,
      Color color,
      int count,
      int position});
}

/// @nodoc
class _$TaskCategoryCopyWithImpl<$Res> implements $TaskCategoryCopyWith<$Res> {
  _$TaskCategoryCopyWithImpl(this._value, this._then);

  final TaskCategory _value;
  // ignore: unused_field
  final $Res Function(TaskCategory) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object icon = freezed,
    Object color = freezed,
    Object count = freezed,
    Object position = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      icon: icon == freezed ? _value.icon : icon as IconData,
      color: color == freezed ? _value.color : color as Color,
      count: count == freezed ? _value.count : count as int,
      position: position == freezed ? _value.position : position as int,
    ));
  }
}

/// @nodoc
abstract class _$TaskCategoryCopyWith<$Res>
    implements $TaskCategoryCopyWith<$Res> {
  factory _$TaskCategoryCopyWith(
          _TaskCategory value, $Res Function(_TaskCategory) then) =
      __$TaskCategoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String title,
      IconData icon,
      Color color,
      int count,
      int position});
}

/// @nodoc
class __$TaskCategoryCopyWithImpl<$Res> extends _$TaskCategoryCopyWithImpl<$Res>
    implements _$TaskCategoryCopyWith<$Res> {
  __$TaskCategoryCopyWithImpl(
      _TaskCategory _value, $Res Function(_TaskCategory) _then)
      : super(_value, (v) => _then(v as _TaskCategory));

  @override
  _TaskCategory get _value => super._value as _TaskCategory;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object icon = freezed,
    Object color = freezed,
    Object count = freezed,
    Object position = freezed,
  }) {
    return _then(_TaskCategory(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      icon: icon == freezed ? _value.icon : icon as IconData,
      color: color == freezed ? _value.color : color as Color,
      count: count == freezed ? _value.count : count as int,
      position: position == freezed ? _value.position : position as int,
    ));
  }
}

/// @nodoc
class _$_TaskCategory extends _TaskCategory {
  const _$_TaskCategory(
      {this.id,
      @required this.title,
      @required this.icon,
      @required this.color,
      @required this.count,
      @required this.position})
      : assert(title != null),
        assert(icon != null),
        assert(color != null),
        assert(count != null),
        assert(position != null),
        super._();

  @override
  final String id;
  @override
  final String title;
  @override
  final IconData icon;
  @override
  final Color color;
  @override
  final int count;
  @override
  final int position;

  @override
  String toString() {
    return 'TaskCategory(id: $id, title: $title, icon: $icon, color: $color, count: $count, position: $position)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TaskCategory &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.icon, icon) ||
                const DeepCollectionEquality().equals(other.icon, icon)) &&
            (identical(other.color, color) ||
                const DeepCollectionEquality().equals(other.color, color)) &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.position, position) ||
                const DeepCollectionEquality()
                    .equals(other.position, position)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(icon) ^
      const DeepCollectionEquality().hash(color) ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(position);

  @override
  _$TaskCategoryCopyWith<_TaskCategory> get copyWith =>
      __$TaskCategoryCopyWithImpl<_TaskCategory>(this, _$identity);
}

abstract class _TaskCategory extends TaskCategory {
  const _TaskCategory._() : super._();
  const factory _TaskCategory(
      {String id,
      @required String title,
      @required IconData icon,
      @required Color color,
      @required int count,
      @required int position}) = _$_TaskCategory;

  @override
  String get id;
  @override
  String get title;
  @override
  IconData get icon;
  @override
  Color get color;
  @override
  int get count;
  @override
  int get position;
  @override
  _$TaskCategoryCopyWith<_TaskCategory> get copyWith;
}
