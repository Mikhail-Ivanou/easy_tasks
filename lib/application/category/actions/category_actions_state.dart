part of 'category_actions_cubit.dart';

@freezed
//TODO move actions state as core
abstract class CategoryActionState with _$CategoryActionState {
  const factory CategoryActionState.idle() = _Idle;
  const factory CategoryActionState.processing() = _Processing;
  const factory CategoryActionState.success() = _Success;
  const factory CategoryActionState.error() = _Error;
}
