import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_tasks/domain/auth/i_auth_facade.dart';
import 'package:easy_tasks/domain/core/firebase_response.dart';
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
  Future<FirebaseResponse> generateInitialContent() async {
    final userDoc = await _firestore.userDocument();
    try {
      final user = await userDoc.get();
      if (user.data() == null) {
        return await setup(userDoc);
      } else {
        return const FirebaseResponse.empty();
      }
    } catch (e) {
      return setup(userDoc);
    }
  }

  Future<FirebaseResponse> setup(DocumentReference userDoc) async {
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
      writeBatch.set(categories.doc(element.id), element.toMap());
    });
    await writeBatch.commit();
    final categoriesSnapshot = await categories.orderBy('position').get();
    //need to have 4
    final homeCategory = categoryFromFirestore(categoriesSnapshot.docs[1]);
    //need to have 1
    final homeTravel = categoryFromFirestore(categoriesSnapshot.docs[3]);
    //need to have 3
    final homeStudy = categoryFromFirestore(categoriesSnapshot.docs[4]);
    //need to have 1
    final homeSport = categoryFromFirestore(categoriesSnapshot.docs[6]);

    final WriteBatch writeTasksBatch = _firestore.batch();
    final tasks = userDoc.collection('tasks');

    initialTasks(
            use4: homeCategory,
            use1: homeTravel,
            use3: homeStudy,
            useOnce: homeSport)
        .forEach((element) {
      writeTasksBatch.set(tasks.doc(), element.toMap());
    });
    await writeTasksBatch.commit();
    return const FirebaseResponse.success();
  }
}
