import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_tasks/domain/category/category.dart';
import 'package:easy_tasks/domain/category/i_category_repository.dart';
import 'package:easy_tasks/domain/core/firebase_response.dart';
import 'package:easy_tasks/domain/task/counts.dart';
import 'package:easy_tasks/domain/task/i_task_repository.dart';
import 'package:easy_tasks/domain/task/task.dart';
import 'package:easy_tasks/repository/core/firestore_helpers.dart';
import 'package:easy_tasks/repository/task/task_converter.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:easy_tasks/repository/category/category_converter.dart';

@LazySingleton(as: ITaskRepository)
class TaskRepository implements ITaskRepository {
  final FirebaseFirestore _firestore;
  final ICategoryRepository _categoryRepository;

  TaskRepository(this._firestore, this._categoryRepository);

  @override
  Stream<List<Task>> watchTasks() async* {
    final userDoc = await _firestore.userDocument();
    final snapshots =
        userDoc.collection('tasks').orderBy('dateCreated').snapshots();

    yield* _processTasks(snapshots);
  }

  @override
  Stream<List<Task>> watchFavTasks() async* {
    final userDoc = await _firestore.userDocument();
    final snapshots = userDoc
        .collection('tasks')
        .orderBy('dateCreated')
        .where('isFavorite', isEqualTo: true)
        .snapshots();

    yield* _processTasks(snapshots);
  }

  @override
  Stream<List<Task>> watchOtherTasks() async* {
    final userDoc = await _firestore.userDocument();
    final snapshots = userDoc
        .collection('tasks')
        .where('category', isNull: true)
        .orderBy('dateCreated')
        .snapshots();

    yield* _processTasks(snapshots);
  }

  @override
  Stream<List<Task>> watchTasksWithCategory({String categoryId}) async* {
    final userDoc = await _firestore.userDocument();
    final snapshots = userDoc
        .collection('tasks')
        .where('category', isEqualTo: categoryId)
        .orderBy('dateCreated')
        .snapshots();

    yield* _processTasks(snapshots);
  }

  @override
  Stream<List<Task>> watchOpenTasks() async* {
    final userDoc = await _firestore.userDocument();
    final snapshots = userDoc
        .collection('tasks')
        .where('isCompleted', isEqualTo: false)
        .orderBy('dateCreated')
        .snapshots();
    yield* _processTasks(snapshots);
  }

  Stream<List<Task>> _processTasks(Stream<QuerySnapshot> snapshots) async* {
    final categories = _categoryRepository.watchCategoriesAsMap();
    yield* Rx.combineLatest2(snapshots, categories,
        (QuerySnapshot tasks, Map<String, TaskCategory> categories) {
      return tasks.docs.map((doc) {
        return fromFirestore(doc, categories);
      }).toList();
    });
  }

  @override
  Stream<Counts> watchTasksCount() async* {
    final snapshots = _firestore.user();
    yield* snapshots.map((snapshots) => Counts.fromMap(snapshots.data()));
  }

  @override
  Future<FirebaseResponse> create(Task task) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<FirebaseResponse> delete(Task task) {
    return _firestore.runTransaction((transaction) async {
      final userRef = await _firestore.userDocument();
      final taskRef = userRef.collection('tasks').doc(task.id);
      final userSnapshot = await transaction.get(userRef);
      final userCounts = Counts.fromMap(userSnapshot.data());
      final newCounts = Counts(
          totalCount: userCounts.totalCount - 1,
          otherCount: task.category == null
              ? userCounts.otherCount - 1
              : userCounts.otherCount);
      transaction.update(userRef, newCounts.toMap());
      if (task.category != null) {
        final categoryRef =
            userRef.collection('category').doc(task.category.id);
        final category = categoryFromFirestore(await categoryRef.get());
        final newCategory = category.copyWith(count: category.count - 1);
        transaction.update(categoryRef, newCategory.toMap());
      }
      transaction.delete(taskRef);
      return const FirebaseResponse.success();
    });
  }

  @override
  Future<FirebaseResponse> update(Task task) {
    // TODO: implement update
    throw UnimplementedError();
  }
}

// final User user = await UserService.instance.getUser(userId);
// if (task.category != null && task.category.isNotEmpty) {
// user.totalCount--;
// final category = TaskCategory.fromFirestore(await CategoryService.instance
//     .getCategory(user.id, task.category)
//     .snapshots()
//     .first);
// category.count--;
// CategoryService.instance.updateCategory(user, category);
// } else {
// user.totalCount--;
// user.otherCount--;
// }
// UserService.instance.updateUser(user);
// return _db
//     .collection('users')
// .document(userId)
// .collection('tasks')
// .document(task.id)
// .delete();
