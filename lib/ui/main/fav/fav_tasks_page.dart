import 'package:easy_tasks/injection.dart';
import 'package:easy_tasks/ui/core/widgets/critical_failure_display_widget.dart';
import 'package:easy_tasks/ui/core/widgets/task_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:easy_tasks/ui/core/res/res.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:easy_tasks/application/task/list/task_list_bloc.dart';

class FavoriteTasks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //TODO use single BlocProvider
    return MultiBlocProvider(
      providers: [
        BlocProvider<TaskListBloc>(
            create: (context) =>
                getIt<TaskListBloc>()..add(const TaskListEvent.getFavorite())),
      ],
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
          Expanded(
            child: _FavList(),
          )
        ],
      ),
    );
  }
}

class _FavList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskListBloc, TaskListState>(builder: (context, state) {
      return state.map(
        initial: (_) => Container(),
        isLoading: (_) => const Center(
          child: CircularProgressIndicator(),
        ),
        loadSuccess: (state) {
          if (state.tasks.isEmpty) {
            return Center(
              child: Text(
                'Избранное пусто',
                style: context.h3(),
              ),
            );
          } else {
            return ListView.builder(
              itemCount: state.tasks.length,
              itemBuilder: (BuildContext context, int index) {
                final item = state.tasks[index];
                return TaskItem(item: item);
              },
            );
          }
        },
        loadFailure: (state) => CriticalFailureDisplay(
          failure: state.failure,
        ),
      );
    });
  }
}
