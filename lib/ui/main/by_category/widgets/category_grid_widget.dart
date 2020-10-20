import 'package:easy_tasks/application/category/category_cards_bloc.dart';
import 'package:easy_tasks/application/task/total/total_tasks_bloc.dart';
import 'package:easy_tasks/domain/category/category.dart';
import 'package:easy_tasks/ui/core/widgets/critical_failure_display_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'category_cell_widget.dart';

class CategoryCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryCardsBloc, CategoryCardsState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(),
          isLoading: (_) => const Center(
            child: CircularProgressIndicator(),
          ),
          loadSuccess: (state) {
            return GridView.builder(
              itemCount: state.categories.length + 2,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (BuildContext context, int index) {
                if (index == 0) {
                  return _allTasksCell(context);
                }
                if (index == state.categories.length + 1) {
                  return _otherTasksCell(context);
                }
                final TaskCategory item = state.categories[index - 1];
                return CategoryCell(item: item);
              },
            );
          },
          loadFailure: (state) => CriticalFailureDisplay(
            failure: state.failure,
          ),
        );
      },
    );
  }

  Widget _allTasksCell(BuildContext context) {
    return BlocBuilder<TotalTasksBloc, TotalTasksState>(
      builder: (context, state) {
        final count =
            state.map(initial: (_) => 0, count: (count) => count.totalCount);
        return CategoryCell(
          item: TaskCategory(
              title: 'All',
              icon: Icons.apps,
              color: Colors.lightBlueAccent,
              count: count,
              position: TaskCategory.CATEGORY_POSITION_ALL),
        );
      },
    );
  }

  Widget _otherTasksCell(BuildContext context) {
    return BlocBuilder<TotalTasksBloc, TotalTasksState>(
      builder: (context, state) {
        final count =
            state.map(initial: (_) => 0, count: (count) => count.otherCount);
        return CategoryCell(
          item: TaskCategory(
              title: 'Other',
              icon: Icons.menu,
              color: Colors.lightGreen,
              count: count,
              position: TaskCategory.CATEGORY_POSITION_OTHER),
        );
      },
    );
  }
}
