part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;

  const factory AuthState.authed() = _Authed;

  const factory AuthState.unAuthed() = _UnAuthed;
}
