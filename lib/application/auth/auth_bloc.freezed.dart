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
  _AuthCheckRequest authCheckRequest() {
    return const _AuthCheckRequest();
  }

// ignore: unused_element
  _SignOut signOut() {
    return const _SignOut();
  }

// ignore: unused_element
  _CheckContentCreated checkContentCreated() {
    return const _CheckContentCreated();
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
    @required Result checkContentCreated(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authCheckRequest(),
    Result signOut(),
    Result checkContentCreated(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authCheckRequest(_AuthCheckRequest value),
    @required Result signOut(_SignOut value),
    @required Result checkContentCreated(_CheckContentCreated value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authCheckRequest(_AuthCheckRequest value),
    Result signOut(_SignOut value),
    Result checkContentCreated(_CheckContentCreated value),
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
abstract class _$AuthCheckRequestCopyWith<$Res> {
  factory _$AuthCheckRequestCopyWith(
          _AuthCheckRequest value, $Res Function(_AuthCheckRequest) then) =
      __$AuthCheckRequestCopyWithImpl<$Res>;
}

/// @nodoc
class __$AuthCheckRequestCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$AuthCheckRequestCopyWith<$Res> {
  __$AuthCheckRequestCopyWithImpl(
      _AuthCheckRequest _value, $Res Function(_AuthCheckRequest) _then)
      : super(_value, (v) => _then(v as _AuthCheckRequest));

  @override
  _AuthCheckRequest get _value => super._value as _AuthCheckRequest;
}

/// @nodoc
class _$_AuthCheckRequest implements _AuthCheckRequest {
  const _$_AuthCheckRequest();

  @override
  String toString() {
    return 'AuthEvent.authCheckRequest()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AuthCheckRequest);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authCheckRequest(),
    @required Result signOut(),
    @required Result checkContentCreated(),
  }) {
    assert(authCheckRequest != null);
    assert(signOut != null);
    assert(checkContentCreated != null);
    return authCheckRequest();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authCheckRequest(),
    Result signOut(),
    Result checkContentCreated(),
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
    @required Result authCheckRequest(_AuthCheckRequest value),
    @required Result signOut(_SignOut value),
    @required Result checkContentCreated(_CheckContentCreated value),
  }) {
    assert(authCheckRequest != null);
    assert(signOut != null);
    assert(checkContentCreated != null);
    return authCheckRequest(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authCheckRequest(_AuthCheckRequest value),
    Result signOut(_SignOut value),
    Result checkContentCreated(_CheckContentCreated value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authCheckRequest != null) {
      return authCheckRequest(this);
    }
    return orElse();
  }
}

abstract class _AuthCheckRequest implements AuthEvent {
  const factory _AuthCheckRequest() = _$_AuthCheckRequest;
}

/// @nodoc
abstract class _$SignOutCopyWith<$Res> {
  factory _$SignOutCopyWith(_SignOut value, $Res Function(_SignOut) then) =
      __$SignOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignOutCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$SignOutCopyWith<$Res> {
  __$SignOutCopyWithImpl(_SignOut _value, $Res Function(_SignOut) _then)
      : super(_value, (v) => _then(v as _SignOut));

  @override
  _SignOut get _value => super._value as _SignOut;
}

/// @nodoc
class _$_SignOut implements _SignOut {
  const _$_SignOut();

  @override
  String toString() {
    return 'AuthEvent.signOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SignOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authCheckRequest(),
    @required Result signOut(),
    @required Result checkContentCreated(),
  }) {
    assert(authCheckRequest != null);
    assert(signOut != null);
    assert(checkContentCreated != null);
    return signOut();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authCheckRequest(),
    Result signOut(),
    Result checkContentCreated(),
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
    @required Result authCheckRequest(_AuthCheckRequest value),
    @required Result signOut(_SignOut value),
    @required Result checkContentCreated(_CheckContentCreated value),
  }) {
    assert(authCheckRequest != null);
    assert(signOut != null);
    assert(checkContentCreated != null);
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authCheckRequest(_AuthCheckRequest value),
    Result signOut(_SignOut value),
    Result checkContentCreated(_CheckContentCreated value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class _SignOut implements AuthEvent {
  const factory _SignOut() = _$_SignOut;
}

/// @nodoc
abstract class _$CheckContentCreatedCopyWith<$Res> {
  factory _$CheckContentCreatedCopyWith(_CheckContentCreated value,
          $Res Function(_CheckContentCreated) then) =
      __$CheckContentCreatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$CheckContentCreatedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$CheckContentCreatedCopyWith<$Res> {
  __$CheckContentCreatedCopyWithImpl(
      _CheckContentCreated _value, $Res Function(_CheckContentCreated) _then)
      : super(_value, (v) => _then(v as _CheckContentCreated));

  @override
  _CheckContentCreated get _value => super._value as _CheckContentCreated;
}

/// @nodoc
class _$_CheckContentCreated implements _CheckContentCreated {
  const _$_CheckContentCreated();

  @override
  String toString() {
    return 'AuthEvent.checkContentCreated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CheckContentCreated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authCheckRequest(),
    @required Result signOut(),
    @required Result checkContentCreated(),
  }) {
    assert(authCheckRequest != null);
    assert(signOut != null);
    assert(checkContentCreated != null);
    return checkContentCreated();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authCheckRequest(),
    Result signOut(),
    Result checkContentCreated(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (checkContentCreated != null) {
      return checkContentCreated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authCheckRequest(_AuthCheckRequest value),
    @required Result signOut(_SignOut value),
    @required Result checkContentCreated(_CheckContentCreated value),
  }) {
    assert(authCheckRequest != null);
    assert(signOut != null);
    assert(checkContentCreated != null);
    return checkContentCreated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authCheckRequest(_AuthCheckRequest value),
    Result signOut(_SignOut value),
    Result checkContentCreated(_CheckContentCreated value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (checkContentCreated != null) {
      return checkContentCreated(this);
    }
    return orElse();
  }
}

abstract class _CheckContentCreated implements AuthEvent {
  const factory _CheckContentCreated() = _$_CheckContentCreated;
}

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Authed authed() {
    return const _Authed();
  }

// ignore: unused_element
  _UnAuthed unAuthed() {
    return const _UnAuthed();
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
    @required Result initial(_Initial value),
    @required Result authed(_Authed value),
    @required Result unAuthed(_UnAuthed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result authed(_Authed value),
    Result unAuthed(_UnAuthed value),
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
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
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
    return 'AuthState.initial()';
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
    @required Result initial(_Initial value),
    @required Result authed(_Authed value),
    @required Result unAuthed(_UnAuthed value),
  }) {
    assert(initial != null);
    assert(authed != null);
    assert(unAuthed != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result authed(_Authed value),
    Result unAuthed(_UnAuthed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$AuthedCopyWith<$Res> {
  factory _$AuthedCopyWith(_Authed value, $Res Function(_Authed) then) =
      __$AuthedCopyWithImpl<$Res>;
}

/// @nodoc
class __$AuthedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$AuthedCopyWith<$Res> {
  __$AuthedCopyWithImpl(_Authed _value, $Res Function(_Authed) _then)
      : super(_value, (v) => _then(v as _Authed));

  @override
  _Authed get _value => super._value as _Authed;
}

/// @nodoc
class _$_Authed implements _Authed {
  const _$_Authed();

  @override
  String toString() {
    return 'AuthState.authed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Authed);
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
    @required Result initial(_Initial value),
    @required Result authed(_Authed value),
    @required Result unAuthed(_UnAuthed value),
  }) {
    assert(initial != null);
    assert(authed != null);
    assert(unAuthed != null);
    return authed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result authed(_Authed value),
    Result unAuthed(_UnAuthed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authed != null) {
      return authed(this);
    }
    return orElse();
  }
}

abstract class _Authed implements AuthState {
  const factory _Authed() = _$_Authed;
}

/// @nodoc
abstract class _$UnAuthedCopyWith<$Res> {
  factory _$UnAuthedCopyWith(_UnAuthed value, $Res Function(_UnAuthed) then) =
      __$UnAuthedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnAuthedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$UnAuthedCopyWith<$Res> {
  __$UnAuthedCopyWithImpl(_UnAuthed _value, $Res Function(_UnAuthed) _then)
      : super(_value, (v) => _then(v as _UnAuthed));

  @override
  _UnAuthed get _value => super._value as _UnAuthed;
}

/// @nodoc
class _$_UnAuthed implements _UnAuthed {
  const _$_UnAuthed();

  @override
  String toString() {
    return 'AuthState.unAuthed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UnAuthed);
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
    @required Result initial(_Initial value),
    @required Result authed(_Authed value),
    @required Result unAuthed(_UnAuthed value),
  }) {
    assert(initial != null);
    assert(authed != null);
    assert(unAuthed != null);
    return unAuthed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result authed(_Authed value),
    Result unAuthed(_UnAuthed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unAuthed != null) {
      return unAuthed(this);
    }
    return orElse();
  }
}

abstract class _UnAuthed implements AuthState {
  const factory _UnAuthed() = _$_UnAuthed;
}
