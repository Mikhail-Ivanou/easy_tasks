part of 'reset_password_bloc.dart';

@freezed
abstract class ResetPasswordState with _$ResetPasswordState {
  const factory ResetPasswordState({
    @required String emailAddress,
    @required bool validEmail,
    @required bool isSubmitting,
    @required ResetPasswordResponse result,
    @required bool showErrorMessages,
  }) = _ResetPasswordState;

  factory ResetPasswordState.initial() => const ResetPasswordState(
        emailAddress: '',
        validEmail: false,
        isSubmitting: false,
        result: ResetPasswordResponse.empty(),
        showErrorMessages: false,
      );
}
