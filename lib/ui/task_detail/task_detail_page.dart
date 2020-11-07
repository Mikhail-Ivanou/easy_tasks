import 'package:auto_route/auto_route.dart';
import 'package:easy_tasks/application/task/actions/task_actions_cubit.dart';
import 'package:easy_tasks/application/task/task_detail/task_detail_bloc.dart';
import 'package:easy_tasks/domain/task/task.dart';
import 'package:easy_tasks/injection.dart';
import 'package:easy_tasks/ui/core/alert_helper.dart';
import 'package:easy_tasks/ui/task_detail/widgets/overlay.dart';
import 'package:easy_tasks/ui/task_detail/task_detail_form.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:easy_tasks/core/action_cubit/process_action_state.dart';

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
      child: BlocConsumer<TaskActionsCubit, ProcessActionState>(
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
              Scaffold(
                appBar: _buildAppBar(),
                body: const TaskDetailForm(),
              ),
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

AppBar _buildAppBar() {
  return AppBar(
    title: BlocBuilder<TaskDetailBloc, TaskDetailState>(
        buildWhen: (p, c) =>
            p.isNew != c.isNew || p.task.isCompleted != c.task.isCompleted,
        builder: (context, state) {
          return Text(
              state.task.isCompleted ? 'Completed task' : 'Edit a task');
        }),
    actions: const [
      DeleteAction(),
      CompleteAction(),
    ],
  );
}

class CompleteAction extends StatelessWidget {
  const CompleteAction({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskDetailBloc, TaskDetailState>(
        buildWhen: (p, c) =>
            p.task.title != c.task.title ||
            p.task.isCompleted != c.task.isCompleted,
        builder: (context, state) {
          return IconButton(
            icon: Icon(
              state.task.isCompleted
                  ? Icons.check_circle_rounded
                  : Icons.check_circle_outline,
              color: Colors.white,
            ),
            onPressed: () {
              context
                  .bloc<TaskDetailBloc>()
                  .add(const TaskDetailEvent.completedChanged());
            },
          );
        });
  }
}

class DeleteAction extends StatelessWidget {
  const DeleteAction({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskDetailBloc, TaskDetailState>(
        buildWhen: (p, c) =>
            p.task.title != c.task.title ||
            p.task.isCompleted != c.task.isCompleted,
        builder: (context, state) {
          return IconButton(
            icon: const Icon(
              Icons.delete,
              color: Colors.white,
            ),
            onPressed: () async {
              final children = <Widget>[
                const Text('Are you sure you want to delete:'),
                Text(state.task.title),
              ];
              final actions = <Widget>[
                FlatButton(
                  onPressed: () => Navigator.pop(context, false),
                  child: const Text('Cancel'),
                ),
                FlatButton(
                  onPressed: () {
                    context.bloc<TaskActionsCubit>().deleteTask(state.task);
                    Navigator.pop(context, true);
                  },
                  child: const Text('Delete'),
                ),
              ];
              final bool result = await showConfirmDialog(
                context,
                const Text('Delete task'),
                children,
                actions,
              );
              if (result) {
                Navigator.of(context).pop();
              }
            },
          );
        });
  }
}
