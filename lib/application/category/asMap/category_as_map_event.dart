part of 'category_as_map_bloc.dart';

@freezed
abstract class CategoryAsMapEvent with _$CategoryAsMapEvent {
  const factory CategoryAsMapEvent.getCategories() = _GetCategories;
}
