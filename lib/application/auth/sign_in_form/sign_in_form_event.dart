part of 'sign_in_form_bloc.dart';

@freezed
abstract class SignInFormEvent with _$SignInFormEvent {
  const factory SignInFormEvent.emailChanged({@required String email}) =
      EmailChanged;
  const factory SignInFormEvent.passwordChanged({@required String password}) =
      PasswordChanged;
  const factory SignInFormEvent.registerWithCredentials() =
      RegisterWithCredentials;
  const factory SignInFormEvent.signInWithCredentials() = SignInWithCredentials;
  const factory SignInFormEvent.signInWithGoogle() = SignInWithGoogle;
  const factory SignInFormEvent.switchPasswordVisibility() =
      SwitchPasswordVisibility;
}
