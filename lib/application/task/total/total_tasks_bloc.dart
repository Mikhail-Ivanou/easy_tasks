import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:easy_tasks/domain/task/i_task_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'total_tasks_event.dart';

part 'total_tasks_state.dart';

part 'total_tasks_bloc.freezed.dart';

@injectable
class TotalTasksBloc extends Bloc<TotalTasksEvent, TotalTasksState> {
  final ITaskRepository _taskRepository;

  TotalTasksBloc(this._taskRepository) : super(const TotalTasksState.initial());

  @override
  Stream<TotalTasksState> mapEventToState(
    TotalTasksEvent event,
  ) async* {
    yield* event.map(
      checkTotalCount: (_) async* {
        yield* _taskRepository.watchTasksCount().map((tasksCount) =>
            TotalTasksState.count(
                totalCount: tasksCount.totalCount,
                otherCount: tasksCount.otherCount));
      },
    );
  }
}
