import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_tasks/domain/category/category.dart';
import 'package:easy_tasks/domain/category/i_category_repository.dart';
import 'package:easy_tasks/domain/core/firebase_failure.dart';
import 'package:easy_tasks/domain/core/firebase_response.dart';
import 'package:easy_tasks/domain/task/counts.dart';
import 'package:easy_tasks/domain/task/task.dart';
import 'package:easy_tasks/repository/category/category_converter.dart';
import 'package:easy_tasks/repository/core/firestore_helpers.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ICategoryRepository)
class CategoryRepository implements ICategoryRepository {
  final FirebaseFirestore _firestore;

  CategoryRepository(this._firestore);

  @override
  Stream<List<TaskCategory>> watchCategories() async* {
    final userDoc = await _firestore.userDocument();
    final snapshots =
        userDoc.collection('category').orderBy('position').snapshots();
    yield* snapshots.map((snapshot) => snapshot.docs.map((doc) {
          return categoryFromFirestore(doc);
        }).toList());
  }

  @override
  Stream<Map<String, TaskCategory>> watchCategoriesAsMap() async* {
    final userDoc = await _firestore.userDocument();
    final snapshots =
        userDoc.collection('category').orderBy('position').snapshots();
    yield* snapshots.map((snapshot) => {
          for (var category
              in snapshot.docs.map((doc) => categoryFromFirestore(doc)))
            category.id: category
        });
  }

  @override
  Future<FirebaseResponse> update(TaskCategory category) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Future<FirebaseResponse> create(TaskCategory category) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<FirebaseResponse> delete(TaskCategory category) {
    return _firestore.runTransaction((transaction) async {
      final userRef = await _firestore.userDocument();
      final categoryRef = userRef.collection('category').doc(category.id);

      //read counters as read operations should be done before write
      final userSnapshot = await transaction.get(userRef);
      final userCounts = Counts.fromMap(userSnapshot.data());

      final newCounts = Counts(
          totalCount: userCounts.totalCount,
          otherCount: userCounts.otherCount + category.count);
      transaction.update(userRef, newCounts.toMap());

      final tasksToUpdate = await userRef
          .collection('tasks')
          .where('category', isEqualTo: category.id)
          .get();

      for (int i = 0; i < tasksToUpdate.size; i++) {
        final task = tasksToUpdate.docs[i];
        final taskRef = userRef.collection('tasks').doc(task.id);
        transaction.update(taskRef, {'category': null});
      }
      transaction.delete(categoryRef);
      return const FirebaseResponse.success();
    });
  }

  @override
  Future<FirebaseResponse> updateList(List<TaskCategory> categories) {
    return _firestore.runTransaction((transaction) async {
      final userRef = await _firestore.userDocument();
      for (int i = 0; i < categories.length; i++) {
        final category = categories[i];
        final categoryRef = userRef.collection('category').doc(category.id);
        transaction.update(categoryRef, {'position': i});
      }
      return const FirebaseResponse.success();
    });
  }
}
