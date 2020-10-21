import 'package:easy_tasks/application/task/actions/task_actions_cubit.dart';
import 'package:easy_tasks/application/task/task_detail/task_detail_bloc.dart';
import 'package:easy_tasks/ui/core/alert_helper.dart';
import 'package:easy_tasks/ui/task_detail/widgets/category_field.dart';
import 'package:easy_tasks/ui/task_detail/widgets/due_date_field.dart';
import 'package:easy_tasks/ui/task_detail/widgets/note_field.dart';
import 'package:easy_tasks/ui/task_detail/widgets/priority_field.dart';
import 'package:easy_tasks/ui/task_detail/widgets/tags_field.dart';
import 'package:easy_tasks/ui/task_detail/widgets/title_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/fav_field.dart';

class TaskDetailForm extends StatelessWidget {
  const TaskDetailForm({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: BlocBuilder<TaskDetailBloc, TaskDetailState>(
          buildWhen: (p, c) =>
              p.isNew != c.isNew || p.showErrorMessages != c.showErrorMessages,
          builder: (context, state) {
            return Form(
              autovalidateMode: state.showErrorMessages
                  ? AutovalidateMode.always
                  : AutovalidateMode.disabled,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: const <Widget>[
                      SizedBox(
                        height: 8,
                      ),
                      FavField(),
                      SizedBox(
                        height: 16.0,
                      ),
                      TitleField(),
                      SizedBox(
                        height: 10.0,
                      ),
                      DueDateField(),
                      SizedBox(
                        height: 10.0,
                      ),
                      NoteField(),
                      SizedBox(
                        height: 10.0,
                      ),
                      TagsField(),
                      SizedBox(
                        height: 10.0,
                      ),
                      CategoryField(),
                      SizedBox(
                        height: 10.0,
                      ),
                      PriorityField(),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: BlocBuilder<TaskDetailBloc, TaskDetailState>(
          buildWhen: (p, c) =>
              p.isNew != c.isNew || p.task.isCompleted != c.task.isCompleted,
          builder: (context, state) {
            return Text(state.isNew
                ? 'Create a task'
                : state.task.isCompleted
                    ? 'Completed task'
                    : 'Edit a task');
          }),
      actions: const [
        DeleteAction(),
        CompleteAction(),
      ],
    );
  }
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
