import 'package:easy_tasks/application/task/task_detail/task_detail_bloc.dart';
import 'package:easy_tasks/ui/task_detail/widgets/category_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CategoryField extends HookWidget {
  const CategoryField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO check if any better solution without such boolean exist
    var skipClick = false;
    final textEditingController = useTextEditingController();
    return BlocConsumer<TaskDetailBloc, TaskDetailState>(
      listenWhen: (p, c) => p.category != c.category,
      listener: (context, state) {
        textEditingController.text = state.category?.title ?? '';
      },
      buildWhen: (p, c) =>
          p.task.isCompleted != c.task.isCompleted || p.category != c.category,
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
                  final category = await pickCategory(context);
                  if (category != null) {
                    context.bloc<TaskDetailBloc>().add(
                        TaskDetailEvent.categoryChanged(category: category));
                  }
                },
          controller: textEditingController,
          decoration: InputDecoration(
            labelText: 'Category',
            hintText: 'Select category',
            suffixIcon: state.task.isCompleted || state.category == null
                ? null
                : IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () {
                      skipClick = true;
                      context
                          .bloc<TaskDetailBloc>()
                          .add(TaskDetailEvent.categoryChanged());
                    }),
          ),
        );
      },
    );
  }
}
