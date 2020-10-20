part of 'task_list_bloc.dart';

@freezed
abstract class TaskListEvent with _$TaskListEvent {
  const factory TaskListEvent.getFavorite() = _GetFavorite;
  const factory TaskListEvent.getAllTasks() = _GetAllTasks;
  const factory TaskListEvent.getTasksWithCategory(String id) =
      _GetTasksWithCategory;
  const factory TaskListEvent.getTasksOtherCategory() =
      _GetTasksWithOtherCategory;
  const factory TaskListEvent.getOpenTasks() = _GetOpenTasks;
}
