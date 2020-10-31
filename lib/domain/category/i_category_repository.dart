import 'package:easy_tasks/domain/category/category.dart';
import 'package:easy_tasks/domain/core/firebase_failure.dart';
import 'package:easy_tasks/domain/core/firebase_response.dart';

abstract class ICategoryRepository {
  Stream<List<TaskCategory>> watchCategories();
  Stream<Map<String, TaskCategory>> watchCategoriesAsMap();
  Future<FirebaseResponse> update(TaskCategory category);
  Future<FirebaseResponse> create(TaskCategory category);
  Future<FirebaseResponse> delete(TaskCategory category);
  Future<FirebaseResponse> updateList(List<TaskCategory> categories);
}
