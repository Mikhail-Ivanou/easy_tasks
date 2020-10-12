import 'package:freezed_annotation/freezed_annotation.dart';

part 'reset_password_response.freezed.dart';

@freezed
abstract class ResetPasswordResponse with _$ResetPasswordResponse {
  const factory ResetPasswordResponse.success() = Success;
  const factory ResetPasswordResponse.failure(
      {@required ResetPasswordFailure failure}) = Failure;
  const factory ResetPasswordResponse.empty() = Empty;
}

@freezed
abstract class ResetPasswordFailure with _$ResetPasswordFailure {
  const factory ResetPasswordFailure.userNotFound() = UserNotFound;
  const factory ResetPasswordFailure.serverError() = ServerError;
  const factory ResetPasswordFailure.incorrectEmail() = IncorrectEmail;
}
