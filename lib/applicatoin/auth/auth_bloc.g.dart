// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_bloc.dart';

// **************************************************************************
// SuperEnumGenerator
// **************************************************************************

@immutable
abstract class AuthEvent extends Equatable {
  const AuthEvent(this._type);

  factory AuthEvent.authCheckRequest() = AuthCheckRequest;

  factory AuthEvent.signOut() = SignOut;

  final _AuthEvent _type;

//ignore: missing_return
  R when<R>(
      {@required R Function(AuthCheckRequest) authCheckRequest,
      @required R Function(SignOut) signOut}) {
    assert(() {
      if (authCheckRequest == null || signOut == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _AuthEvent.AuthCheckRequest:
        return authCheckRequest(this as AuthCheckRequest);
      case _AuthEvent.SignOut:
        return signOut(this as SignOut);
    }
  }

//ignore: missing_return
  Future<R> asyncWhen<R>(
      {@required FutureOr<R> Function(AuthCheckRequest) authCheckRequest,
      @required FutureOr<R> Function(SignOut) signOut}) {
    assert(() {
      if (authCheckRequest == null || signOut == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _AuthEvent.AuthCheckRequest:
        return authCheckRequest(this as AuthCheckRequest);
      case _AuthEvent.SignOut:
        return signOut(this as SignOut);
    }
  }

  R whenOrElse<R>(
      {R Function(AuthCheckRequest) authCheckRequest,
      R Function(SignOut) signOut,
      @required R Function(AuthEvent) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _AuthEvent.AuthCheckRequest:
        if (authCheckRequest == null) break;
        return authCheckRequest(this as AuthCheckRequest);
      case _AuthEvent.SignOut:
        if (signOut == null) break;
        return signOut(this as SignOut);
    }
    return orElse(this);
  }

  Future<R> asyncWhenOrElse<R>(
      {FutureOr<R> Function(AuthCheckRequest) authCheckRequest,
      FutureOr<R> Function(SignOut) signOut,
      @required FutureOr<R> Function(AuthEvent) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _AuthEvent.AuthCheckRequest:
        if (authCheckRequest == null) break;
        return authCheckRequest(this as AuthCheckRequest);
      case _AuthEvent.SignOut:
        if (signOut == null) break;
        return signOut(this as SignOut);
    }
    return orElse(this);
  }

//ignore: missing_return
  Future<void> whenPartial(
      {FutureOr<void> Function(AuthCheckRequest) authCheckRequest,
      FutureOr<void> Function(SignOut) signOut}) {
    assert(() {
      if (authCheckRequest == null && signOut == null) {
        throw 'provide at least one branch';
      }
      return true;
    }());
    switch (this._type) {
      case _AuthEvent.AuthCheckRequest:
        if (authCheckRequest == null) break;
        return authCheckRequest(this as AuthCheckRequest);
      case _AuthEvent.SignOut:
        if (signOut == null) break;
        return signOut(this as SignOut);
    }
  }

  @override
  List get props => const [];
}

@immutable
class AuthCheckRequest extends AuthEvent {
  const AuthCheckRequest._() : super(_AuthEvent.AuthCheckRequest);

  factory AuthCheckRequest() {
    _instance ??= const AuthCheckRequest._();
    return _instance;
  }

  static AuthCheckRequest _instance;
}

@immutable
class SignOut extends AuthEvent {
  const SignOut._() : super(_AuthEvent.SignOut);

  factory SignOut() {
    _instance ??= const SignOut._();
    return _instance;
  }

  static SignOut _instance;
}

@immutable
abstract class AuthState extends Equatable {
  const AuthState(this._type);

  factory AuthState.initial() = Initial;

  factory AuthState.authed() = Authed;

  factory AuthState.unAuthed() = UnAuthed;

  final _AuthState _type;

//ignore: missing_return
  R when<R>(
      {@required R Function(Initial) initial,
      @required R Function(Authed) authed,
      @required R Function(UnAuthed) unAuthed}) {
    assert(() {
      if (initial == null || authed == null || unAuthed == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _AuthState.Initial:
        return initial(this as Initial);
      case _AuthState.Authed:
        return authed(this as Authed);
      case _AuthState.UnAuthed:
        return unAuthed(this as UnAuthed);
    }
  }

//ignore: missing_return
  Future<R> asyncWhen<R>(
      {@required FutureOr<R> Function(Initial) initial,
      @required FutureOr<R> Function(Authed) authed,
      @required FutureOr<R> Function(UnAuthed) unAuthed}) {
    assert(() {
      if (initial == null || authed == null || unAuthed == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _AuthState.Initial:
        return initial(this as Initial);
      case _AuthState.Authed:
        return authed(this as Authed);
      case _AuthState.UnAuthed:
        return unAuthed(this as UnAuthed);
    }
  }

  R whenOrElse<R>(
      {R Function(Initial) initial,
      R Function(Authed) authed,
      R Function(UnAuthed) unAuthed,
      @required R Function(AuthState) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _AuthState.Initial:
        if (initial == null) break;
        return initial(this as Initial);
      case _AuthState.Authed:
        if (authed == null) break;
        return authed(this as Authed);
      case _AuthState.UnAuthed:
        if (unAuthed == null) break;
        return unAuthed(this as UnAuthed);
    }
    return orElse(this);
  }

  Future<R> asyncWhenOrElse<R>(
      {FutureOr<R> Function(Initial) initial,
      FutureOr<R> Function(Authed) authed,
      FutureOr<R> Function(UnAuthed) unAuthed,
      @required FutureOr<R> Function(AuthState) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _AuthState.Initial:
        if (initial == null) break;
        return initial(this as Initial);
      case _AuthState.Authed:
        if (authed == null) break;
        return authed(this as Authed);
      case _AuthState.UnAuthed:
        if (unAuthed == null) break;
        return unAuthed(this as UnAuthed);
    }
    return orElse(this);
  }

//ignore: missing_return
  Future<void> whenPartial(
      {FutureOr<void> Function(Initial) initial,
      FutureOr<void> Function(Authed) authed,
      FutureOr<void> Function(UnAuthed) unAuthed}) {
    assert(() {
      if (initial == null && authed == null && unAuthed == null) {
        throw 'provide at least one branch';
      }
      return true;
    }());
    switch (this._type) {
      case _AuthState.Initial:
        if (initial == null) break;
        return initial(this as Initial);
      case _AuthState.Authed:
        if (authed == null) break;
        return authed(this as Authed);
      case _AuthState.UnAuthed:
        if (unAuthed == null) break;
        return unAuthed(this as UnAuthed);
    }
  }

  @override
  List get props => const [];
}

@immutable
class Initial extends AuthState {
  const Initial._() : super(_AuthState.Initial);

  factory Initial() {
    _instance ??= const Initial._();
    return _instance;
  }

  static Initial _instance;
}

@immutable
class Authed extends AuthState {
  const Authed._() : super(_AuthState.Authed);

  factory Authed() {
    _instance ??= const Authed._();
    return _instance;
  }

  static Authed _instance;
}

@immutable
class UnAuthed extends AuthState {
  const UnAuthed._() : super(_AuthState.UnAuthed);

  factory UnAuthed() {
    _instance ??= const UnAuthed._();
    return _instance;
  }

  static UnAuthed _instance;
}
