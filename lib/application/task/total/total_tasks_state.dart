part of 'total_tasks_bloc.dart';

@freezed
abstract class TotalTasksState with _$TotalTasksState {
  const factory TotalTasksState.initial() = _Initial;

  const factory TotalTasksState.count(
      {@required int totalCount, @required int otherCount}) = _TotalCount;
}
