part of 'task_list_bloc.dart';

@freezed
abstract class TaskListState with _$TaskListState {
  const factory TaskListState.initial() = _Initial;
  const factory TaskListState.isLoading() = _IsLoading;
  const factory TaskListState.loadSuccess(List<Task> tasks) =
  _LoadSuccess;
  const factory TaskListState.loadFailure(FirebaseFailure failure) =
  _LoadFailure;
}
