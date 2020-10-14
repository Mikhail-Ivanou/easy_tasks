// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'total_tasks_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TotalTasksEventTearOff {
  const _$TotalTasksEventTearOff();

// ignore: unused_element
  _CheckTotalCount checkTotalCount() {
    return const _CheckTotalCount();
  }
}

/// @nodoc
// ignore: unused_element
const $TotalTasksEvent = _$TotalTasksEventTearOff();

/// @nodoc
mixin _$TotalTasksEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result checkTotalCount(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result checkTotalCount(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result checkTotalCount(_CheckTotalCount value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result checkTotalCount(_CheckTotalCount value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $TotalTasksEventCopyWith<$Res> {
  factory $TotalTasksEventCopyWith(
          TotalTasksEvent value, $Res Function(TotalTasksEvent) then) =
      _$TotalTasksEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TotalTasksEventCopyWithImpl<$Res>
    implements $TotalTasksEventCopyWith<$Res> {
  _$TotalTasksEventCopyWithImpl(this._value, this._then);

  final TotalTasksEvent _value;
  // ignore: unused_field
  final $Res Function(TotalTasksEvent) _then;
}

/// @nodoc
abstract class _$CheckTotalCountCopyWith<$Res> {
  factory _$CheckTotalCountCopyWith(
          _CheckTotalCount value, $Res Function(_CheckTotalCount) then) =
      __$CheckTotalCountCopyWithImpl<$Res>;
}

/// @nodoc
class __$CheckTotalCountCopyWithImpl<$Res>
    extends _$TotalTasksEventCopyWithImpl<$Res>
    implements _$CheckTotalCountCopyWith<$Res> {
  __$CheckTotalCountCopyWithImpl(
      _CheckTotalCount _value, $Res Function(_CheckTotalCount) _then)
      : super(_value, (v) => _then(v as _CheckTotalCount));

  @override
  _CheckTotalCount get _value => super._value as _CheckTotalCount;
}

/// @nodoc
class _$_CheckTotalCount implements _CheckTotalCount {
  const _$_CheckTotalCount();

  @override
  String toString() {
    return 'TotalTasksEvent.checkTotalCount()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CheckTotalCount);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result checkTotalCount(),
  }) {
    assert(checkTotalCount != null);
    return checkTotalCount();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result checkTotalCount(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (checkTotalCount != null) {
      return checkTotalCount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result checkTotalCount(_CheckTotalCount value),
  }) {
    assert(checkTotalCount != null);
    return checkTotalCount(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result checkTotalCount(_CheckTotalCount value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (checkTotalCount != null) {
      return checkTotalCount(this);
    }
    return orElse();
  }
}

abstract class _CheckTotalCount implements TotalTasksEvent {
  const factory _CheckTotalCount() = _$_CheckTotalCount;
}

/// @nodoc
class _$TotalTasksStateTearOff {
  const _$TotalTasksStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _TotalCount count({@required int totalCount, @required int otherCount}) {
    return _TotalCount(
      totalCount: totalCount,
      otherCount: otherCount,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TotalTasksState = _$TotalTasksStateTearOff();

/// @nodoc
mixin _$TotalTasksState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result count(int totalCount, int otherCount),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result count(int totalCount, int otherCount),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result count(_TotalCount value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result count(_TotalCount value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $TotalTasksStateCopyWith<$Res> {
  factory $TotalTasksStateCopyWith(
          TotalTasksState value, $Res Function(TotalTasksState) then) =
      _$TotalTasksStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TotalTasksStateCopyWithImpl<$Res>
    implements $TotalTasksStateCopyWith<$Res> {
  _$TotalTasksStateCopyWithImpl(this._value, this._then);

  final TotalTasksState _value;
  // ignore: unused_field
  final $Res Function(TotalTasksState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$TotalTasksStateCopyWithImpl<$Res>
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
    return 'TotalTasksState.initial()';
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
    @required Result count(int totalCount, int otherCount),
  }) {
    assert(initial != null);
    assert(count != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result count(int totalCount, int otherCount),
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
    @required Result count(_TotalCount value),
  }) {
    assert(initial != null);
    assert(count != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result count(_TotalCount value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TotalTasksState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$TotalCountCopyWith<$Res> {
  factory _$TotalCountCopyWith(
          _TotalCount value, $Res Function(_TotalCount) then) =
      __$TotalCountCopyWithImpl<$Res>;
  $Res call({int totalCount, int otherCount});
}

/// @nodoc
class __$TotalCountCopyWithImpl<$Res>
    extends _$TotalTasksStateCopyWithImpl<$Res>
    implements _$TotalCountCopyWith<$Res> {
  __$TotalCountCopyWithImpl(
      _TotalCount _value, $Res Function(_TotalCount) _then)
      : super(_value, (v) => _then(v as _TotalCount));

  @override
  _TotalCount get _value => super._value as _TotalCount;

  @override
  $Res call({
    Object totalCount = freezed,
    Object otherCount = freezed,
  }) {
    return _then(_TotalCount(
      totalCount: totalCount == freezed ? _value.totalCount : totalCount as int,
      otherCount: otherCount == freezed ? _value.otherCount : otherCount as int,
    ));
  }
}

/// @nodoc
class _$_TotalCount implements _TotalCount {
  const _$_TotalCount({@required this.totalCount, @required this.otherCount})
      : assert(totalCount != null),
        assert(otherCount != null);

  @override
  final int totalCount;
  @override
  final int otherCount;

  @override
  String toString() {
    return 'TotalTasksState.count(totalCount: $totalCount, otherCount: $otherCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TotalCount &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.otherCount, otherCount) ||
                const DeepCollectionEquality()
                    .equals(other.otherCount, otherCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(otherCount);

  @override
  _$TotalCountCopyWith<_TotalCount> get copyWith =>
      __$TotalCountCopyWithImpl<_TotalCount>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result count(int totalCount, int otherCount),
  }) {
    assert(initial != null);
    assert(count != null);
    return count(totalCount, otherCount);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result count(int totalCount, int otherCount),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (count != null) {
      return count(totalCount, otherCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result count(_TotalCount value),
  }) {
    assert(initial != null);
    assert(count != null);
    return count(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result count(_TotalCount value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (count != null) {
      return count(this);
    }
    return orElse();
  }
}

abstract class _TotalCount implements TotalTasksState {
  const factory _TotalCount(
      {@required int totalCount, @required int otherCount}) = _$_TotalCount;

  int get totalCount;
  int get otherCount;
  _$TotalCountCopyWith<_TotalCount> get copyWith;
}
