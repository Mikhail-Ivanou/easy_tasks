part of 'category_cards_bloc.dart';

@freezed
abstract class CategoryCardsState with _$CategoryCardsState {
  const factory CategoryCardsState.initial() = _Initial;
  const factory CategoryCardsState.isLoading() = _IsLoading;
  const factory CategoryCardsState.loadSuccess(List<Category> categories) =
      _LoadSuccess;
  const factory CategoryCardsState.loadFailure(FirebaseFailure failure) =
      _LoadFailure;
}
