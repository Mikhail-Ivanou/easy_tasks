import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:easy_tasks/domain/auth/auth_response.dart';
import 'package:easy_tasks/domain/auth/i_auth_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'sign_in_form_bloc.freezed.dart';

part 'sign_in_form_event.dart';

part 'sign_in_form_state.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade _authFacade;

  SignInFormBloc(this._authFacade) : super(SignInFormState.initial());

  @override
  Stream<SignInFormState> mapEventToState(
    SignInFormEvent event,
  ) async* {
    yield* event.when(
      emailChanged: (email) async* {
        yield state.copyWith(
          emailAddress: email,
          authResult: const AuthResponse.empty(),
        );
      },
      passwordChanged: (password) async* {
        yield state.copyWith(
          password: password,
          authResult: const AuthResponse.empty(),
        );
      },
      registerWithCredentials: () async* {
        yield* _performAction(_authFacade.registerWithEmailAndPassword);
      },
      signInWithCredentials: () async* {
        yield* _performAction(_authFacade.signInWithEmailAndPassword);
      },
      signInWithGoogle: () async* {
        yield state.copyWith(
          isSubmitting: true,
          authResult: const AuthResponse.empty(),
        );
        final result = await _authFacade.signInWithGoogle();
        yield state.copyWith(
          isSubmitting: false,
          authResult: result,
        );
      },
      switchPasswordVisibility: () async* {
        yield state.copyWith(
          isPasswordVisible: !state.isPasswordVisible,
          authResult: const AuthResponse.empty(),
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
    AuthResponse result = const AuthResponse.empty();

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
