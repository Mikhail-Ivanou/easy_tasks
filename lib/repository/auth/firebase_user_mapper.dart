import 'package:easy_tasks/domain/auth/user.dart';
import 'package:firebase_auth/firebase_auth.dart';

extension FirebaseUserDomainX on User {
  SignedUser toDomain() {
    return SignedUser(
      userId: uid,
      displayName: displayName,
      email: email,
    );
  }
}
