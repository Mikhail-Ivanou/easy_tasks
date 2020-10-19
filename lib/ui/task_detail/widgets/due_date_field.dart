import 'package:easy_tasks/application/task/task_detail/task_detail_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl/intl.dart';

import 'date_picker.dart';

class DueDateField extends HookWidget {
  const DueDateField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO check if any better solution without such boolean exist
    var skipClick = false;
    final textEditingController = useTextEditingController();
    return BlocConsumer<TaskDetailBloc, TaskDetailState>(
      listenWhen: (p, c) => p.task.dueDate != c.task.dueDate,
      listener: (context, state) {
        final dueDate = state.task.dueDate == null
            ? ''
            : DateFormat.yMMMd().format(state.task.dueDate);
        textEditingController.text = dueDate;
      },
      buildWhen: (p, c) =>
          p.task.isCompleted != c.task.isCompleted ||
          p.task.dueDate != c.task.dueDate,
      builder: (context, state) {
        return TextFormField(
          readOnly: true,
          onTap: state.task.isCompleted
              ? null
              : () async {
                  if (skipClick) {
                    skipClick = !skipClick;
                    return;
                  }
                  final DateTime selected =
                      await pickDateTime(context, state.task.dueDate);
                  if (selected != null) {
                    context
                        .bloc<TaskDetailBloc>()
                        .add(TaskDetailEvent.dueDateChanged(dueDate: selected));
                  }
                },
          controller: textEditingController,
          decoration: InputDecoration(
            labelText: 'Due date',
            hintText: 'Set due date/time',
            suffixIcon: state.task.isCompleted || state.task.dueDate == null
                ? null
                : IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () {
                      skipClick = true;
                      context
                          .bloc<TaskDetailBloc>()
                          .add(const TaskDetailEvent.dueDateChanged());
                    }),
          ),
        );
      },
    );
  }
}
