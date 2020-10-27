part of 'task_detail_bloc.dart';

@freezed
abstract class TaskDetailState with _$TaskDetailState {
  const factory TaskDetailState({
    @required Task task,
    @required bool isTitleValid,
    @required bool isSaving,
    @required bool isNew,
    @required FirebaseResponse response,
    @required bool showErrorMessages,
  }) = _TaskDetailState;

  factory TaskDetailState.initial() => TaskDetailState(
        task: Task.create(),
        isTitleValid: false,
        isSaving: false,
        isNew: true,
        response: const FirebaseResponse.empty(),
        showErrorMessages: false,
      );
}
