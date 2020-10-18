part of 'task_detail_bloc.dart';

@freezed
abstract class TaskDetailState with _$TaskDetailState {
  const factory TaskDetailState({
    @required Task task,
    TaskCategory category,
    @required bool isTitleValid,
    @required bool isSaving,
    @required bool isNew,
    @required FirebaseResponse response,
    @required bool showErrorMessages,
  }) = _TaskDetailState;

  factory TaskDetailState.initial() => TaskDetailState(
        task: Task.empty(),
        isTitleValid: false,
        isSaving: false,
        isNew: true,
        response: const FirebaseResponse.empty(),
        showErrorMessages: false,
      );
}
