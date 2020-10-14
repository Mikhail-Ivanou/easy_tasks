part of 'category_as_map_bloc.dart';

@freezed
abstract class CategoryAsMapState with _$CategoryAsMapState {
  const factory CategoryAsMapState.initial() = _Initial;
  const factory CategoryAsMapState.isLoading() = _IsLoading;
  const factory CategoryAsMapState.loadSuccess(
      Map<String, Category> categories) = _LoadSuccess;
  const factory CategoryAsMapState.loadFailure(FirebaseFailure failure) =
      _LoadFailure;
}
