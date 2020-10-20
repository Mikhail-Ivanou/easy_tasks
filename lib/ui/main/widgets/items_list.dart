import 'package:easy_tasks/ui/core/widgets/critical_failure_display_widget.dart';
import 'package:easy_tasks/ui/main/widgets/task_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:easy_tasks/application/task/list/task_list_bloc.dart';
import 'package:easy_tasks/ui/core/res/res.dart';

class ItemsList extends StatelessWidget {
  final String emptyValue;

  const ItemsList({Key key, this.emptyValue}) : super(key: key);

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
                emptyValue,
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
