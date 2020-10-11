part of 'sign_in_form_bloc.dart';

@superEnum
enum _SignInFormEvent {
  @Data(fields: [DataField<String>('email')])
  EmailChanged,
  @Data(fields: [DataField<String>('password')])
  PasswordChanged,
  @object
  RegisterWithCredentials,
  @object
  SignInWithCredentials,
  @object
  SignInWithGoogle,
}
