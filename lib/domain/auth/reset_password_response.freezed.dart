// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'reset_password_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ResetPasswordResponseTearOff {
  const _$ResetPasswordResponseTearOff();

// ignore: unused_element
  _Success success() {
    return const _Success();
  }

// ignore: unused_element
  _Failure failure({@required ResetPasswordFailure failure}) {
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
const $ResetPasswordResponse = _$ResetPasswordResponseTearOff();

/// @nodoc
mixin _$ResetPasswordResponse {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result success(),
    @required Result failure(ResetPasswordFailure failure),
    @required Result empty(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result success(),
    Result failure(ResetPasswordFailure failure),
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
abstract class $ResetPasswordResponseCopyWith<$Res> {
  factory $ResetPasswordResponseCopyWith(ResetPasswordResponse value,
          $Res Function(ResetPasswordResponse) then) =
      _$ResetPasswordResponseCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResetPasswordResponseCopyWithImpl<$Res>
    implements $ResetPasswordResponseCopyWith<$Res> {
  _$ResetPasswordResponseCopyWithImpl(this._value, this._then);

  final ResetPasswordResponse _value;
  // ignore: unused_field
  final $Res Function(ResetPasswordResponse) _then;
}

/// @nodoc
abstract class _$SuccessCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) then) =
      __$SuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$SuccessCopyWithImpl<$Res>
    extends _$ResetPasswordResponseCopyWithImpl<$Res>
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
    return 'ResetPasswordResponse.success()';
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
    @required Result failure(ResetPasswordFailure failure),
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
    Result failure(ResetPasswordFailure failure),
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

abstract class _Success implements ResetPasswordResponse {
  const factory _Success() = _$_Success;
}

/// @nodoc
abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
  $Res call({ResetPasswordFailure failure});

  $ResetPasswordFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$FailureCopyWithImpl<$Res>
    extends _$ResetPasswordResponseCopyWithImpl<$Res>
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
      failure:
          failure == freezed ? _value.failure : failure as ResetPasswordFailure,
    ));
  }

  @override
  $ResetPasswordFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $ResetPasswordFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$_Failure implements _Failure {
  const _$_Failure({@required this.failure}) : assert(failure != null);

  @override
  final ResetPasswordFailure failure;

  @override
  String toString() {
    return 'ResetPasswordResponse.failure(failure: $failure)';
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
    @required Result failure(ResetPasswordFailure failure),
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
    Result failure(ResetPasswordFailure failure),
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

abstract class _Failure implements ResetPasswordResponse {
  const factory _Failure({@required ResetPasswordFailure failure}) = _$_Failure;

  ResetPasswordFailure get failure;
  _$FailureCopyWith<_Failure> get copyWith;
}

/// @nodoc
abstract class _$EmptyCopyWith<$Res> {
  factory _$EmptyCopyWith(_Empty value, $Res Function(_Empty) then) =
      __$EmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$EmptyCopyWithImpl<$Res>
    extends _$ResetPasswordResponseCopyWithImpl<$Res>
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
    return 'ResetPasswordResponse.empty()';
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
    @required Result failure(ResetPasswordFailure failure),
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
    Result failure(ResetPasswordFailure failure),
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

abstract class _Empty implements ResetPasswordResponse {
  const factory _Empty() = _$_Empty;
}

/// @nodoc
class _$ResetPasswordFailureTearOff {
  const _$ResetPasswordFailureTearOff();

// ignore: unused_element
  _UserNotFound userNotFound() {
    return const _UserNotFound();
  }

// ignore: unused_element
  _ServerError serverError() {
    return const _ServerError();
  }

// ignore: unused_element
  _IncorrectEmail incorrectEmail() {
    return const _IncorrectEmail();
  }
}

/// @nodoc
// ignore: unused_element
const $ResetPasswordFailure = _$ResetPasswordFailureTearOff();

/// @nodoc
mixin _$ResetPasswordFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result userNotFound(),
    @required Result serverError(),
    @required Result incorrectEmail(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result userNotFound(),
    Result serverError(),
    Result incorrectEmail(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result userNotFound(_UserNotFound value),
    @required Result serverError(_ServerError value),
    @required Result incorrectEmail(_IncorrectEmail value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result userNotFound(_UserNotFound value),
    Result serverError(_ServerError value),
    Result incorrectEmail(_IncorrectEmail value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $ResetPasswordFailureCopyWith<$Res> {
  factory $ResetPasswordFailureCopyWith(ResetPasswordFailure value,
          $Res Function(ResetPasswordFailure) then) =
      _$ResetPasswordFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResetPasswordFailureCopyWithImpl<$Res>
    implements $ResetPasswordFailureCopyWith<$Res> {
  _$ResetPasswordFailureCopyWithImpl(this._value, this._then);

  final ResetPasswordFailure _value;
  // ignore: unused_field
  final $Res Function(ResetPasswordFailure) _then;
}

/// @nodoc
abstract class _$UserNotFoundCopyWith<$Res> {
  factory _$UserNotFoundCopyWith(
          _UserNotFound value, $Res Function(_UserNotFound) then) =
      __$UserNotFoundCopyWithImpl<$Res>;
}

/// @nodoc
class __$UserNotFoundCopyWithImpl<$Res>
    extends _$ResetPasswordFailureCopyWithImpl<$Res>
    implements _$UserNotFoundCopyWith<$Res> {
  __$UserNotFoundCopyWithImpl(
      _UserNotFound _value, $Res Function(_UserNotFound) _then)
      : super(_value, (v) => _then(v as _UserNotFound));

  @override
  _UserNotFound get _value => super._value as _UserNotFound;
}

/// @nodoc
class _$_UserNotFound implements _UserNotFound {
  const _$_UserNotFound();

  @override
  String toString() {
    return 'ResetPasswordFailure.userNotFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UserNotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result userNotFound(),
    @required Result serverError(),
    @required Result incorrectEmail(),
  }) {
    assert(userNotFound != null);
    assert(serverError != null);
    assert(incorrectEmail != null);
    return userNotFound();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result userNotFound(),
    Result serverError(),
    Result incorrectEmail(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userNotFound != null) {
      return userNotFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result userNotFound(_UserNotFound value),
    @required Result serverError(_ServerError value),
    @required Result incorrectEmail(_IncorrectEmail value),
  }) {
    assert(userNotFound != null);
    assert(serverError != null);
    assert(incorrectEmail != null);
    return userNotFound(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result userNotFound(_UserNotFound value),
    Result serverError(_ServerError value),
    Result incorrectEmail(_IncorrectEmail value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userNotFound != null) {
      return userNotFound(this);
    }
    return orElse();
  }
}

abstract class _UserNotFound implements ResetPasswordFailure {
  const factory _UserNotFound() = _$_UserNotFound;
}

/// @nodoc
abstract class _$ServerErrorCopyWith<$Res> {
  factory _$ServerErrorCopyWith(
          _ServerError value, $Res Function(_ServerError) then) =
      __$ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$ServerErrorCopyWithImpl<$Res>
    extends _$ResetPasswordFailureCopyWithImpl<$Res>
    implements _$ServerErrorCopyWith<$Res> {
  __$ServerErrorCopyWithImpl(
      _ServerError _value, $Res Function(_ServerError) _then)
      : super(_value, (v) => _then(v as _ServerError));

  @override
  _ServerError get _value => super._value as _ServerError;
}

/// @nodoc
class _$_ServerError implements _ServerError {
  const _$_ServerError();

  @override
  String toString() {
    return 'ResetPasswordFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result userNotFound(),
    @required Result serverError(),
    @required Result incorrectEmail(),
  }) {
    assert(userNotFound != null);
    assert(serverError != null);
    assert(incorrectEmail != null);
    return serverError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result userNotFound(),
    Result serverError(),
    Result incorrectEmail(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result userNotFound(_UserNotFound value),
    @required Result serverError(_ServerError value),
    @required Result incorrectEmail(_IncorrectEmail value),
  }) {
    assert(userNotFound != null);
    assert(serverError != null);
    assert(incorrectEmail != null);
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result userNotFound(_UserNotFound value),
    Result serverError(_ServerError value),
    Result incorrectEmail(_IncorrectEmail value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements ResetPasswordFailure {
  const factory _ServerError() = _$_ServerError;
}

/// @nodoc
abstract class _$IncorrectEmailCopyWith<$Res> {
  factory _$IncorrectEmailCopyWith(
          _IncorrectEmail value, $Res Function(_IncorrectEmail) then) =
      __$IncorrectEmailCopyWithImpl<$Res>;
}

/// @nodoc
class __$IncorrectEmailCopyWithImpl<$Res>
    extends _$ResetPasswordFailureCopyWithImpl<$Res>
    implements _$IncorrectEmailCopyWith<$Res> {
  __$IncorrectEmailCopyWithImpl(
      _IncorrectEmail _value, $Res Function(_IncorrectEmail) _then)
      : super(_value, (v) => _then(v as _IncorrectEmail));

  @override
  _IncorrectEmail get _value => super._value as _IncorrectEmail;
}

/// @nodoc
class _$_IncorrectEmail implements _IncorrectEmail {
  const _$_IncorrectEmail();

  @override
  String toString() {
    return 'ResetPasswordFailure.incorrectEmail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _IncorrectEmail);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result userNotFound(),
    @required Result serverError(),
    @required Result incorrectEmail(),
  }) {
    assert(userNotFound != null);
    assert(serverError != null);
    assert(incorrectEmail != null);
    return incorrectEmail();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result userNotFound(),
    Result serverError(),
    Result incorrectEmail(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (incorrectEmail != null) {
      return incorrectEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result userNotFound(_UserNotFound value),
    @required Result serverError(_ServerError value),
    @required Result incorrectEmail(_IncorrectEmail value),
  }) {
    assert(userNotFound != null);
    assert(serverError != null);
    assert(incorrectEmail != null);
    return incorrectEmail(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result userNotFound(_UserNotFound value),
    Result serverError(_ServerError value),
    Result incorrectEmail(_IncorrectEmail value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (incorrectEmail != null) {
      return incorrectEmail(this);
    }
    return orElse();
  }
}

abstract class _IncorrectEmail implements ResetPasswordFailure {
  const factory _IncorrectEmail() = _$_IncorrectEmail;
}
