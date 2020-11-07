import 'package:auto_route/auto_route.dart';
import 'package:easy_tasks/application/task/actions/task_actions_cubit.dart';
import 'package:easy_tasks/application/task/task_detail/task_detail_bloc.dart';
import 'package:easy_tasks/domain/category/category.dart';
import 'package:easy_tasks/injection.dart';
import 'package:easy_tasks/ui/task_detail/widgets/overlay.dart';
import 'package:easy_tasks/ui/task_detail/task_detail_form.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:easy_tasks/core/action_cubit/process_action_state.dart';

class TaskCreatePage extends StatelessWidget {
  const TaskCreatePage({Key key, this.initialCategory}) : super(key: key);

  final TaskCategory initialCategory;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<TaskDetailBloc>(
            create: (context) => getIt<TaskDetailBloc>()
              ..add(TaskDetailEvent.initialized(category: initialCategory))),
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
          return Stack(children: <Widget>[
            Scaffold(
              appBar: _buildAppBar(),
              body: const TaskDetailForm(),
            ),
            SavingInProgressOverlay(
              isSaving:
                  state.maybeWhen(processing: () => true, orElse: () => false),
            )
          ]);
        },
      ),
    );
  }
}

AppBar _buildAppBar() {
  return AppBar(
    title: const Text('Create a task'),
    actions: const [
      ConfirmAction(),
    ],
  );
}

class ConfirmAction extends StatelessWidget {
  const ConfirmAction({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.check,
        color: Colors.white,
      ),
      onPressed: () {
        final newTask = context.bloc<TaskDetailBloc>().state.task;
        context.bloc<TaskActionsCubit>().create(newTask);
      },
    );
  }
}
