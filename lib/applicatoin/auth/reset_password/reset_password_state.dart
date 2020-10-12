part of 'reset_password_bloc.dart';

class ResetPasswordState {
  final String emailAddress;
  final bool validEmail;
  final bool isSubmitting;
  final ResetPasswordResponse result;
  final bool showErrorMessages;

  const ResetPasswordState({
    @required this.emailAddress,
    @required this.validEmail,
    @required this.isSubmitting,
    @required this.result,
    @required this.showErrorMessages,
  });

  factory ResetPasswordState.initial() => const ResetPasswordState(
        emailAddress: '',
        validEmail: false,
        isSubmitting: false,
        result: null,
        showErrorMessages: false,
      );

  ResetPasswordState copyWith({
    String emailAddress,
    bool validEmail,
    String password,
    bool validPassword,
    bool isSubmitting,
    ResetPasswordResponse result,
    bool showErrorMessages,
  }) {
    if ((emailAddress == null || identical(emailAddress, this.emailAddress)) &&
        (validEmail == null || identical(validEmail, this.validEmail)) &&
        (isSubmitting == null || identical(isSubmitting, this.isSubmitting)) &&
        (result == null || identical(result, this.result)) &&
        (showErrorMessages == null ||
            identical(showErrorMessages, this.showErrorMessages))) {
      return this;
    }

    return ResetPasswordState(
      emailAddress: emailAddress ?? this.emailAddress,
      validEmail: validEmail ?? this.validEmail,
      isSubmitting: isSubmitting ?? this.isSubmitting,
      result: result ?? this.result,
      showErrorMessages: showErrorMessages ?? this.showErrorMessages,
    );
  }
}
