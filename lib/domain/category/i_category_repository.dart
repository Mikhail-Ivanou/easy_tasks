import 'package:easy_tasks/domain/category/category.dart';
import 'package:easy_tasks/domain/core/firebase_failure.dart';

abstract class ICategoryRepository {
  Stream<List<TaskCategory>> watchCategories();
  Stream<Map<String, TaskCategory>> watchCategoriesAsMap();
  Future<FirebaseFailure> update(TaskCategory category);
  Future<FirebaseFailure> create(TaskCategory category);
  Future<FirebaseFailure> delete(String categoryId);
}
