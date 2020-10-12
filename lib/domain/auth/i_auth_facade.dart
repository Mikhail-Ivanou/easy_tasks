import 'package:easy_tasks/domain/auth/auth_response.dart';
import 'package:easy_tasks/domain/auth/reset_password_response.dart';
import 'package:easy_tasks/domain/auth/user.dart';
import 'package:flutter/foundation.dart';

abstract class IAuthFacade {
  SignedUser getSignedInUser();

  Future<AuthResponse> registerWithEmailAndPassword({
    @required String emailAddress,
    @required String password,
  });

  Future<AuthResponse> signInWithEmailAndPassword({
    @required String emailAddress,
    @required String password,
  });

  Future<AuthResponse> signInWithGoogle();

  Future<void> signOut();

  Future<ResetPasswordResponse> resetPassword();
}
