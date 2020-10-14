import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_tasks/domain/auth/i_auth_facade.dart';
import 'package:easy_tasks/domain/core/firebase_failure.dart';
import 'package:easy_tasks/domain/core/i_initial_content_generator.dart';
import 'package:easy_tasks/domain/core/initial_content.dart';
import 'package:easy_tasks/injection.dart';
import 'package:injectable/injectable.dart';
import 'package:easy_tasks/repository/category/category_converter.dart';
import 'package:easy_tasks/repository/task/task_converter.dart';
import 'package:easy_tasks/repository/core/firestore_helpers.dart';

//It should be created on backend, not by client
@LazySingleton(as: IInitialContentGenerator)
class InitialContentGenerator implements IInitialContentGenerator {
  final FirebaseFirestore _firestore;

  InitialContentGenerator(this._firestore);

  @override
  Future<FirebaseFailure> generateInitialContent() async {
    final userDoc = await _firestore.userDocument();
    try {
      final user = await userDoc.get();
      if (user.data() == null) {
        return await setup(userDoc);
      } else {
        return const FirebaseFailure.none();
      }
    } catch (e) {
      return await setup(userDoc);
    }
  }

  Future<FirebaseFailure> setup(DocumentReference userDoc) async {
    final user = getIt<IAuthFacade>().getSignedInUser();
    final Map<String, dynamic> result = <String, dynamic>{};
    result['id'] = user.userId;
    result['email'] = user.email;
    result['title'] = user.displayName;
    result['totalCount'] = 10;
    result['otherCount'] = 1;

    userDoc.set(result);
    final categories = userDoc.collection('category');
    final WriteBatch writeBatch = _firestore.batch();
    initialCategories.forEach((element) {
      writeBatch.set(categories.doc(), element.toMap());
    });

    final tasks = userDoc.collection('tasks');
    initialTasks.forEach((element) {
      writeBatch.set(tasks.doc(), element.toMap());
    });

    await writeBatch.commit();
    return const FirebaseFailure.none();
  }
}
