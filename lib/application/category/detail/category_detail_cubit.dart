import 'package:bloc/bloc.dart';
import 'package:easy_tasks/domain/category/category.dart';
import 'package:easy_tasks/domain/core/firebase_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'category_detail_state.dart';
part 'category_detail_cubit.freezed.dart';

@injectable
class CategoryDetailCubit extends Cubit<CategoryDetailState> {
  CategoryDetailCubit() : super(CategoryDetailState.initial());

  Future<void> init(TaskCategory category) async {
    final newState = state.copyWith(
      category: category ?? TaskCategory.create(),
      isTitleValid: category?.title?.isNotEmpty == true,
      isIconValid: category?.icon != null,
      isColorValid: category?.color != null,
      isNew: category == null,
    );
    emit(newState);
  }

  Future<void> updateTilte(String title) async {
    emit(state.copyWith(
      category: state.category.copyWith(title: title),
      isTitleValid: title?.isNotEmpty == true,
    ));
  }
}
