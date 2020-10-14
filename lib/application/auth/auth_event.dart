part of 'auth_bloc.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authCheckRequest() = _AuthCheckRequest;
  const factory AuthEvent.signOut() = _SignOut;
  const factory AuthEvent.checkContentCreated() = _CheckContentCreated;
}
