import 'package:freezed_annotation/freezed_annotation.dart';

part 'reset_password_response.freezed.dart';

@freezed
abstract class ResetPasswordResponse with _$ResetPasswordResponse {
  const factory ResetPasswordResponse.success() = _Success;
  const factory ResetPasswordResponse.failure(
      {@required ResetPasswordFailure failure}) = _Failure;
  const factory ResetPasswordResponse.empty() = _Empty;
}

@freezed
abstract class ResetPasswordFailure with _$ResetPasswordFailure {
  const factory ResetPasswordFailure.userNotFound() = _UserNotFound;
  const factory ResetPasswordFailure.serverError() = _ServerError;
  const factory ResetPasswordFailure.incorrectEmail() = _IncorrectEmail;
}
