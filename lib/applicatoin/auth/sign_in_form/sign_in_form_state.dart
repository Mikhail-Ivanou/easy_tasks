part of 'sign_in_form_bloc.dart';

class SignInFormState {
  final String emailAddress;
  final bool validEmail;
  final String password;
  final bool validPassword;
  final bool isSubmitting;
  final AuthResponse authResult;
  final bool showErrorMessages;

  const SignInFormState({
    @required this.emailAddress,
    @required this.validEmail,
    @required this.password,
    @required this.validPassword,
    @required this.isSubmitting,
    @required this.authResult,
    @required this.showErrorMessages,
  });

  factory SignInFormState.initial() => const SignInFormState(
        emailAddress: '',
        validEmail: false,
        password: '',
        validPassword: false,
        isSubmitting: false,
        authResult: null,
        showErrorMessages: false,
      );

  SignInFormState copyWith({
    String emailAddress,
    bool validEmail,
    String password,
    bool validPassword,
    bool isSubmitting,
    AuthResponse authResult,
    bool showErrorMessages,
  }) {
    if ((emailAddress == null || identical(emailAddress, this.emailAddress)) &&
        (validEmail == null || identical(validEmail, this.validEmail)) &&
        (password == null || identical(password, this.password)) &&
        (validPassword == null ||
            identical(validPassword, this.validPassword)) &&
        (isSubmitting == null || identical(isSubmitting, this.isSubmitting)) &&
        (authResult == null || identical(authResult, this.authResult)) &&
        (showErrorMessages == null ||
            identical(showErrorMessages, this.showErrorMessages))) {
      return this;
    }

    return SignInFormState(
      emailAddress: emailAddress ?? this.emailAddress,
      validEmail: validEmail ?? this.validEmail,
      password: password ?? this.password,
      validPassword: validPassword ?? this.validPassword,
      isSubmitting: isSubmitting ?? this.isSubmitting,
      authResult: authResult ?? this.authResult,
      showErrorMessages: showErrorMessages ?? this.showErrorMessages,
    );
  }
}
