// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AuthEventTearOff {
  const _$AuthEventTearOff();

// ignore: unused_element
  AuthCheckRequest authCheckRequest() {
    return const AuthCheckRequest();
  }

// ignore: unused_element
  SignOut signOut() {
    return const SignOut();
  }
}

/// @nodoc
// ignore: unused_element
const $AuthEvent = _$AuthEventTearOff();

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authCheckRequest(),
    @required Result signOut(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authCheckRequest(),
    Result signOut(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authCheckRequest(AuthCheckRequest value),
    @required Result signOut(SignOut value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authCheckRequest(AuthCheckRequest value),
    Result signOut(SignOut value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

/// @nodoc
abstract class $AuthCheckRequestCopyWith<$Res> {
  factory $AuthCheckRequestCopyWith(
          AuthCheckRequest value, $Res Function(AuthCheckRequest) then) =
      _$AuthCheckRequestCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthCheckRequestCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $AuthCheckRequestCopyWith<$Res> {
  _$AuthCheckRequestCopyWithImpl(
      AuthCheckRequest _value, $Res Function(AuthCheckRequest) _then)
      : super(_value, (v) => _then(v as AuthCheckRequest));

  @override
  AuthCheckRequest get _value => super._value as AuthCheckRequest;
}

/// @nodoc
class _$AuthCheckRequest implements AuthCheckRequest {
  const _$AuthCheckRequest();

  @override
  String toString() {
    return 'AuthEvent.authCheckRequest()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthCheckRequest);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authCheckRequest(),
    @required Result signOut(),
  }) {
    assert(authCheckRequest != null);
    assert(signOut != null);
    return authCheckRequest();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authCheckRequest(),
    Result signOut(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authCheckRequest != null) {
      return authCheckRequest();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authCheckRequest(AuthCheckRequest value),
    @required Result signOut(SignOut value),
  }) {
    assert(authCheckRequest != null);
    assert(signOut != null);
    return authCheckRequest(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authCheckRequest(AuthCheckRequest value),
    Result signOut(SignOut value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authCheckRequest != null) {
      return authCheckRequest(this);
    }
    return orElse();
  }
}

abstract class AuthCheckRequest implements AuthEvent {
  const factory AuthCheckRequest() = _$AuthCheckRequest;
}

/// @nodoc
abstract class $SignOutCopyWith<$Res> {
  factory $SignOutCopyWith(SignOut value, $Res Function(SignOut) then) =
      _$SignOutCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignOutCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $SignOutCopyWith<$Res> {
  _$SignOutCopyWithImpl(SignOut _value, $Res Function(SignOut) _then)
      : super(_value, (v) => _then(v as SignOut));

  @override
  SignOut get _value => super._value as SignOut;
}

/// @nodoc
class _$SignOut implements SignOut {
  const _$SignOut();

  @override
  String toString() {
    return 'AuthEvent.signOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authCheckRequest(),
    @required Result signOut(),
  }) {
    assert(authCheckRequest != null);
    assert(signOut != null);
    return signOut();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authCheckRequest(),
    Result signOut(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authCheckRequest(AuthCheckRequest value),
    @required Result signOut(SignOut value),
  }) {
    assert(authCheckRequest != null);
    assert(signOut != null);
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authCheckRequest(AuthCheckRequest value),
    Result signOut(SignOut value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class SignOut implements AuthEvent {
  const factory SignOut() = _$SignOut;
}

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

// ignore: unused_element
  Initial initial() {
    return const Initial();
  }

// ignore: unused_element
  Authed authed() {
    return const Authed();
  }

// ignore: unused_element
  UnAuthed unAuthed() {
    return const UnAuthed();
  }
}

/// @nodoc
// ignore: unused_element
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result authed(),
    @required Result unAuthed(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result authed(),
    Result unAuthed(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result authed(Authed value),
    @required Result unAuthed(UnAuthed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result authed(Authed value),
    Result unAuthed(UnAuthed value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc
class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result authed(),
    @required Result unAuthed(),
  }) {
    assert(initial != null);
    assert(authed != null);
    assert(unAuthed != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result authed(),
    Result unAuthed(),
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
    @required Result initial(Initial value),
    @required Result authed(Authed value),
    @required Result unAuthed(UnAuthed value),
  }) {
    assert(initial != null);
    assert(authed != null);
    assert(unAuthed != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result authed(Authed value),
    Result unAuthed(UnAuthed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements AuthState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $AuthedCopyWith<$Res> {
  factory $AuthedCopyWith(Authed value, $Res Function(Authed) then) =
      _$AuthedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthedCopyWith<$Res> {
  _$AuthedCopyWithImpl(Authed _value, $Res Function(Authed) _then)
      : super(_value, (v) => _then(v as Authed));

  @override
  Authed get _value => super._value as Authed;
}

/// @nodoc
class _$Authed implements Authed {
  const _$Authed();

  @override
  String toString() {
    return 'AuthState.authed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Authed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result authed(),
    @required Result unAuthed(),
  }) {
    assert(initial != null);
    assert(authed != null);
    assert(unAuthed != null);
    return authed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result authed(),
    Result unAuthed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authed != null) {
      return authed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result authed(Authed value),
    @required Result unAuthed(UnAuthed value),
  }) {
    assert(initial != null);
    assert(authed != null);
    assert(unAuthed != null);
    return authed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result authed(Authed value),
    Result unAuthed(UnAuthed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authed != null) {
      return authed(this);
    }
    return orElse();
  }
}

abstract class Authed implements AuthState {
  const factory Authed() = _$Authed;
}

/// @nodoc
abstract class $UnAuthedCopyWith<$Res> {
  factory $UnAuthedCopyWith(UnAuthed value, $Res Function(UnAuthed) then) =
      _$UnAuthedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnAuthedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $UnAuthedCopyWith<$Res> {
  _$UnAuthedCopyWithImpl(UnAuthed _value, $Res Function(UnAuthed) _then)
      : super(_value, (v) => _then(v as UnAuthed));

  @override
  UnAuthed get _value => super._value as UnAuthed;
}

/// @nodoc
class _$UnAuthed implements UnAuthed {
  const _$UnAuthed();

  @override
  String toString() {
    return 'AuthState.unAuthed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UnAuthed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result authed(),
    @required Result unAuthed(),
  }) {
    assert(initial != null);
    assert(authed != null);
    assert(unAuthed != null);
    return unAuthed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result authed(),
    Result unAuthed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unAuthed != null) {
      return unAuthed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result authed(Authed value),
    @required Result unAuthed(UnAuthed value),
  }) {
    assert(initial != null);
    assert(authed != null);
    assert(unAuthed != null);
    return unAuthed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result authed(Authed value),
    Result unAuthed(UnAuthed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unAuthed != null) {
      return unAuthed(this);
    }
    return orElse();
  }
}

abstract class UnAuthed implements AuthState {
  const factory UnAuthed() = _$UnAuthed;
}
