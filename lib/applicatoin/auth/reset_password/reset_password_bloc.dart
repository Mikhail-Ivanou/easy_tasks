import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:easy_tasks/domain/auth/i_auth_facade.dart';
import 'package:easy_tasks/domain/auth/reset_password_response.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reset_password_event.dart';

part 'reset_password_state.dart';

part 'reset_password_bloc.freezed.dart';

@injectable
class ResetPasswordBloc extends Bloc<ResetPasswordEvent, ResetPasswordState> {
  final IAuthFacade _authFacade;

  ResetPasswordBloc(this._authFacade) : super(ResetPasswordState.initial());

  @override
  Stream<ResetPasswordState> mapEventToState(
    ResetPasswordEvent event,
  ) async* {
    yield* event.when(
      emailChanged: (email) async* {
        yield state.copyWith(
          emailAddress: email,
          result: const ResetPasswordResponse.empty(),
        );
      },
      resetPassword: () async* {
        yield state.copyWith(
          isSubmitting: true,
          result: const ResetPasswordResponse.empty(),
        );
        final result = await _authFacade.resetPassword();
        yield state.copyWith(
          isSubmitting: false,
          result: result,
        );
      },
    );
  }
}
