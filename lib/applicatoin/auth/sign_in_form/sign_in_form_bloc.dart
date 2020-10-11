import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:easy_tasks/domain/auth/auth_response.dart';
import 'package:easy_tasks/domain/auth/i_auth_facade.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:super_enum/super_enum.dart';

part 'sign_in_form_event.dart';

part 'sign_in_form_state.dart';

part 'sign_in_form_bloc.g.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade _authFacade;

  SignInFormBloc(this._authFacade) : super(SignInFormState.initial());

  @override
  Stream<SignInFormState> mapEventToState(
    SignInFormEvent event,
  ) async* {
    yield* event.when(
      emailChanged: (e) async* {
        yield state.copyWith(
          emailAddress: e.email,
          authResult: AuthResponse.empty(),
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: e.password,
          authResult: AuthResponse.empty(),
        );
      },
      registerWithCredentials: (e) async* {
        yield* _performAction(_authFacade.registerWithEmailAndPassword);
      },
      signInWithCredentials: (e) async* {
        yield* _performAction(_authFacade.signInWithEmailAndPassword);
      },
      signInWithGoogle: (e) async* {
        yield state.copyWith(
          isSubmitting: true,
          authResult: AuthResponse.empty(),
        );
        final result = await _authFacade.signInWithGoogle();
        yield state.copyWith(
          isSubmitting: false,
          authResult: result,
        );
      },
    );
  }

  Stream<SignInFormState> _performAction(
      Future<AuthResponse> Function({
    @required String emailAddress,
    @required String password,
  })
          forwardedCall) async* {
    AuthResponse result = AuthResponse.empty();

    final isEmailValid = state.validEmail;
    final isPasswordValid = state.validPassword;
    if (isEmailValid && isPasswordValid) {
      yield state.copyWith(
        isSubmitting: true,
        authResult: result,
      );
      result = await forwardedCall(
          emailAddress: state.emailAddress, password: state.password);
    }

    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      authResult: result,
    );
  }
}
