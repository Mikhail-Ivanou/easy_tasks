import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_tasks/domain/auth/i_auth_facade.dart';
import 'package:easy_tasks/injection.dart';

extension FirestoreX on FirebaseFirestore {
  // Future<DocumentReference> userDocument() async {
  // final userOption = getIt<IAuthFacade>().getSignedInUser();
  // final user = userOption.getOrElse(() => throw NonAuthentificatedError());
  // return collection('users').doc(user.id.getOrCrash());
  // }
}

extension DocumentReferenceX on DocumentReference {
  // CollectionReference get noteCollection => collection('notes');
}
