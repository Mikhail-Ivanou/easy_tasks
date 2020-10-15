part of 'task_detail_bloc.dart';

@freezed
abstract class TaskDetailEvent with _$TaskDetailEvent {
  const factory TaskDetailEvent.initialized(
      {@required Task initialTask, TaskCategory category}) = _Initialized;

  const factory TaskDetailEvent.titleChanged(String titleStr) = _TitleChanged;
  const factory TaskDetailEvent.completedChanged() = _CompletedChanged;
  const factory TaskDetailEvent.favChanged() = _FavChanged;
  const factory TaskDetailEvent.categoryChanged({TaskCategory category}) =
      _CategoryChanged;
  const factory TaskDetailEvent.tagsChanged(List<String> tags) = _TagsChanged;
  const factory TaskDetailEvent.dueDateChanged({DateTime dueDate}) =
      _DueDateChanged;
  const factory TaskDetailEvent.priorityChanged(TaskPriority priority) =
      _PriorityChanged;
  const factory TaskDetailEvent.notesChanged(String note) = _NotesChanged;
  const factory TaskDetailEvent.saved() = _Saved;
}
