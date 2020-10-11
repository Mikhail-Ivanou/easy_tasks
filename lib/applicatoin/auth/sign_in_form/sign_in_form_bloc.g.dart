// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_form_bloc.dart';

// **************************************************************************
// SuperEnumGenerator
// **************************************************************************

@immutable
abstract class SignInFormEvent extends Equatable {
  const SignInFormEvent(this._type);

  factory SignInFormEvent.emailChanged({@required String email}) = EmailChanged;

  factory SignInFormEvent.passwordChanged({@required String password}) =
      PasswordChanged;

  factory SignInFormEvent.registerWithCredentials() = RegisterWithCredentials;

  factory SignInFormEvent.signInWithCredentials() = SignInWithCredentials;

  factory SignInFormEvent.signInWithGoogle() = SignInWithGoogle;

  final _SignInFormEvent _type;

//ignore: missing_return
  R when<R>(
      {@required R Function(EmailChanged) emailChanged,
      @required R Function(PasswordChanged) passwordChanged,
      @required R Function(RegisterWithCredentials) registerWithCredentials,
      @required R Function(SignInWithCredentials) signInWithCredentials,
      @required R Function(SignInWithGoogle) signInWithGoogle}) {
    assert(() {
      if (emailChanged == null ||
          passwordChanged == null ||
          registerWithCredentials == null ||
          signInWithCredentials == null ||
          signInWithGoogle == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _SignInFormEvent.EmailChanged:
        return emailChanged(this as EmailChanged);
      case _SignInFormEvent.PasswordChanged:
        return passwordChanged(this as PasswordChanged);
      case _SignInFormEvent.RegisterWithCredentials:
        return registerWithCredentials(this as RegisterWithCredentials);
      case _SignInFormEvent.SignInWithCredentials:
        return signInWithCredentials(this as SignInWithCredentials);
      case _SignInFormEvent.SignInWithGoogle:
        return signInWithGoogle(this as SignInWithGoogle);
    }
  }

//ignore: missing_return
  Future<R> asyncWhen<R>(
      {@required
          FutureOr<R> Function(EmailChanged) emailChanged,
      @required
          FutureOr<R> Function(PasswordChanged) passwordChanged,
      @required
          FutureOr<R> Function(RegisterWithCredentials) registerWithCredentials,
      @required
          FutureOr<R> Function(SignInWithCredentials) signInWithCredentials,
      @required
          FutureOr<R> Function(SignInWithGoogle) signInWithGoogle}) {
    assert(() {
      if (emailChanged == null ||
          passwordChanged == null ||
          registerWithCredentials == null ||
          signInWithCredentials == null ||
          signInWithGoogle == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _SignInFormEvent.EmailChanged:
        return emailChanged(this as EmailChanged);
      case _SignInFormEvent.PasswordChanged:
        return passwordChanged(this as PasswordChanged);
      case _SignInFormEvent.RegisterWithCredentials:
        return registerWithCredentials(this as RegisterWithCredentials);
      case _SignInFormEvent.SignInWithCredentials:
        return signInWithCredentials(this as SignInWithCredentials);
      case _SignInFormEvent.SignInWithGoogle:
        return signInWithGoogle(this as SignInWithGoogle);
    }
  }

  R whenOrElse<R>(
      {R Function(EmailChanged) emailChanged,
      R Function(PasswordChanged) passwordChanged,
      R Function(RegisterWithCredentials) registerWithCredentials,
      R Function(SignInWithCredentials) signInWithCredentials,
      R Function(SignInWithGoogle) signInWithGoogle,
      @required R Function(SignInFormEvent) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _SignInFormEvent.EmailChanged:
        if (emailChanged == null) break;
        return emailChanged(this as EmailChanged);
      case _SignInFormEvent.PasswordChanged:
        if (passwordChanged == null) break;
        return passwordChanged(this as PasswordChanged);
      case _SignInFormEvent.RegisterWithCredentials:
        if (registerWithCredentials == null) break;
        return registerWithCredentials(this as RegisterWithCredentials);
      case _SignInFormEvent.SignInWithCredentials:
        if (signInWithCredentials == null) break;
        return signInWithCredentials(this as SignInWithCredentials);
      case _SignInFormEvent.SignInWithGoogle:
        if (signInWithGoogle == null) break;
        return signInWithGoogle(this as SignInWithGoogle);
    }
    return orElse(this);
  }

  Future<R> asyncWhenOrElse<R>(
      {FutureOr<R> Function(EmailChanged) emailChanged,
      FutureOr<R> Function(PasswordChanged) passwordChanged,
      FutureOr<R> Function(RegisterWithCredentials) registerWithCredentials,
      FutureOr<R> Function(SignInWithCredentials) signInWithCredentials,
      FutureOr<R> Function(SignInWithGoogle) signInWithGoogle,
      @required FutureOr<R> Function(SignInFormEvent) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _SignInFormEvent.EmailChanged:
        if (emailChanged == null) break;
        return emailChanged(this as EmailChanged);
      case _SignInFormEvent.PasswordChanged:
        if (passwordChanged == null) break;
        return passwordChanged(this as PasswordChanged);
      case _SignInFormEvent.RegisterWithCredentials:
        if (registerWithCredentials == null) break;
        return registerWithCredentials(this as RegisterWithCredentials);
      case _SignInFormEvent.SignInWithCredentials:
        if (signInWithCredentials == null) break;
        return signInWithCredentials(this as SignInWithCredentials);
      case _SignInFormEvent.SignInWithGoogle:
        if (signInWithGoogle == null) break;
        return signInWithGoogle(this as SignInWithGoogle);
    }
    return orElse(this);
  }

//ignore: missing_return
  Future<void> whenPartial(
      {FutureOr<void> Function(EmailChanged) emailChanged,
      FutureOr<void> Function(PasswordChanged) passwordChanged,
      FutureOr<void> Function(RegisterWithCredentials) registerWithCredentials,
      FutureOr<void> Function(SignInWithCredentials) signInWithCredentials,
      FutureOr<void> Function(SignInWithGoogle) signInWithGoogle}) {
    assert(() {
      if (emailChanged == null &&
          passwordChanged == null &&
          registerWithCredentials == null &&
          signInWithCredentials == null &&
          signInWithGoogle == null) {
        throw 'provide at least one branch';
      }
      return true;
    }());
    switch (this._type) {
      case _SignInFormEvent.EmailChanged:
        if (emailChanged == null) break;
        return emailChanged(this as EmailChanged);
      case _SignInFormEvent.PasswordChanged:
        if (passwordChanged == null) break;
        return passwordChanged(this as PasswordChanged);
      case _SignInFormEvent.RegisterWithCredentials:
        if (registerWithCredentials == null) break;
        return registerWithCredentials(this as RegisterWithCredentials);
      case _SignInFormEvent.SignInWithCredentials:
        if (signInWithCredentials == null) break;
        return signInWithCredentials(this as SignInWithCredentials);
      case _SignInFormEvent.SignInWithGoogle:
        if (signInWithGoogle == null) break;
        return signInWithGoogle(this as SignInWithGoogle);
    }
  }

  @override
  List get props => const [];
}

@immutable
class EmailChanged extends SignInFormEvent {
  const EmailChanged({@required this.email})
      : super(_SignInFormEvent.EmailChanged);

  final String email;

  @override
  String toString() => 'EmailChanged(email:${this.email})';
  @override
  List get props => [email];
}

@immutable
class PasswordChanged extends SignInFormEvent {
  const PasswordChanged({@required this.password})
      : super(_SignInFormEvent.PasswordChanged);

  final String password;

  @override
  String toString() => 'PasswordChanged(password:${this.password})';
  @override
  List get props => [password];
}

@immutable
class RegisterWithCredentials extends SignInFormEvent {
  const RegisterWithCredentials._()
      : super(_SignInFormEvent.RegisterWithCredentials);

  factory RegisterWithCredentials() {
    _instance ??= const RegisterWithCredentials._();
    return _instance;
  }

  static RegisterWithCredentials _instance;
}

@immutable
class SignInWithCredentials extends SignInFormEvent {
  const SignInWithCredentials._()
      : super(_SignInFormEvent.SignInWithCredentials);

  factory SignInWithCredentials() {
    _instance ??= const SignInWithCredentials._();
    return _instance;
  }

  static SignInWithCredentials _instance;
}

@immutable
class SignInWithGoogle extends SignInFormEvent {
  const SignInWithGoogle._() : super(_SignInFormEvent.SignInWithGoogle);

  factory SignInWithGoogle() {
    _instance ??= const SignInWithGoogle._();
    return _instance;
  }

  static SignInWithGoogle _instance;
}
