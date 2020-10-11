// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_response.dart';

// **************************************************************************
// SuperEnumGenerator
// **************************************************************************

@immutable
abstract class AuthResponse extends Equatable {
  const AuthResponse(this._type);

  factory AuthResponse.success({@required SignedUser user}) = Success;

  factory AuthResponse.error({@required dynamic error}) = Error;

  factory AuthResponse.empty() = Empty;

  final _AuthResponse _type;

//ignore: missing_return
  R when<R>(
      {@required R Function(Success) success,
      @required R Function(Error) error,
      @required R Function(Empty) empty}) {
    assert(() {
      if (success == null || error == null || empty == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _AuthResponse.Success:
        return success(this as Success);
      case _AuthResponse.Error:
        return error(this as Error);
      case _AuthResponse.Empty:
        return empty(this as Empty);
    }
  }

//ignore: missing_return
  Future<R> asyncWhen<R>(
      {@required FutureOr<R> Function(Success) success,
      @required FutureOr<R> Function(Error) error,
      @required FutureOr<R> Function(Empty) empty}) {
    assert(() {
      if (success == null || error == null || empty == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _AuthResponse.Success:
        return success(this as Success);
      case _AuthResponse.Error:
        return error(this as Error);
      case _AuthResponse.Empty:
        return empty(this as Empty);
    }
  }

  R whenOrElse<R>(
      {R Function(Success) success,
      R Function(Error) error,
      R Function(Empty) empty,
      @required R Function(AuthResponse) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _AuthResponse.Success:
        if (success == null) break;
        return success(this as Success);
      case _AuthResponse.Error:
        if (error == null) break;
        return error(this as Error);
      case _AuthResponse.Empty:
        if (empty == null) break;
        return empty(this as Empty);
    }
    return orElse(this);
  }

  Future<R> asyncWhenOrElse<R>(
      {FutureOr<R> Function(Success) success,
      FutureOr<R> Function(Error) error,
      FutureOr<R> Function(Empty) empty,
      @required FutureOr<R> Function(AuthResponse) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _AuthResponse.Success:
        if (success == null) break;
        return success(this as Success);
      case _AuthResponse.Error:
        if (error == null) break;
        return error(this as Error);
      case _AuthResponse.Empty:
        if (empty == null) break;
        return empty(this as Empty);
    }
    return orElse(this);
  }

//ignore: missing_return
  Future<void> whenPartial(
      {FutureOr<void> Function(Success) success,
      FutureOr<void> Function(Error) error,
      FutureOr<void> Function(Empty) empty}) {
    assert(() {
      if (success == null && error == null && empty == null) {
        throw 'provide at least one branch';
      }
      return true;
    }());
    switch (this._type) {
      case _AuthResponse.Success:
        if (success == null) break;
        return success(this as Success);
      case _AuthResponse.Error:
        if (error == null) break;
        return error(this as Error);
      case _AuthResponse.Empty:
        if (empty == null) break;
        return empty(this as Empty);
    }
  }

  @override
  List get props => const [];
}

@immutable
class Success extends AuthResponse {
  const Success({@required this.user}) : super(_AuthResponse.Success);

  final SignedUser user;

  @override
  String toString() => 'Success(user:${this.user})';
  @override
  List get props => [user];
}

@immutable
class Error extends AuthResponse {
  const Error({@required this.error}) : super(_AuthResponse.Error);

  final dynamic error;

  @override
  String toString() => 'Error(error:${this.error})';
  @override
  List get props => [error];
}

@immutable
class Empty extends AuthResponse {
  const Empty._() : super(_AuthResponse.Empty);

  factory Empty() {
    _instance ??= const Empty._();
    return _instance;
  }

  static Empty _instance;
}

@immutable
abstract class AuthError extends Equatable {
  const AuthError(this._type);

  factory AuthError.cancelledByUser() = CancelledByUser;

  factory AuthError.emailAlreadyInUse() = EmailAlreadyInUse;

  factory AuthError.invalidCredentials() = InvalidCredentials;

  factory AuthError.serverError() = ServerError;

  final _AuthError _type;

//ignore: missing_return
  R when<R>(
      {@required R Function(CancelledByUser) cancelledByUser,
      @required R Function(EmailAlreadyInUse) emailAlreadyInUse,
      @required R Function(InvalidCredentials) invalidCredentials,
      @required R Function(ServerError) serverError}) {
    assert(() {
      if (cancelledByUser == null ||
          emailAlreadyInUse == null ||
          invalidCredentials == null ||
          serverError == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _AuthError.CancelledByUser:
        return cancelledByUser(this as CancelledByUser);
      case _AuthError.EmailAlreadyInUse:
        return emailAlreadyInUse(this as EmailAlreadyInUse);
      case _AuthError.InvalidCredentials:
        return invalidCredentials(this as InvalidCredentials);
      case _AuthError.ServerError:
        return serverError(this as ServerError);
    }
  }

//ignore: missing_return
  Future<R> asyncWhen<R>(
      {@required FutureOr<R> Function(CancelledByUser) cancelledByUser,
      @required FutureOr<R> Function(EmailAlreadyInUse) emailAlreadyInUse,
      @required FutureOr<R> Function(InvalidCredentials) invalidCredentials,
      @required FutureOr<R> Function(ServerError) serverError}) {
    assert(() {
      if (cancelledByUser == null ||
          emailAlreadyInUse == null ||
          invalidCredentials == null ||
          serverError == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _AuthError.CancelledByUser:
        return cancelledByUser(this as CancelledByUser);
      case _AuthError.EmailAlreadyInUse:
        return emailAlreadyInUse(this as EmailAlreadyInUse);
      case _AuthError.InvalidCredentials:
        return invalidCredentials(this as InvalidCredentials);
      case _AuthError.ServerError:
        return serverError(this as ServerError);
    }
  }

  R whenOrElse<R>(
      {R Function(CancelledByUser) cancelledByUser,
      R Function(EmailAlreadyInUse) emailAlreadyInUse,
      R Function(InvalidCredentials) invalidCredentials,
      R Function(ServerError) serverError,
      @required R Function(AuthError) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _AuthError.CancelledByUser:
        if (cancelledByUser == null) break;
        return cancelledByUser(this as CancelledByUser);
      case _AuthError.EmailAlreadyInUse:
        if (emailAlreadyInUse == null) break;
        return emailAlreadyInUse(this as EmailAlreadyInUse);
      case _AuthError.InvalidCredentials:
        if (invalidCredentials == null) break;
        return invalidCredentials(this as InvalidCredentials);
      case _AuthError.ServerError:
        if (serverError == null) break;
        return serverError(this as ServerError);
    }
    return orElse(this);
  }

  Future<R> asyncWhenOrElse<R>(
      {FutureOr<R> Function(CancelledByUser) cancelledByUser,
      FutureOr<R> Function(EmailAlreadyInUse) emailAlreadyInUse,
      FutureOr<R> Function(InvalidCredentials) invalidCredentials,
      FutureOr<R> Function(ServerError) serverError,
      @required FutureOr<R> Function(AuthError) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _AuthError.CancelledByUser:
        if (cancelledByUser == null) break;
        return cancelledByUser(this as CancelledByUser);
      case _AuthError.EmailAlreadyInUse:
        if (emailAlreadyInUse == null) break;
        return emailAlreadyInUse(this as EmailAlreadyInUse);
      case _AuthError.InvalidCredentials:
        if (invalidCredentials == null) break;
        return invalidCredentials(this as InvalidCredentials);
      case _AuthError.ServerError:
        if (serverError == null) break;
        return serverError(this as ServerError);
    }
    return orElse(this);
  }

//ignore: missing_return
  Future<void> whenPartial(
      {FutureOr<void> Function(CancelledByUser) cancelledByUser,
      FutureOr<void> Function(EmailAlreadyInUse) emailAlreadyInUse,
      FutureOr<void> Function(InvalidCredentials) invalidCredentials,
      FutureOr<void> Function(ServerError) serverError}) {
    assert(() {
      if (cancelledByUser == null &&
          emailAlreadyInUse == null &&
          invalidCredentials == null &&
          serverError == null) {
        throw 'provide at least one branch';
      }
      return true;
    }());
    switch (this._type) {
      case _AuthError.CancelledByUser:
        if (cancelledByUser == null) break;
        return cancelledByUser(this as CancelledByUser);
      case _AuthError.EmailAlreadyInUse:
        if (emailAlreadyInUse == null) break;
        return emailAlreadyInUse(this as EmailAlreadyInUse);
      case _AuthError.InvalidCredentials:
        if (invalidCredentials == null) break;
        return invalidCredentials(this as InvalidCredentials);
      case _AuthError.ServerError:
        if (serverError == null) break;
        return serverError(this as ServerError);
    }
  }

  @override
  List get props => const [];
}

@immutable
class CancelledByUser extends AuthError {
  const CancelledByUser._() : super(_AuthError.CancelledByUser);

  factory CancelledByUser() {
    _instance ??= const CancelledByUser._();
    return _instance;
  }

  static CancelledByUser _instance;
}

@immutable
class EmailAlreadyInUse extends AuthError {
  const EmailAlreadyInUse._() : super(_AuthError.EmailAlreadyInUse);

  factory EmailAlreadyInUse() {
    _instance ??= const EmailAlreadyInUse._();
    return _instance;
  }

  static EmailAlreadyInUse _instance;
}

@immutable
class InvalidCredentials extends AuthError {
  const InvalidCredentials._() : super(_AuthError.InvalidCredentials);

  factory InvalidCredentials() {
    _instance ??= const InvalidCredentials._();
    return _instance;
  }

  static InvalidCredentials _instance;
}

@immutable
class ServerError extends AuthError {
  const ServerError._() : super(_AuthError.ServerError);

  factory ServerError() {
    _instance ??= const ServerError._();
    return _instance;
  }

  static ServerError _instance;
}
