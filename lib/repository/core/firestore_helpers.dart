import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_tasks/domain/auth/i_auth_facade.dart';
import 'package:easy_tasks/injection.dart';

extension FirestoreX on FirebaseFirestore {
  Stream<DocumentSnapshot> user() {
    final user = getIt<IAuthFacade>().getSignedInUser();
    return collection('users').doc(user.userId).snapshots();
  }

  Future<DocumentReference> userDocument() async {
    final user = getIt<IAuthFacade>().getSignedInUser();
    return collection('users').doc(user.userId);
  }
}

extension DocumentReferenceX on DocumentReference {
  // CollectionReference get noteCollection => collection('notes');
}
