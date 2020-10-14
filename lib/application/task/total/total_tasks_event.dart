part of 'total_tasks_bloc.dart';

@freezed
abstract class TotalTasksEvent with _$TotalTasksEvent {
  const factory TotalTasksEvent.checkTotalCount() = _CheckTotalCount;
}
