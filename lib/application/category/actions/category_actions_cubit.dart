import 'package:easy_tasks/domain/category/i_category_repository.dart';
import 'package:easy_tasks/domain/category/category.dart';
import 'package:easy_tasks/core/action_cubit/action_cubit.dart';
import 'package:injectable/injectable.dart';

@injectable
class CategoryActionsCubit extends ActionCubit {
  final ICategoryRepository _categoryRepository;

  CategoryActionsCubit(this._categoryRepository);

  Future<void> deleteCategory(TaskCategory category) async {
    await performAction(_categoryRepository.delete(category));
  }

  Future<void> updateCategory(TaskCategory category) async {
    await performAction(category.id == null
        ? _categoryRepository.create(category)
        : _categoryRepository.update(category));
  }
}
