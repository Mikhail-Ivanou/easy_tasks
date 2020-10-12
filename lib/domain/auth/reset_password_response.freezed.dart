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
  Success success() {
    return const Success();
  }

// ignore: unused_element
  Failure failure({@required ResetPasswordFailure failure}) {
    return Failure(
      failure: failure,
    );
  }

// ignore: unused_element
  Empty empty() {
    return const Empty();
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
    @required Result success(Success value),
    @required Result failure(Failure value),
    @required Result empty(Empty value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result success(Success value),
    Result failure(Failure value),
    Result empty(Empty value),
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
abstract class $SuccessCopyWith<$Res> {
  factory $SuccessCopyWith(Success value, $Res Function(Success) then) =
      _$SuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$SuccessCopyWithImpl<$Res>
    extends _$ResetPasswordResponseCopyWithImpl<$Res>
    implements $SuccessCopyWith<$Res> {
  _$SuccessCopyWithImpl(Success _value, $Res Function(Success) _then)
      : super(_value, (v) => _then(v as Success));

  @override
  Success get _value => super._value as Success;
}

/// @nodoc
class _$Success implements Success {
  const _$Success();

  @override
  String toString() {
    return 'ResetPasswordResponse.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Success);
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
    @required Result success(Success value),
    @required Result failure(Failure value),
    @required Result empty(Empty value),
  }) {
    assert(success != null);
    assert(failure != null);
    assert(empty != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result success(Success value),
    Result failure(Failure value),
    Result empty(Empty value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements ResetPasswordResponse {
  const factory Success() = _$Success;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res>;
  $Res call({ResetPasswordFailure failure});

  $ResetPasswordFailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res>
    extends _$ResetPasswordResponseCopyWithImpl<$Res>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(Failure _value, $Res Function(Failure) _then)
      : super(_value, (v) => _then(v as Failure));

  @override
  Failure get _value => super._value as Failure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(Failure(
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
class _$Failure implements Failure {
  const _$Failure({@required this.failure}) : assert(failure != null);

  @override
  final ResetPasswordFailure failure;

  @override
  String toString() {
    return 'ResetPasswordResponse.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Failure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  $FailureCopyWith<Failure> get copyWith =>
      _$FailureCopyWithImpl<Failure>(this, _$identity);

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
    @required Result success(Success value),
    @required Result failure(Failure value),
    @required Result empty(Empty value),
  }) {
    assert(success != null);
    assert(failure != null);
    assert(empty != null);
    return failure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result success(Success value),
    Result failure(Failure value),
    Result empty(Empty value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class Failure implements ResetPasswordResponse {
  const factory Failure({@required ResetPasswordFailure failure}) = _$Failure;

  ResetPasswordFailure get failure;
  $FailureCopyWith<Failure> get copyWith;
}

/// @nodoc
abstract class $EmptyCopyWith<$Res> {
  factory $EmptyCopyWith(Empty value, $Res Function(Empty) then) =
      _$EmptyCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmptyCopyWithImpl<$Res>
    extends _$ResetPasswordResponseCopyWithImpl<$Res>
    implements $EmptyCopyWith<$Res> {
  _$EmptyCopyWithImpl(Empty _value, $Res Function(Empty) _then)
      : super(_value, (v) => _then(v as Empty));

  @override
  Empty get _value => super._value as Empty;
}

/// @nodoc
class _$Empty implements Empty {
  const _$Empty();

  @override
  String toString() {
    return 'ResetPasswordResponse.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Empty);
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
    @required Result success(Success value),
    @required Result failure(Failure value),
    @required Result empty(Empty value),
  }) {
    assert(success != null);
    assert(failure != null);
    assert(empty != null);
    return empty(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result success(Success value),
    Result failure(Failure value),
    Result empty(Empty value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty implements ResetPasswordResponse {
  const factory Empty() = _$Empty;
}

/// @nodoc
class _$ResetPasswordFailureTearOff {
  const _$ResetPasswordFailureTearOff();

// ignore: unused_element
  UserNotFound userNotFound() {
    return const UserNotFound();
  }

// ignore: unused_element
  ServerError serverError() {
    return const ServerError();
  }

// ignore: unused_element
  IncorrectEmail incorrectEmail() {
    return const IncorrectEmail();
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
    @required Result userNotFound(UserNotFound value),
    @required Result serverError(ServerError value),
    @required Result incorrectEmail(IncorrectEmail value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result userNotFound(UserNotFound value),
    Result serverError(ServerError value),
    Result incorrectEmail(IncorrectEmail value),
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
abstract class $UserNotFoundCopyWith<$Res> {
  factory $UserNotFoundCopyWith(
          UserNotFound value, $Res Function(UserNotFound) then) =
      _$UserNotFoundCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserNotFoundCopyWithImpl<$Res>
    extends _$ResetPasswordFailureCopyWithImpl<$Res>
    implements $UserNotFoundCopyWith<$Res> {
  _$UserNotFoundCopyWithImpl(
      UserNotFound _value, $Res Function(UserNotFound) _then)
      : super(_value, (v) => _then(v as UserNotFound));

  @override
  UserNotFound get _value => super._value as UserNotFound;
}

/// @nodoc
class _$UserNotFound implements UserNotFound {
  const _$UserNotFound();

  @override
  String toString() {
    return 'ResetPasswordFailure.userNotFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UserNotFound);
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
    @required Result userNotFound(UserNotFound value),
    @required Result serverError(ServerError value),
    @required Result incorrectEmail(IncorrectEmail value),
  }) {
    assert(userNotFound != null);
    assert(serverError != null);
    assert(incorrectEmail != null);
    return userNotFound(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result userNotFound(UserNotFound value),
    Result serverError(ServerError value),
    Result incorrectEmail(IncorrectEmail value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userNotFound != null) {
      return userNotFound(this);
    }
    return orElse();
  }
}

abstract class UserNotFound implements ResetPasswordFailure {
  const factory UserNotFound() = _$UserNotFound;
}

/// @nodoc
abstract class $ServerErrorCopyWith<$Res> {
  factory $ServerErrorCopyWith(
          ServerError value, $Res Function(ServerError) then) =
      _$ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$ServerErrorCopyWithImpl<$Res>
    extends _$ResetPasswordFailureCopyWithImpl<$Res>
    implements $ServerErrorCopyWith<$Res> {
  _$ServerErrorCopyWithImpl(
      ServerError _value, $Res Function(ServerError) _then)
      : super(_value, (v) => _then(v as ServerError));

  @override
  ServerError get _value => super._value as ServerError;
}

/// @nodoc
class _$ServerError implements ServerError {
  const _$ServerError();

  @override
  String toString() {
    return 'ResetPasswordFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServerError);
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
    @required Result userNotFound(UserNotFound value),
    @required Result serverError(ServerError value),
    @required Result incorrectEmail(IncorrectEmail value),
  }) {
    assert(userNotFound != null);
    assert(serverError != null);
    assert(incorrectEmail != null);
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result userNotFound(UserNotFound value),
    Result serverError(ServerError value),
    Result incorrectEmail(IncorrectEmail value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements ResetPasswordFailure {
  const factory ServerError() = _$ServerError;
}

/// @nodoc
abstract class $IncorrectEmailCopyWith<$Res> {
  factory $IncorrectEmailCopyWith(
          IncorrectEmail value, $Res Function(IncorrectEmail) then) =
      _$IncorrectEmailCopyWithImpl<$Res>;
}

/// @nodoc
class _$IncorrectEmailCopyWithImpl<$Res>
    extends _$ResetPasswordFailureCopyWithImpl<$Res>
    implements $IncorrectEmailCopyWith<$Res> {
  _$IncorrectEmailCopyWithImpl(
      IncorrectEmail _value, $Res Function(IncorrectEmail) _then)
      : super(_value, (v) => _then(v as IncorrectEmail));

  @override
  IncorrectEmail get _value => super._value as IncorrectEmail;
}

/// @nodoc
class _$IncorrectEmail implements IncorrectEmail {
  const _$IncorrectEmail();

  @override
  String toString() {
    return 'ResetPasswordFailure.incorrectEmail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is IncorrectEmail);
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
    @required Result userNotFound(UserNotFound value),
    @required Result serverError(ServerError value),
    @required Result incorrectEmail(IncorrectEmail value),
  }) {
    assert(userNotFound != null);
    assert(serverError != null);
    assert(incorrectEmail != null);
    return incorrectEmail(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result userNotFound(UserNotFound value),
    Result serverError(ServerError value),
    Result incorrectEmail(IncorrectEmail value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (incorrectEmail != null) {
      return incorrectEmail(this);
    }
    return orElse();
  }
}

abstract class IncorrectEmail implements ResetPasswordFailure {
  const factory IncorrectEmail() = _$IncorrectEmail;
}
