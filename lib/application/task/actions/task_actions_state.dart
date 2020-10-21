part of 'task_actions_cubit.dart';

@freezed
abstract class TaskActionState with _$TaskActionState {
  const factory TaskActionState.idle() = _Idle;
  const factory TaskActionState.processing() = _Processing;
  const factory TaskActionState.success() = _Success;
  const factory TaskActionState.error() = _Error;
}
