part of 'sign_in_form_bloc.dart';

@freezed
abstract class SignInFormState with _$SignInFormState {
  const factory SignInFormState({
    @required String emailAddress,
    @required bool validEmail,
    @required String password,
    @required bool validPassword,
    @required bool isSubmitting,
    @required AuthResponse authResult,
    @required bool showErrorMessages,
    @required bool isPasswordVisible,
  }) = _SignInFormState;

  factory SignInFormState.initial() => const SignInFormState(
      emailAddress: '',
      validEmail: false,
      password: '',
      validPassword: false,
      isSubmitting: false,
      authResult: AuthResponse.empty(),
      showErrorMessages: false,
      isPasswordVisible: false);
}
