part of 'category_detail_cubit.dart';

@freezed
abstract class CategoryDetailState with _$CategoryDetailState {
  const factory CategoryDetailState({
    @required TaskCategory category,
    @required bool isTitleValid,
    @required bool isIconValid,
    @required bool isColorValid,
    @required bool isSaving,
    @required bool isNew,
    @required FirebaseResponse response,
    @required bool showErrorMessages,
  }) = _CategoryDetailState;

  factory CategoryDetailState.initial() => CategoryDetailState(
        category: TaskCategory.create(),
        isTitleValid: false,
        isIconValid: false,
        isColorValid: false,
        isSaving: false,
        isNew: true,
        response: const FirebaseResponse.empty(),
        showErrorMessages: false,
      );
}
