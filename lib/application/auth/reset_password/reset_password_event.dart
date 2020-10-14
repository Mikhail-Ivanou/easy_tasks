part of 'reset_password_bloc.dart';

@freezed
abstract class ResetPasswordEvent with _$ResetPasswordEvent {
  const factory ResetPasswordEvent.emailChanged({@required String email}) =
      EmailChanged;
  const factory ResetPasswordEvent.resetPassword() = ResetPassword;
}
