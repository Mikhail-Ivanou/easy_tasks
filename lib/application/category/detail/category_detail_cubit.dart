import 'package:bloc/bloc.dart';
import 'package:easy_tasks/domain/category/category.dart';
import 'package:easy_tasks/domain/core/firebase_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'category_detail_state.dart';
part 'category_detail_cubit.freezed.dart';

class CategoryDetailCubit extends Cubit<CategoryDetailState> {
  CategoryDetailCubit() : super(CategoryDetailState.initial());

  Future<void> init(TaskCategory category) async {
    emit(state.copyWith(
      category: category,
      isTitleValid: category?.title?.isNotEmpty == true,
      isIconValid: category?.icon != null,
      isColorValid: category?.color != null,
      isNew: category == null,
    ));
  }
}
