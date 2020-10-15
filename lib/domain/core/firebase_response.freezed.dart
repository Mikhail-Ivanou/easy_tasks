// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'firebase_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FirebaseResponseTearOff {
  const _$FirebaseResponseTearOff();

// ignore: unused_element
  _Success success() {
    return const _Success();
  }

// ignore: unused_element
  _Failure failure({@required FirebaseFailure failure}) {
    return _Failure(
      failure: failure,
    );
  }

// ignore: unused_element
  _Empty empty() {
    return const _Empty();
  }
}

/// @nodoc
// ignore: unused_element
const $FirebaseResponse = _$FirebaseResponseTearOff();

/// @nodoc
mixin _$FirebaseResponse {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result success(),
    @required Result failure(FirebaseFailure failure),
    @required Result empty(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result success(),
    Result failure(FirebaseFailure failure),
    Result empty(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result success(_Success value),
    @required Result failure(_Failure value),
    @required Result empty(_Empty value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result success(_Success value),
    Result failure(_Failure value),
    Result empty(_Empty value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $FirebaseResponseCopyWith<$Res> {
  factory $FirebaseResponseCopyWith(
          FirebaseResponse value, $Res Function(FirebaseResponse) then) =
      _$FirebaseResponseCopyWithImpl<$Res>;
}

/// @nodoc
class _$FirebaseResponseCopyWithImpl<$Res>
    implements $FirebaseResponseCopyWith<$Res> {
  _$FirebaseResponseCopyWithImpl(this._value, this._then);

  final FirebaseResponse _value;
  // ignore: unused_field
  final $Res Function(FirebaseResponse) _then;
}

/// @nodoc
abstract class _$SuccessCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) then) =
      __$SuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$SuccessCopyWithImpl<$Res> extends _$FirebaseResponseCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(_Success _value, $Res Function(_Success) _then)
      : super(_value, (v) => _then(v as _Success));

  @override
  _Success get _value => super._value as _Success;
}

/// @nodoc
class _$_Success implements _Success {
  const _$_Success();

  @override
  String toString() {
    return 'FirebaseResponse.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Success);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result success(),
    @required Result failure(FirebaseFailure failure),
    @required Result empty(),
  }) {
    assert(success != null);
    assert(failure != null);
    assert(empty != null);
    return success();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result success(),
    Result failure(FirebaseFailure failure),
    Result empty(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result success(_Success value),
    @required Result failure(_Failure value),
    @required Result empty(_Empty value),
  }) {
    assert(success != null);
    assert(failure != null);
    assert(empty != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result success(_Success value),
    Result failure(_Failure value),
    Result empty(_Empty value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements FirebaseResponse {
  const factory _Success() = _$_Success;
}

/// @nodoc
abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
  $Res call({FirebaseFailure failure});

  $FirebaseFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$FailureCopyWithImpl<$Res> extends _$FirebaseResponseCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(_Failure _value, $Res Function(_Failure) _then)
      : super(_value, (v) => _then(v as _Failure));

  @override
  _Failure get _value => super._value as _Failure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_Failure(
      failure: failure == freezed ? _value.failure : failure as FirebaseFailure,
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
class _$_Failure implements _Failure {
  const _$_Failure({@required this.failure}) : assert(failure != null);

  @override
  final FirebaseFailure failure;

  @override
  String toString() {
    return 'FirebaseResponse.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Failure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  _$FailureCopyWith<_Failure> get copyWith =>
      __$FailureCopyWithImpl<_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result success(),
    @required Result failure(FirebaseFailure failure),
    @required Result empty(),
  }) {
    assert(success != null);
    assert(failure != null);
    assert(empty != null);
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result success(),
    Result failure(FirebaseFailure failure),
    Result empty(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result success(_Success value),
    @required Result failure(_Failure value),
    @required Result empty(_Empty value),
  }) {
    assert(success != null);
    assert(failure != null);
    assert(empty != null);
    return failure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result success(_Success value),
    Result failure(_Failure value),
    Result empty(_Empty value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements FirebaseResponse {
  const factory _Failure({@required FirebaseFailure failure}) = _$_Failure;

  FirebaseFailure get failure;
  _$FailureCopyWith<_Failure> get copyWith;
}

/// @nodoc
abstract class _$EmptyCopyWith<$Res> {
  factory _$EmptyCopyWith(_Empty value, $Res Function(_Empty) then) =
      __$EmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$EmptyCopyWithImpl<$Res> extends _$FirebaseResponseCopyWithImpl<$Res>
    implements _$EmptyCopyWith<$Res> {
  __$EmptyCopyWithImpl(_Empty _value, $Res Function(_Empty) _then)
      : super(_value, (v) => _then(v as _Empty));

  @override
  _Empty get _value => super._value as _Empty;
}

/// @nodoc
class _$_Empty implements _Empty {
  const _$_Empty();

  @override
  String toString() {
    return 'FirebaseResponse.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Empty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result success(),
    @required Result failure(FirebaseFailure failure),
    @required Result empty(),
  }) {
    assert(success != null);
    assert(failure != null);
    assert(empty != null);
    return empty();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result success(),
    Result failure(FirebaseFailure failure),
    Result empty(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result success(_Success value),
    @required Result failure(_Failure value),
    @required Result empty(_Empty value),
  }) {
    assert(success != null);
    assert(failure != null);
    assert(empty != null);
    return empty(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result success(_Success value),
    Result failure(_Failure value),
    Result empty(_Empty value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty implements FirebaseResponse {
  const factory _Empty() = _$_Empty;
}
