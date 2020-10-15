import 'package:easy_tasks/application/task/task_detail/task_detail_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavField extends StatelessWidget {
  const FavField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskDetailBloc, TaskDetailState>(
      buildWhen: (p, c) =>
          p.task.isFavorite != c.task.isFavorite ||
          p.task.isCompleted != c.task.isCompleted,
      builder: (context, state) {
        return IconButton(
          onPressed: state.task.isCompleted
              ? null
              : () {
                  context
                      .bloc<TaskDetailBloc>()
                      .add(const TaskDetailEvent.favChanged());
                },
          icon: Icon(
            state.task?.isFavorite == true
                ? Icons.favorite
                : Icons.favorite_border,
            color: state.task.isCompleted
                ? Colors.black38
                : Colors.lightBlueAccent,
          ),
        );
      },
    );
  }
}
