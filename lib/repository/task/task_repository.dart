import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_tasks/domain/core/firebase_failure.dart';
import 'package:easy_tasks/domain/task/counts.dart';
import 'package:easy_tasks/domain/task/i_task_repository.dart';
import 'package:easy_tasks/domain/task/task.dart';
import 'package:injectable/injectable.dart';
import 'package:easy_tasks/repository/core/firestore_helpers.dart';

@LazySingleton(as: ITaskRepository)
class TaskRepository implements ITaskRepository {
  final FirebaseFirestore _firestore;

  TaskRepository(this._firestore);

  @override
  Stream<List<Task>> watchTasks() {
    // TODO: implement watchTasks
    throw UnimplementedError();
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
