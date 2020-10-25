import 'package:easy_tasks/domain/task/task.dart';
import 'package:easy_tasks/injection.dart';
import 'package:easy_tasks/ui/core/widgets/critical_failure_display_widget.dart';
import 'package:easy_tasks/ui/main/widgets/task_item.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:easy_tasks/application/task/list/task_list_bloc.dart';
import 'package:easy_tasks/ui/core/res/res.dart';

class TasksByPriorityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<TaskListBloc>(
      create: (context) =>
          getIt<TaskListBloc>()..add(const TaskListEvent.getOpenTasks()),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'By Priority',
              style: context.h4(),
            ),
          ),
          const Expanded(
            child: _ItemsList(emptyValue: 'No tasks yet'),
          )
        ],
      ),
    );
  }
}

class _ItemsList extends StatelessWidget {
  final String emptyValue;

  const _ItemsList({Key key, this.emptyValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskListBloc, TaskListState>(builder: (context, state) {
      return state.map(
        initial: (_) => Container(),
        isLoading: (_) => const Center(
          child: CircularProgressIndicator(),
        ),
        loadSuccess: (state) {
          final List<Entry> groupedTasks = <Entry>[];
          TaskPriority.values.forEach((priority) {
            groupedTasks.add(Entry(
                priority,
                state.tasks
                    .where((element) => element.priority == priority)
                    .toList()));
          });
          return ListView.builder(
            itemCount: groupedTasks.length,
            itemBuilder: (BuildContext context, int index) {
              final entry = groupedTasks[index];
              if (entry.children.isEmpty) {
                return ListTile(title: Text(describeEnum(entry.title)));
              }
              return ExpansionTile(
                initiallyExpanded: index == 0,
                title: Text(describeEnum(entry.title)),
                children: entry.children.map((task) {
                  return TaskItem(item: task);
                }).toList(),
              );
            },
          );
        },
        loadFailure: (state) => CriticalFailureDisplay(
          failure: state.failure,
        ),
      );
    });
  }
}

// One entry in the multilevel list displayed by this app.
class Entry {
  Entry(this.title, [this.children = const <Task>[]]);

  final TaskPriority title;
  final List<Task> children;
}
