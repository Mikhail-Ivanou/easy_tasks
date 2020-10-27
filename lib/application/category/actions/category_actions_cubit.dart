import 'package:bloc/bloc.dart';
import 'package:easy_tasks/domain/category/category.dart';
import 'package:easy_tasks/domain/category/i_category_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_actions_state.dart';
part 'category_actions_cubit.freezed.dart';

@injectable
class CategoryActionsCubit extends Cubit<CategoryActionState> {
  final ICategoryRepository _categoryRepository;

  CategoryActionsCubit(this._categoryRepository)
      : super(const CategoryActionState.idle());

  Future<void> deleteCategory(TaskCategory category) async {
    try {
      emit(const CategoryActionState.processing());
      await _categoryRepository.delete(category.id);
      emit(const CategoryActionState.success());
    } on Exception {
      const CategoryActionState.error();
    }
  }
}
