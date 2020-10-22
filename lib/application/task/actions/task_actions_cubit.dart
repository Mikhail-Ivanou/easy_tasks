import 'package:bloc/bloc.dart';
import 'package:easy_tasks/domain/task/i_task_repository.dart';
import 'package:easy_tasks/domain/task/task.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_actions_state.dart';
part 'task_actions_cubit.freezed.dart';

@injectable
class TaskActionsCubit extends Cubit<TaskActionState> {
  final ITaskRepository _taskRepository;

  TaskActionsCubit(this._taskRepository) : super(const TaskActionState.idle());

  Future<void> deleteTask(Task task) async {
    try {
      emit(const TaskActionState.processing());
      await _taskRepository.delete(task);
      emit(const TaskActionState.success());
    } on Exception {
      const TaskActionState.error();
    }
  }

  Future<void> update(Task task) async {
    try {
      emit(const TaskActionState.processing());
      await _taskRepository.update(task);
      emit(const TaskActionState.success());
    } on Exception {
      const TaskActionState.error();
    }
  }

  Future<void> create(Task task) async {
    try {
      emit(const TaskActionState.processing());
      await _taskRepository.create(task);
      emit(const TaskActionState.success());
    } on Exception {
      const TaskActionState.error();
    }
  }
}
