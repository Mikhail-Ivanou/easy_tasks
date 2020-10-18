import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_tasks/domain/category/category.dart';
import 'package:easy_tasks/domain/category/i_category_repository.dart';
import 'package:easy_tasks/domain/core/firebase_failure.dart';
import 'package:easy_tasks/domain/task/counts.dart';
import 'package:easy_tasks/domain/task/i_task_repository.dart';
import 'package:easy_tasks/domain/task/task.dart';
import 'package:easy_tasks/repository/core/firestore_helpers.dart';
import 'package:easy_tasks/repository/task/task_converter.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

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

    final categories = _categoryRepository.watchCategoriesAsMap();

    yield* Rx.combineLatest2(snapshots, categories,
        (QuerySnapshot tasks, Map<String, TaskCategory> categories) {
      return tasks.docs.map((doc) {
        return fromFirestore(doc, categories);
      }).toList();
    });
  }

  @override
  Stream<List<Task>> watchFavTasks() async* {
    final userDoc = await _firestore.userDocument();
    final snapshots = userDoc
        .collection('tasks')
        .orderBy('dateCreated')
        .where('isFavorite', isEqualTo: true)
        .snapshots();

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
    yield* snapshots.map((snapshots) => Counts(
        totalCount: snapshots.get('totalCount'),
        otherCount: snapshots.get('otherCount')));
  }

  @override
  Future<FirebaseFailure> create(Task task) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<FirebaseFailure> delete(String taskId) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<FirebaseFailure> update(Task task) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
