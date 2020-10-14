import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_tasks/domain/category/category.dart';
import 'package:easy_tasks/domain/category/i_category_repository.dart';
import 'package:easy_tasks/domain/core/firebase_failure.dart';
import 'package:easy_tasks/repository/category/category_converter.dart';
import 'package:easy_tasks/repository/core/firestore_helpers.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ICategoryRepository)
class CategoryRepository implements ICategoryRepository {
  final FirebaseFirestore _firestore;

  CategoryRepository(this._firestore);

  @override
  Stream<List<Category>> watchCategories() async* {
    final userDoc = await _firestore.userDocument();
    final snapshots =
        userDoc.collection('category').orderBy('position').snapshots();
    yield* snapshots.map((snapshot) => snapshot.docs.map((doc) {
          return fromFirestore(doc);
        }).toList());
  }

  @override
  Future<FirebaseFailure> update(Category category) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Future<FirebaseFailure> create(Category category) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<FirebaseFailure> delete(String categoryId) {
    // TODO: implement delete
    throw UnimplementedError();
  }
}
