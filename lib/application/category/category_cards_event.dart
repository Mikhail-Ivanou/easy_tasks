part of 'category_cards_bloc.dart';

@freezed
abstract class CategoryCardsEvent with _$CategoryCardsEvent {
  const factory CategoryCardsEvent.getCategories() = _GetCategories;
}
