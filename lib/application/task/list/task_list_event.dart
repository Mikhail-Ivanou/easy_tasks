part of 'task_list_bloc.dart';

@freezed
abstract class TaskListEvent with _$TaskListEvent {
  const factory TaskListEvent.getFavorite() = _GetFavorite;
}
