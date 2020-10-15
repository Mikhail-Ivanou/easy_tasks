import 'package:easy_tasks/application/task/task_detail/task_detail_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class NoteField extends HookWidget {
  const NoteField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();
    return BlocConsumer<TaskDetailBloc, TaskDetailState>(
      listenWhen: (p, c) => p.isNew != c.isNew,
      listener: (context, state) {
        textEditingController.text = state.task.notes;
      },
      buildWhen: (p, c) => p.task.isCompleted != c.task.isCompleted,
      builder: (context, state) {
        return TextFormField(
          maxLines: null,
          readOnly: state.task.isCompleted,
          controller: textEditingController,
          decoration: const InputDecoration(
            labelText: 'Additional info',
          ),
          keyboardType: TextInputType.multiline,
          onChanged: (value) => context
              .bloc<TaskDetailBloc>()
              .add(TaskDetailEvent.notesChanged(value)),
        );
      },
    );
  }
}
