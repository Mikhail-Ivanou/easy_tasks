import 'package:auto_route/auto_route.dart';
import 'package:easy_tasks/application/task/actions/task_actions_cubit.dart';
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

class TaskDetailPage extends StatelessWidget {
  const TaskDetailPage({Key key, @required this.initialTask}) : super(key: key);

  final Task initialTask;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<TaskDetailBloc>(
            create: (context) => getIt<TaskDetailBloc>()
              ..add(TaskDetailEvent.initialized(initialTask: initialTask))),
        BlocProvider<TaskActionsCubit>(
            create: (context) => getIt<TaskActionsCubit>()),
      ],
      child: BlocConsumer<TaskActionsCubit, TaskActionState>(
        listener: (context, state) {
          state.maybeMap(
            success: (_) {
              ExtendedNavigator.of(context).pop();
            },
            error: (failure) {
              FlushbarHelper.createError(
                      message:
                          'Unexpected error occured, please contact support.')
                  .show(context);
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          return WillPopScope(
            onWillPop: () async {
              final currentTask = context.bloc<TaskDetailBloc>().state.task;
              context.bloc<TaskActionsCubit>().update(currentTask);
              return Future.value(true);
            },
            child: Stack(children: <Widget>[
              const TaskDetailForm(),
              SavingInProgressOverlay(
                isSaving: state.maybeWhen(
                    processing: () => true, orElse: () => false),
              )
            ]),
          );
        },
      ),
    );
  }
}
