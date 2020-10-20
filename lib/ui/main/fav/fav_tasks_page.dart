import 'package:easy_tasks/application/task/list/task_list_bloc.dart';
import 'package:easy_tasks/injection.dart';
import 'package:easy_tasks/ui/core/res/res.dart';
import 'package:easy_tasks/ui/main/widgets/items_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoriteTasks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<TaskListBloc>(
      create: (context) =>
          getIt<TaskListBloc>()..add(const TaskListEvent.getFavorite()),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Favorites',
              style: context.h4(),
            ),
          ),
          const Expanded(
            child: ItemsList(emptyValue: 'Избранное пусто'),
          )
        ],
      ),
    );
  }
}
