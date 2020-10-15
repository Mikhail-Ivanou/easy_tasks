import 'package:easy_tasks/application/task/task_detail/task_detail_bloc.dart';
import 'package:easy_tasks/ui/task_detail/widgets/priority_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class PriorityField extends HookWidget {
  const PriorityField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();
    return BlocConsumer<TaskDetailBloc, TaskDetailState>(
      listenWhen: (p, c) => p.task.priority != c.task.priority,
      listener: (context, state) {
        textEditingController.text = describeEnum(state.task.priority);
      },
      buildWhen: (p, c) => p.task.isCompleted != c.task.isCompleted,
      builder: (context, state) {
        return TextFormField(
          readOnly: true,
          onTap: state.task.isCompleted
              ? null
              : () async {
                  final priority = await pickPriority(context);
                  context
                      .bloc<TaskDetailBloc>()
                      .add(TaskDetailEvent.priorityChanged(priority));
                },
          controller: textEditingController,
          decoration: const InputDecoration(
            labelText: 'Priority',
          ),
        );
      },
    );
  }
}
