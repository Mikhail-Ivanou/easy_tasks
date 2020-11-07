import 'package:bloc/bloc.dart';
import 'package:easy_tasks/core/action_cubit/process_action_state.dart';
import 'package:easy_tasks/domain/core/firebase_response.dart';

class ActionCubit extends Cubit<ProcessActionState> {
  ActionCubit() : super(const ProcessActionState.idle());

  Future performAction(Future<FirebaseResponse> action) async {
    try {
      emit(const ProcessActionState.processing());
      await action;
      emit(const ProcessActionState.success());
    } on Exception {
      const ProcessActionState.error();
    }
  }
}
