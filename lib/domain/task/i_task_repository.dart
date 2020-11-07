import 'package:easy_tasks/domain/core/firebase_response.dart';
import 'package:easy_tasks/domain/task/counts.dart';
import 'package:easy_tasks/domain/task/task.dart';

abstract class ITaskRepository {
  Stream<List<Task>> watchTasks();
  Stream<List<Task>> watchFavTasks();
  Stream<List<Task>> watchOtherTasks();
  Stream<List<Task>> watchTasksWithCategory({String categoryId});
  Stream<List<Task>> watchOpenTasks();
  Stream<Counts> watchTasksCount();
  Future<FirebaseResponse> update(Task task);
  Future<FirebaseResponse> create(Task task);
  Future<FirebaseResponse> delete(Task task);
}
