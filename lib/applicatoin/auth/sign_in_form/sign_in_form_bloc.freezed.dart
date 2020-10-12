// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'sign_in_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SignInFormEventTearOff {
  const _$SignInFormEventTearOff();

// ignore: unused_element
  EmailChanged emailChanged({@required String email}) {
    return EmailChanged(
      email: email,
    );
  }

// ignore: unused_element
  PasswordChanged passwordChanged({@required String password}) {
    return PasswordChanged(
      password: password,
    );
  }

// ignore: unused_element
  RegisterWithCredentials registerWithCredentials() {
    return const RegisterWithCredentials();
  }

// ignore: unused_element
  SignInWithCredentials signInWithCredentials() {
    return const SignInWithCredentials();
  }

// ignore: unused_element
  SignInWithGoogle signInWithGoogle() {
    return const SignInWithGoogle();
  }

// ignore: unused_element
  SwitchPasswordVisibility switchPasswordVisibility() {
    return const SwitchPasswordVisibility();
  }
}

/// @nodoc
// ignore: unused_element
const $SignInFormEvent = _$SignInFormEventTearOff();

/// @nodoc
mixin _$SignInFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result registerWithCredentials(),
    @required Result signInWithCredentials(),
    @required Result signInWithGoogle(),
    @required Result switchPasswordVisibility(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result registerWithCredentials(),
    Result signInWithCredentials(),
    Result signInWithGoogle(),
    Result switchPasswordVisibility(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result registerWithCredentials(RegisterWithCredentials value),
    @required Result signInWithCredentials(SignInWithCredentials value),
    @required Result signInWithGoogle(SignInWithGoogle value),
    @required Result switchPasswordVisibility(SwitchPasswordVisibility value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result registerWithCredentials(RegisterWithCredentials value),
    Result signInWithCredentials(SignInWithCredentials value),
    Result signInWithGoogle(SignInWithGoogle value),
    Result switchPasswordVisibility(SwitchPasswordVisibility value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $SignInFormEventCopyWith<$Res> {
  factory $SignInFormEventCopyWith(
          SignInFormEvent value, $Res Function(SignInFormEvent) then) =
      _$SignInFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInFormEventCopyWithImpl<$Res>
    implements $SignInFormEventCopyWith<$Res> {
  _$SignInFormEventCopyWithImpl(this._value, this._then);

  final SignInFormEvent _value;
  // ignore: unused_field
  final $Res Function(SignInFormEvent) _then;
}

/// @nodoc
abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class _$EmailChangedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(
      EmailChanged _value, $Res Function(EmailChanged) _then)
      : super(_value, (v) => _then(v as EmailChanged));

  @override
  EmailChanged get _value => super._value as EmailChanged;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(EmailChanged(
      email: email == freezed ? _value.email : email as String,
    ));
  }
}

/// @nodoc
class _$EmailChanged implements EmailChanged {
  const _$EmailChanged({@required this.email}) : assert(email != null);

  @override
  final String email;

  @override
  String toString() {
    return 'SignInFormEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmailChanged &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @override
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result registerWithCredentials(),
    @required Result signInWithCredentials(),
    @required Result signInWithGoogle(),
    @required Result switchPasswordVisibility(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithCredentials != null);
    assert(signInWithCredentials != null);
    assert(signInWithGoogle != null);
    assert(switchPasswordVisibility != null);
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result registerWithCredentials(),
    Result signInWithCredentials(),
    Result signInWithGoogle(),
    Result switchPasswordVisibility(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result registerWithCredentials(RegisterWithCredentials value),
    @required Result signInWithCredentials(SignInWithCredentials value),
    @required Result signInWithGoogle(SignInWithGoogle value),
    @required Result switchPasswordVisibility(SwitchPasswordVisibility value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithCredentials != null);
    assert(signInWithCredentials != null);
    assert(signInWithGoogle != null);
    assert(switchPasswordVisibility != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result registerWithCredentials(RegisterWithCredentials value),
    Result signInWithCredentials(SignInWithCredentials value),
    Result signInWithGoogle(SignInWithGoogle value),
    Result switchPasswordVisibility(SwitchPasswordVisibility value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements SignInFormEvent {
  const factory EmailChanged({@required String email}) = _$EmailChanged;

  String get email;
  $EmailChangedCopyWith<EmailChanged> get copyWith;
}

/// @nodoc
abstract class $PasswordChangedCopyWith<$Res> {
  factory $PasswordChangedCopyWith(
          PasswordChanged value, $Res Function(PasswordChanged) then) =
      _$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String password});
}

/// @nodoc
class _$PasswordChangedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $PasswordChangedCopyWith<$Res> {
  _$PasswordChangedCopyWithImpl(
      PasswordChanged _value, $Res Function(PasswordChanged) _then)
      : super(_value, (v) => _then(v as PasswordChanged));

  @override
  PasswordChanged get _value => super._value as PasswordChanged;

  @override
  $Res call({
    Object password = freezed,
  }) {
    return _then(PasswordChanged(
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

/// @nodoc
class _$PasswordChanged implements PasswordChanged {
  const _$PasswordChanged({@required this.password}) : assert(password != null);

  @override
  final String password;

  @override
  String toString() {
    return 'SignInFormEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PasswordChanged &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(password);

  @override
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      _$PasswordChangedCopyWithImpl<PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result registerWithCredentials(),
    @required Result signInWithCredentials(),
    @required Result signInWithGoogle(),
    @required Result switchPasswordVisibility(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithCredentials != null);
    assert(signInWithCredentials != null);
    assert(signInWithGoogle != null);
    assert(switchPasswordVisibility != null);
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result registerWithCredentials(),
    Result signInWithCredentials(),
    Result signInWithGoogle(),
    Result switchPasswordVisibility(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result registerWithCredentials(RegisterWithCredentials value),
    @required Result signInWithCredentials(SignInWithCredentials value),
    @required Result signInWithGoogle(SignInWithGoogle value),
    @required Result switchPasswordVisibility(SwitchPasswordVisibility value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithCredentials != null);
    assert(signInWithCredentials != null);
    assert(signInWithGoogle != null);
    assert(switchPasswordVisibility != null);
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result registerWithCredentials(RegisterWithCredentials value),
    Result signInWithCredentials(SignInWithCredentials value),
    Result signInWithGoogle(SignInWithGoogle value),
    Result switchPasswordVisibility(SwitchPasswordVisibility value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements SignInFormEvent {
  const factory PasswordChanged({@required String password}) =
      _$PasswordChanged;

  String get password;
  $PasswordChangedCopyWith<PasswordChanged> get copyWith;
}

/// @nodoc
abstract class $RegisterWithCredentialsCopyWith<$Res> {
  factory $RegisterWithCredentialsCopyWith(RegisterWithCredentials value,
          $Res Function(RegisterWithCredentials) then) =
      _$RegisterWithCredentialsCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterWithCredentialsCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $RegisterWithCredentialsCopyWith<$Res> {
  _$RegisterWithCredentialsCopyWithImpl(RegisterWithCredentials _value,
      $Res Function(RegisterWithCredentials) _then)
      : super(_value, (v) => _then(v as RegisterWithCredentials));

  @override
  RegisterWithCredentials get _value => super._value as RegisterWithCredentials;
}

/// @nodoc
class _$RegisterWithCredentials implements RegisterWithCredentials {
  const _$RegisterWithCredentials();

  @override
  String toString() {
    return 'SignInFormEvent.registerWithCredentials()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is RegisterWithCredentials);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result registerWithCredentials(),
    @required Result signInWithCredentials(),
    @required Result signInWithGoogle(),
    @required Result switchPasswordVisibility(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithCredentials != null);
    assert(signInWithCredentials != null);
    assert(signInWithGoogle != null);
    assert(switchPasswordVisibility != null);
    return registerWithCredentials();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result registerWithCredentials(),
    Result signInWithCredentials(),
    Result signInWithGoogle(),
    Result switchPasswordVisibility(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (registerWithCredentials != null) {
      return registerWithCredentials();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result registerWithCredentials(RegisterWithCredentials value),
    @required Result signInWithCredentials(SignInWithCredentials value),
    @required Result signInWithGoogle(SignInWithGoogle value),
    @required Result switchPasswordVisibility(SwitchPasswordVisibility value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithCredentials != null);
    assert(signInWithCredentials != null);
    assert(signInWithGoogle != null);
    assert(switchPasswordVisibility != null);
    return registerWithCredentials(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result registerWithCredentials(RegisterWithCredentials value),
    Result signInWithCredentials(SignInWithCredentials value),
    Result signInWithGoogle(SignInWithGoogle value),
    Result switchPasswordVisibility(SwitchPasswordVisibility value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (registerWithCredentials != null) {
      return registerWithCredentials(this);
    }
    return orElse();
  }
}

abstract class RegisterWithCredentials implements SignInFormEvent {
  const factory RegisterWithCredentials() = _$RegisterWithCredentials;
}

/// @nodoc
abstract class $SignInWithCredentialsCopyWith<$Res> {
  factory $SignInWithCredentialsCopyWith(SignInWithCredentials value,
          $Res Function(SignInWithCredentials) then) =
      _$SignInWithCredentialsCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInWithCredentialsCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $SignInWithCredentialsCopyWith<$Res> {
  _$SignInWithCredentialsCopyWithImpl(
      SignInWithCredentials _value, $Res Function(SignInWithCredentials) _then)
      : super(_value, (v) => _then(v as SignInWithCredentials));

  @override
  SignInWithCredentials get _value => super._value as SignInWithCredentials;
}

/// @nodoc
class _$SignInWithCredentials implements SignInWithCredentials {
  const _$SignInWithCredentials();

  @override
  String toString() {
    return 'SignInFormEvent.signInWithCredentials()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignInWithCredentials);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result registerWithCredentials(),
    @required Result signInWithCredentials(),
    @required Result signInWithGoogle(),
    @required Result switchPasswordVisibility(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithCredentials != null);
    assert(signInWithCredentials != null);
    assert(signInWithGoogle != null);
    assert(switchPasswordVisibility != null);
    return signInWithCredentials();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result registerWithCredentials(),
    Result signInWithCredentials(),
    Result signInWithGoogle(),
    Result switchPasswordVisibility(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithCredentials != null) {
      return signInWithCredentials();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result registerWithCredentials(RegisterWithCredentials value),
    @required Result signInWithCredentials(SignInWithCredentials value),
    @required Result signInWithGoogle(SignInWithGoogle value),
    @required Result switchPasswordVisibility(SwitchPasswordVisibility value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithCredentials != null);
    assert(signInWithCredentials != null);
    assert(signInWithGoogle != null);
    assert(switchPasswordVisibility != null);
    return signInWithCredentials(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result registerWithCredentials(RegisterWithCredentials value),
    Result signInWithCredentials(SignInWithCredentials value),
    Result signInWithGoogle(SignInWithGoogle value),
    Result switchPasswordVisibility(SwitchPasswordVisibility value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithCredentials != null) {
      return signInWithCredentials(this);
    }
    return orElse();
  }
}

abstract class SignInWithCredentials implements SignInFormEvent {
  const factory SignInWithCredentials() = _$SignInWithCredentials;
}

/// @nodoc
abstract class $SignInWithGoogleCopyWith<$Res> {
  factory $SignInWithGoogleCopyWith(
          SignInWithGoogle value, $Res Function(SignInWithGoogle) then) =
      _$SignInWithGoogleCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInWithGoogleCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $SignInWithGoogleCopyWith<$Res> {
  _$SignInWithGoogleCopyWithImpl(
      SignInWithGoogle _value, $Res Function(SignInWithGoogle) _then)
      : super(_value, (v) => _then(v as SignInWithGoogle));

  @override
  SignInWithGoogle get _value => super._value as SignInWithGoogle;
}

/// @nodoc
class _$SignInWithGoogle implements SignInWithGoogle {
  const _$SignInWithGoogle();

  @override
  String toString() {
    return 'SignInFormEvent.signInWithGoogle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignInWithGoogle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result registerWithCredentials(),
    @required Result signInWithCredentials(),
    @required Result signInWithGoogle(),
    @required Result switchPasswordVisibility(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithCredentials != null);
    assert(signInWithCredentials != null);
    assert(signInWithGoogle != null);
    assert(switchPasswordVisibility != null);
    return signInWithGoogle();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result registerWithCredentials(),
    Result signInWithCredentials(),
    Result signInWithGoogle(),
    Result switchPasswordVisibility(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithGoogle != null) {
      return signInWithGoogle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result registerWithCredentials(RegisterWithCredentials value),
    @required Result signInWithCredentials(SignInWithCredentials value),
    @required Result signInWithGoogle(SignInWithGoogle value),
    @required Result switchPasswordVisibility(SwitchPasswordVisibility value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithCredentials != null);
    assert(signInWithCredentials != null);
    assert(signInWithGoogle != null);
    assert(switchPasswordVisibility != null);
    return signInWithGoogle(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result registerWithCredentials(RegisterWithCredentials value),
    Result signInWithCredentials(SignInWithCredentials value),
    Result signInWithGoogle(SignInWithGoogle value),
    Result switchPasswordVisibility(SwitchPasswordVisibility value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithGoogle != null) {
      return signInWithGoogle(this);
    }
    return orElse();
  }
}

abstract class SignInWithGoogle implements SignInFormEvent {
  const factory SignInWithGoogle() = _$SignInWithGoogle;
}

/// @nodoc
abstract class $SwitchPasswordVisibilityCopyWith<$Res> {
  factory $SwitchPasswordVisibilityCopyWith(SwitchPasswordVisibility value,
          $Res Function(SwitchPasswordVisibility) then) =
      _$SwitchPasswordVisibilityCopyWithImpl<$Res>;
}

/// @nodoc
class _$SwitchPasswordVisibilityCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $SwitchPasswordVisibilityCopyWith<$Res> {
  _$SwitchPasswordVisibilityCopyWithImpl(SwitchPasswordVisibility _value,
      $Res Function(SwitchPasswordVisibility) _then)
      : super(_value, (v) => _then(v as SwitchPasswordVisibility));

  @override
  SwitchPasswordVisibility get _value =>
      super._value as SwitchPasswordVisibility;
}

/// @nodoc
class _$SwitchPasswordVisibility implements SwitchPasswordVisibility {
  const _$SwitchPasswordVisibility();

  @override
  String toString() {
    return 'SignInFormEvent.switchPasswordVisibility()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SwitchPasswordVisibility);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result registerWithCredentials(),
    @required Result signInWithCredentials(),
    @required Result signInWithGoogle(),
    @required Result switchPasswordVisibility(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithCredentials != null);
    assert(signInWithCredentials != null);
    assert(signInWithGoogle != null);
    assert(switchPasswordVisibility != null);
    return switchPasswordVisibility();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result registerWithCredentials(),
    Result signInWithCredentials(),
    Result signInWithGoogle(),
    Result switchPasswordVisibility(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (switchPasswordVisibility != null) {
      return switchPasswordVisibility();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result registerWithCredentials(RegisterWithCredentials value),
    @required Result signInWithCredentials(SignInWithCredentials value),
    @required Result signInWithGoogle(SignInWithGoogle value),
    @required Result switchPasswordVisibility(SwitchPasswordVisibility value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithCredentials != null);
    assert(signInWithCredentials != null);
    assert(signInWithGoogle != null);
    assert(switchPasswordVisibility != null);
    return switchPasswordVisibility(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result registerWithCredentials(RegisterWithCredentials value),
    Result signInWithCredentials(SignInWithCredentials value),
    Result signInWithGoogle(SignInWithGoogle value),
    Result switchPasswordVisibility(SwitchPasswordVisibility value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (switchPasswordVisibility != null) {
      return switchPasswordVisibility(this);
    }
    return orElse();
  }
}

abstract class SwitchPasswordVisibility implements SignInFormEvent {
  const factory SwitchPasswordVisibility() = _$SwitchPasswordVisibility;
}

/// @nodoc
class _$SignInFormStateTearOff {
  const _$SignInFormStateTearOff();

// ignore: unused_element
  _SignInFormState call(
      {@required String emailAddress,
      @required bool validEmail,
      @required String password,
      @required bool validPassword,
      @required bool isSubmitting,
      @required AuthResponse authResult,
      @required bool showErrorMessages,
      @required bool isPasswordVisible}) {
    return _SignInFormState(
      emailAddress: emailAddress,
      validEmail: validEmail,
      password: password,
      validPassword: validPassword,
      isSubmitting: isSubmitting,
      authResult: authResult,
      showErrorMessages: showErrorMessages,
      isPasswordVisible: isPasswordVisible,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SignInFormState = _$SignInFormStateTearOff();

/// @nodoc
mixin _$SignInFormState {
  String get emailAddress;
  bool get validEmail;
  String get password;
  bool get validPassword;
  bool get isSubmitting;
  AuthResponse get authResult;
  bool get showErrorMessages;
  bool get isPasswordVisible;

  $SignInFormStateCopyWith<SignInFormState> get copyWith;
}

/// @nodoc
abstract class $SignInFormStateCopyWith<$Res> {
  factory $SignInFormStateCopyWith(
          SignInFormState value, $Res Function(SignInFormState) then) =
      _$SignInFormStateCopyWithImpl<$Res>;
  $Res call(
      {String emailAddress,
      bool validEmail,
      String password,
      bool validPassword,
      bool isSubmitting,
      AuthResponse authResult,
      bool showErrorMessages,
      bool isPasswordVisible});

  $AuthResponseCopyWith<$Res> get authResult;
}

/// @nodoc
class _$SignInFormStateCopyWithImpl<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  _$SignInFormStateCopyWithImpl(this._value, this._then);

  final SignInFormState _value;
  // ignore: unused_field
  final $Res Function(SignInFormState) _then;

  @override
  $Res call({
    Object emailAddress = freezed,
    Object validEmail = freezed,
    Object password = freezed,
    Object validPassword = freezed,
    Object isSubmitting = freezed,
    Object authResult = freezed,
    Object showErrorMessages = freezed,
    Object isPasswordVisible = freezed,
  }) {
    return _then(_value.copyWith(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as String,
      validEmail:
          validEmail == freezed ? _value.validEmail : validEmail as bool,
      password: password == freezed ? _value.password : password as String,
      validPassword: validPassword == freezed
          ? _value.validPassword
          : validPassword as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      authResult: authResult == freezed
          ? _value.authResult
          : authResult as AuthResponse,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isPasswordVisible: isPasswordVisible == freezed
          ? _value.isPasswordVisible
          : isPasswordVisible as bool,
    ));
  }

  @override
  $AuthResponseCopyWith<$Res> get authResult {
    if (_value.authResult == null) {
      return null;
    }
    return $AuthResponseCopyWith<$Res>(_value.authResult, (value) {
      return _then(_value.copyWith(authResult: value));
    });
  }
}

/// @nodoc
abstract class _$SignInFormStateCopyWith<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  factory _$SignInFormStateCopyWith(
          _SignInFormState value, $Res Function(_SignInFormState) then) =
      __$SignInFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String emailAddress,
      bool validEmail,
      String password,
      bool validPassword,
      bool isSubmitting,
      AuthResponse authResult,
      bool showErrorMessages,
      bool isPasswordVisible});

  @override
  $AuthResponseCopyWith<$Res> get authResult;
}

/// @nodoc
class __$SignInFormStateCopyWithImpl<$Res>
    extends _$SignInFormStateCopyWithImpl<$Res>
    implements _$SignInFormStateCopyWith<$Res> {
  __$SignInFormStateCopyWithImpl(
      _SignInFormState _value, $Res Function(_SignInFormState) _then)
      : super(_value, (v) => _then(v as _SignInFormState));

  @override
  _SignInFormState get _value => super._value as _SignInFormState;

  @override
  $Res call({
    Object emailAddress = freezed,
    Object validEmail = freezed,
    Object password = freezed,
    Object validPassword = freezed,
    Object isSubmitting = freezed,
    Object authResult = freezed,
    Object showErrorMessages = freezed,
    Object isPasswordVisible = freezed,
  }) {
    return _then(_SignInFormState(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as String,
      validEmail:
          validEmail == freezed ? _value.validEmail : validEmail as bool,
      password: password == freezed ? _value.password : password as String,
      validPassword: validPassword == freezed
          ? _value.validPassword
          : validPassword as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      authResult: authResult == freezed
          ? _value.authResult
          : authResult as AuthResponse,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isPasswordVisible: isPasswordVisible == freezed
          ? _value.isPasswordVisible
          : isPasswordVisible as bool,
    ));
  }
}

/// @nodoc
class _$_SignInFormState implements _SignInFormState {
  const _$_SignInFormState(
      {@required this.emailAddress,
      @required this.validEmail,
      @required this.password,
      @required this.validPassword,
      @required this.isSubmitting,
      @required this.authResult,
      @required this.showErrorMessages,
      @required this.isPasswordVisible})
      : assert(emailAddress != null),
        assert(validEmail != null),
        assert(password != null),
        assert(validPassword != null),
        assert(isSubmitting != null),
        assert(authResult != null),
        assert(showErrorMessages != null),
        assert(isPasswordVisible != null);

  @override
  final String emailAddress;
  @override
  final bool validEmail;
  @override
  final String password;
  @override
  final bool validPassword;
  @override
  final bool isSubmitting;
  @override
  final AuthResponse authResult;
  @override
  final bool showErrorMessages;
  @override
  final bool isPasswordVisible;

  @override
  String toString() {
    return 'SignInFormState(emailAddress: $emailAddress, validEmail: $validEmail, password: $password, validPassword: $validPassword, isSubmitting: $isSubmitting, authResult: $authResult, showErrorMessages: $showErrorMessages, isPasswordVisible: $isPasswordVisible)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInFormState &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.validEmail, validEmail) ||
                const DeepCollectionEquality()
                    .equals(other.validEmail, validEmail)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.validPassword, validPassword) ||
                const DeepCollectionEquality()
                    .equals(other.validPassword, validPassword)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.authResult, authResult) ||
                const DeepCollectionEquality()
                    .equals(other.authResult, authResult)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isPasswordVisible, isPasswordVisible) ||
                const DeepCollectionEquality()
                    .equals(other.isPasswordVisible, isPasswordVisible)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(validEmail) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(validPassword) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(authResult) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isPasswordVisible);

  @override
  _$SignInFormStateCopyWith<_SignInFormState> get copyWith =>
      __$SignInFormStateCopyWithImpl<_SignInFormState>(this, _$identity);
}

abstract class _SignInFormState implements SignInFormState {
  const factory _SignInFormState(
      {@required String emailAddress,
      @required bool validEmail,
      @required String password,
      @required bool validPassword,
      @required bool isSubmitting,
      @required AuthResponse authResult,
      @required bool showErrorMessages,
      @required bool isPasswordVisible}) = _$_SignInFormState;

  @override
  String get emailAddress;
  @override
  bool get validEmail;
  @override
  String get password;
  @override
  bool get validPassword;
  @override
  bool get isSubmitting;
  @override
  AuthResponse get authResult;
  @override
  bool get showErrorMessages;
  @override
  bool get isPasswordVisible;
  @override
  _$SignInFormStateCopyWith<_SignInFormState> get copyWith;
}
