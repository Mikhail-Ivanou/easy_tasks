import 'package:easy_tasks/domain/task/i_task_repository.dart';
import 'package:easy_tasks/domain/task/task.dart';
import 'package:easy_tasks/core/action_cubit/action_cubit.dart';
import 'package:injectable/injectable.dart';

@injectable
class TaskActionsCubit extends ActionCubit {
  final ITaskRepository _taskRepository;

  TaskActionsCubit(this._taskRepository);

  Future<void> deleteTask(Task task) async {
    await performAction(_taskRepository.delete(task));
  }

  Future<void> update(Task task) async {
    await performAction(_taskRepository.update(task));
  }

  Future<void> create(Task task) async {
    await performAction(_taskRepository.create(task));
  }
}
