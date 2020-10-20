import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:easy_tasks/domain/core/firebase_failure.dart';
import 'package:easy_tasks/domain/task/i_task_repository.dart';
import 'package:easy_tasks/domain/task/task.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'task_list_event.dart';

part 'task_list_state.dart';

part 'task_list_bloc.freezed.dart';

@injectable
class TaskListBloc extends Bloc<TaskListEvent, TaskListState> {
  final ITaskRepository _taskRepository;

  TaskListBloc(this._taskRepository) : super(const TaskListState.initial());

  //TODO refactor
  @override
  Stream<TaskListState> mapEventToState(
    TaskListEvent event,
  ) async* {
    yield* event.map(
      getFavorite: (_GetFavorite value) async* {
        yield const TaskListState.isLoading();
        final watchTasks = _taskRepository.watchFavTasks();
        yield* watchTasks.map((event) => TaskListState.loadSuccess(event));
      },
      getAllTasks: (_GetAllTasks value) async* {
        yield const TaskListState.isLoading();
        final watchTasks = _taskRepository.watchTasks();
        yield* watchTasks.map((event) => TaskListState.loadSuccess(event));
      },
      getTasksOtherCategory: (_GetTasksWithOtherCategory value) async* {
        yield const TaskListState.isLoading();
        final watchTasks = _taskRepository.watchOtherTasks();
        yield* watchTasks.map((event) => TaskListState.loadSuccess(event));
      },
      getTasksWithCategory: (_GetTasksWithCategory value) async* {
        yield const TaskListState.isLoading();
        final watchTasks =
            _taskRepository.watchTasksWithCategory(categoryId: value.id);
        yield* watchTasks.map((event) => TaskListState.loadSuccess(event));
      },
    );
  }
}
