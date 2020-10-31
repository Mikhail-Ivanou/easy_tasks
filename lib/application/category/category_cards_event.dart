part of 'category_cards_bloc.dart';

@freezed
abstract class CategoryCardsEvent with _$CategoryCardsEvent {
  const factory CategoryCardsEvent.getCategories() = _GetCategories;
  const factory CategoryCardsEvent.reorderCategories(
          List<TaskCategory> categories, int oldIndex, int newIndex) =
      _ReorderCategories;

  const factory CategoryCardsEvent.categoryReceived(
      List<TaskCategory> categories) = _CategoryReceived;
}
