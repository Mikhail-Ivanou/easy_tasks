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
      final taskRef = userRef.collection('tasks').doc(task.id);
      transaction.delete(taskRef);
      return const FirebaseResponse.success();
    });
  }

  @override
  Future<FirebaseResponse> update(Task task) {
    return _firestore.runTransaction((transaction) async {
      final userRef = await _firestore.userDocument();
      final taskRef = userRef.collection('tasks').doc(task.id);
      final oldTaskCategory = (await taskRef.get()).get('category');

      //read counters as read operations should be done before write
      final userSnapshot = await transaction.get(userRef);
      final userCounts = Counts.fromMap(userSnapshot.data());

      int otherDiff = 0;
      if (oldTaskCategory != task.category?.id) {
        if (oldTaskCategory != null) {
          final categoryRef =
              userRef.collection('category').doc(oldTaskCategory);
          final category = categoryFromFirestore(await categoryRef.get());
          final newCategory = category.copyWith(count: category.count - 1);
          transaction.update(categoryRef, newCategory.toMap());
        } else {
          otherDiff--;
        }
        if (task.category != null) {
          final categoryRef =
              userRef.collection('category').doc(task.category.id);
          final category = categoryFromFirestore(await categoryRef.get());
          final newCategory = category.copyWith(count: category.count + 1);
          transaction.update(categoryRef, newCategory.toMap());
        } else {
          otherDiff++;
        }
        if (otherDiff != 0) {
          final newCounts = Counts(
              totalCount: userCounts.totalCount,
              otherCount: userCounts.otherCount + otherDiff);
          transaction.update(userRef, newCounts.toMap());
        }
      }

      transaction.update(taskRef, task.toMap());
      return const FirebaseResponse.success();
    });
  }
}
