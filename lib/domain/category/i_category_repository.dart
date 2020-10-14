import 'package:easy_tasks/domain/category/category.dart';
import 'package:easy_tasks/domain/core/firebase_failure.dart';

abstract class ICategoryRepository {
  Stream<List<Category>> watchCategories();
  Stream<Map<String, Category>> watchCategoriesAsMap();
  Future<FirebaseFailure> update(Category category);
  Future<FirebaseFailure> create(Category category);
  Future<FirebaseFailure> delete(String categoryId);
}
