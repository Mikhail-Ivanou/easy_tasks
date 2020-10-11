import 'package:easy_tasks/domain/auth/user.dart';
import 'package:super_enum/super_enum.dart';

part 'auth_response.g.dart';

@superEnum
enum _AuthResponse {
  @Data(fields: [DataField<SignedUser>('user')])
  Success,
  @Data(fields: [DataField<AuthError>('error')])
  Error,
  @object
  Empty,
}

@superEnum
enum _AuthError {
  @object
  CancelledByUser,
  @object
  EmailAlreadyInUse,
  @object
  InvalidCredentials,
  @object
  ServerError,
}
