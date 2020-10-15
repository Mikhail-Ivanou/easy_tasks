import 'package:auto_route/auto_route.dart';
import 'package:easy_tasks/application/task/task_detail/task_detail_bloc.dart';
import 'package:easy_tasks/domain/task/task.dart';
import 'package:easy_tasks/injection.dart';
import 'package:easy_tasks/ui/task_detail/widgets/overlay.dart';
import 'package:easy_tasks/ui/task_detail/task_detail_form.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:easy_tasks/domain/category/category.dart' as vm;

class TaskDetailPage extends StatelessWidget {
  const TaskDetailPage({Key key, @required this.initialTask, this.category})
      : super(key: key);

  final Task initialTask;
  final vm.TaskCategory category;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => getIt<TaskDetailBloc>()
        ..add(TaskDetailEvent.initialized(
            initialTask: initialTask, category: category)),
      child: BlocConsumer<TaskDetailBloc, TaskDetailState>(
        listenWhen: (p, c) => p.response != c.response,
        listener: (context, state) {
          state.response.map(
            success: (_) {
              ExtendedNavigator.of(context).pop();
            },
            failure: (failure) {
              FlushbarHelper.createError(
                message: failure.failure.map(
                  unexpected: (_) =>
                      'Unexpected error occured, please contact support.',
                  insufficientPermissions: (_) => 'Insufficient permissions ❌',
                  unableToUpdate: (_) =>
                      "Couldn't update the note. Was it deleted from another app?",
                ),
              ).show(context);
            },
            empty: (_) {},
          );
        },
        buildWhen: (p, c) => p.isSaving != c.isSaving,
        builder: (context, state) {
          return WillPopScope(
            onWillPop: () async {
              context.bloc<TaskDetailBloc>().add(const TaskDetailEvent.saved());
              return Future.value();
            },
            child: Stack(children: <Widget>[
              const TaskDetailForm(),
              SavingInProgressOverlay(
                isSaving: state.isSaving,
              )
            ]),
          );
        },
      ),
    );
  }
}
