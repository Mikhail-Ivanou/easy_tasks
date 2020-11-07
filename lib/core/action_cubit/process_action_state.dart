import 'package:freezed_annotation/freezed_annotation.dart';

part 'process_action_state.freezed.dart';

@freezed
abstract class ProcessActionState with _$ProcessActionState {
  const factory ProcessActionState.idle() = _Idle;
  const factory ProcessActionState.processing() = _Processing;
  const factory ProcessActionState.success() = _Success;
  const factory ProcessActionState.error() = _Error;
}
