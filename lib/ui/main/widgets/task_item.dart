import 'package:auto_route/auto_route.dart';
import 'package:easy_tasks/application/task/actions/task_actions_cubit.dart';
import 'package:easy_tasks/domain/task/task.dart';
import 'package:easy_tasks/injection.dart';
import 'package:easy_tasks/ui/routes/routes.gr.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({
    @required this.item,
  });

  final Task item;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TaskActionsCubit>(
      create: (context) => getIt<TaskActionsCubit>(),
      child: GestureDetector(
        onTap: () {
          ExtendedNavigator.of(context).push(Routes.taskDetailPage,
              arguments: TaskDetailPageArguments(initialTask: item));
        },
        child: CardWidget(item: item),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key key,
    @required this.item,
  }) : super(key: key);

  final Task item;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8.0,
      margin: const EdgeInsets.all(12.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            IconButton(
              onPressed: () {
                if (!item.isCompleted) {
                  //TODO handle multiclick / show progress
                  context
                      .bloc<TaskActionsCubit>()
                      .update(item.copyWith(isFavorite: !item.isFavorite));
                }
              },
              icon: Icon(
                item.isFavorite ? Icons.favorite : Icons.favorite_border,
                color:
                    item.isCompleted ? Colors.black38 : Colors.lightBlueAccent,
              ),
            ),
            Expanded(
              child: Text(
                '${item.title} / ${describeEnum(item.priority)} / ${item.category == null ? 'Other' : item.category.title} / ${item.dueDate == null ? '' : DateFormat.yMMMd().format(item.dueDate)}',
                style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.black,
                    decoration: item.isCompleted
                        ? TextDecoration.lineThrough
                        : TextDecoration.none),
              ),
            ),
            Checkbox(
              onChanged: (value) {
                //TODO handle multiclick / show progress
                context
                    .bloc<TaskActionsCubit>()
                    .update(item.copyWith(isCompleted: !item.isCompleted));
              },
              activeColor: Colors.lightBlueAccent,
              value: item.isCompleted,
            ),
          ],
        ),
      ),
    );
  }
}
