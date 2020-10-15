import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:easy_tasks/domain/category/category.dart';
import 'package:easy_tasks/domain/core/firebase_response.dart';
import 'package:easy_tasks/domain/task/task.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'task_detail_event.dart';

part 'task_detail_state.dart';

part 'task_detail_bloc.freezed.dart';

@injectable
class TaskDetailBloc extends Bloc<TaskDetailEvent, TaskDetailState> {
  TaskDetailBloc() : super(TaskDetailState.initial());

  @override
  Stream<TaskDetailState> mapEventToState(
    TaskDetailEvent event,
  ) async* {
    yield* event.map(
      initialized: (event) async* {
        yield state.copyWith(
          task: event.initialTask ?? Task.empty(),
          category: event.category,
          isTitleValid: event.initialTask.title.isNotEmpty,
          isNew: false,
        );
      },
      titleChanged: (event) async* {
        yield state.copyWith(
          task: state.task.copyWith(title: event.titleStr),
          isTitleValid: event.titleStr.isNotEmpty,
          response: const FirebaseResponse.empty(),
        );
      },
      completedChanged: (event) async* {
        yield state.copyWith(
          task: state.task.copyWith(isCompleted: !state.task.isCompleted),
          response: const FirebaseResponse.empty(),
        );
      },
      favChanged: (event) async* {
        yield state.copyWith(
          task: state.task.copyWith(isFavorite: !state.task.isFavorite),
          response: const FirebaseResponse.empty(),
        );
      },
      categoryChanged: (event) async* {
        //TODO check copy with null magic
        if (event.category == null) {
          final task = state.task.copyWith(category: '');
          final TaskDetailState newState = TaskDetailState(
            task: task,
            isTitleValid: task.title.isNotEmpty,
            isSaving: false,
            isNew: state.isNew,
            response: FirebaseResponse.empty(),
            showErrorMessages: state.showErrorMessages,
          );
          yield newState;
        } else {
          yield state.copyWith(
            task: state.task.copyWith(category: event.category?.id),
            category: event.category,
            response: const FirebaseResponse.empty(),
          );
        }
      },
      tagsChanged: (event) async* {
        yield state.copyWith(
          task: state.task.copyWith(tags: event.tags),
          response: const FirebaseResponse.empty(),
        );
      },
      dueDateChanged: (event) async* {
        yield state.copyWith(
          task: state.task.copyWith(dueDate: event.dueDate),
          response: const FirebaseResponse.empty(),
        );
      },
      priorityChanged: (event) async* {
        yield state.copyWith(
          task: state.task.copyWith(priority: event.priority),
          response: const FirebaseResponse.empty(),
        );
      },
      notesChanged: (event) async* {
        yield state.copyWith(
          task: state.task.copyWith(notes: event.note),
          response: const FirebaseResponse.empty(),
        );
      },
      saved: (event) async* {
        yield state.copyWith(
          isSaving: true,
          response: const FirebaseResponse.empty(),
        );
        yield state.copyWith(
          response: const FirebaseResponse.success(),
        );
      },
    );
  }
}
