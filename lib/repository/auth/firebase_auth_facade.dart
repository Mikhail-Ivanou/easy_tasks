import 'package:easy_tasks/domain/auth/auth_response.dart';
import 'package:easy_tasks/domain/auth/i_auth_facade.dart';
import 'package:easy_tasks/domain/auth/reset_password_response.dart';
import 'package:easy_tasks/domain/auth/user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'firebase_user_mapper.dart';

const ERROR_EMAIL_ALREADY_IN_USE = 'email-already-in-use';
const ERROR_WRONG_PASSWORD = 'wrong-password';
const ERROR_USER_NOT_FOUND = 'user-not-found';
const ERROR_INVALID_EMAIL = 'invalid-email';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  FirebaseAuthFacade(
    this._firebaseAuth,
    this._googleSignIn,
  );

  @override
  Future<AuthResponse> registerWithEmailAndPassword({
    @required String emailAddress,
    @required String password,
  }) async {
    try {
      final result = await _firebaseAuth.createUserWithEmailAndPassword(
          email: emailAddress, password: password);
      return AuthResponse.success(user: result.user.toDomain());
    } on FirebaseAuthException catch (error) {
      if (error.code == ERROR_EMAIL_ALREADY_IN_USE) {
        return const AuthResponse.failure(
            failure: AuthFailure.emailAlreadyInUse());
      } else {
        return const AuthResponse.failure(failure: AuthFailure.serverError());
      }
    } catch (error) {
      return const AuthResponse.failure(failure: AuthFailure.serverError());
    }
  }

  @override
  Future<AuthResponse> signInWithEmailAndPassword({
    @required String emailAddress,
    @required String password,
  }) async {
    try {
      final result = await _firebaseAuth.signInWithEmailAndPassword(
          email: emailAddress, password: password);
      return AuthResponse.success(user: result.user.toDomain());
    } on FirebaseAuthException catch (error) {
      if (error.code == ERROR_WRONG_PASSWORD ||
          error.code == ERROR_USER_NOT_FOUND) {
        return const AuthResponse.failure(
            failure: AuthFailure.invalidCredentials());
      } else {
        return const AuthResponse.failure(failure: AuthFailure.serverError());
      }
    } catch (error) {
      return const AuthResponse.failure(failure: AuthFailure.serverError());
    }
  }

  @override
  Future<AuthResponse> signInWithGoogle() async {
    final googleUser = await _googleSignIn.signIn();
    if (googleUser == null) {
      return const AuthResponse.failure(failure: AuthFailure.cancelledByUser());
    }
    final googleAuthentificaton = await googleUser.authentication;

    final AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuthentificaton.accessToken,
      idToken: googleAuthentificaton.idToken,
    );
    try {
      final result = await _firebaseAuth.signInWithCredential(credential);
      return AuthResponse.success(user: result.user.toDomain());
    } catch (_) {
      return const AuthResponse.failure(failure: AuthFailure.serverError());
    }
  }

  @override
  SignedUser getSignedInUser() => _firebaseAuth.currentUser?.toDomain();

  @override
  Future<void> signOut() {
    return Future.wait([_googleSignIn.signOut(), _firebaseAuth.signOut()]);
  }

  @override
  Future<ResetPasswordResponse> resetPassword({@required String email}) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: email);
      return const ResetPasswordResponse.success();
    } on FirebaseAuthException catch (error) {
      if (error.code == ERROR_USER_NOT_FOUND) {
        return const ResetPasswordResponse.failure(
            failure: ResetPasswordFailure.userNotFound());
      } else if (error.code == ERROR_INVALID_EMAIL) {
        return const ResetPasswordResponse.failure(
            failure: ResetPasswordFailure.incorrectEmail());
      } else {
        return const ResetPasswordResponse.failure(
            failure: ResetPasswordFailure.serverError());
      }
    } catch (error) {
      return const ResetPasswordResponse.failure(
          failure: ResetPasswordFailure.serverError());
    }
  }
}
