import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:easy_tasks/domain/auth/i_auth_facade.dart';
import 'package:injectable/injectable.dart';
import 'package:super_enum/super_enum.dart';

part 'auth_event.dart';

part 'auth_state.dart';

part 'auth_bloc.g.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;

  AuthBloc(this._authFacade) : super(AuthState.initial());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.when(
      authCheckRequest: (e) async* {
        final userOption = _authFacade.getSignedInUser();
        yield userOption == null ? AuthState.unAuthed() : AuthState.authed();
      },
      signOut: (e) async* {
        await _authFacade.signOut();
        yield AuthState.unAuthed();
      },
    );
  }
}
