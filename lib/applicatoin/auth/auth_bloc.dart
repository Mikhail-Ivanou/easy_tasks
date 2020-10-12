import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:easy_tasks/domain/auth/i_auth_facade.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_bloc.freezed.dart';

part 'auth_event.dart';

part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;

  AuthBloc(this._authFacade) : super(const AuthState.initial());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.when(
      authCheckRequest: () async* {
        final user = _authFacade.getSignedInUser();
        yield user == null
            ? const AuthState.unAuthed()
            : const AuthState.authed();
      },
      signOut: () async* {
        await _authFacade.signOut();
        yield const AuthState.unAuthed();
      },
    );
  }
}
