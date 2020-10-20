import 'package:easy_tasks/application/task/list/task_list_bloc.dart';
import 'package:easy_tasks/domain/category/category.dart';
import 'package:easy_tasks/injection.dart';
import 'package:easy_tasks/ui/core/widgets/fab.dart';
import 'package:easy_tasks/ui/main/widgets/items_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TasksListPage extends StatelessWidget {
  const TasksListPage({Key key, @required this.category}) : super(key: key);
  final TaskCategory category;

  @override
  Widget build(BuildContext context) {
    TaskListEvent event;
    switch (category.position) {
      case TaskCategory.CATEGORY_POSITION_ALL:
        event = const TaskListEvent.getAllTasks();
        break;
      case TaskCategory.CATEGORY_POSITION_OTHER:
        event = const TaskListEvent.getTasksOtherCategory();
        break;
      default:
        event = TaskListEvent.getTasksWithCategory(category.id);
        break;
    }
    return BlocProvider<TaskListBloc>(
      create: (context) => getIt<TaskListBloc>()..add(event),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text(category.title),
        ),
        body: const ItemsList(emptyValue: 'No tasks yet'),
        floatingActionButton: Fab(initialCategory: category),
      ),
    );
  }
}
