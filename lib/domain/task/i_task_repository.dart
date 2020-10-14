import 'package:easy_tasks/domain/core/firebase_failure.dart';
import 'package:easy_tasks/domain/task/counts.dart';
import 'package:easy_tasks/domain/task/task.dart';

abstract class ITaskRepository {
  Stream<List<Task>> watchTasks();
  Stream<List<Task>> watchFavTasks();
  Stream<Counts> watchTasksCount();
  Future<FirebaseFailure> update(Task task);
  Future<FirebaseFailure> create(Task task);
  Future<FirebaseFailure> delete(String taskId);
}
