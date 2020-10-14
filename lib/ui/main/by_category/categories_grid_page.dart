import 'package:easy_tasks/application/category/category_cards_bloc.dart';
import 'package:easy_tasks/application/task/total/total_tasks_bloc.dart';
import 'package:easy_tasks/domain/category/category.dart';
import 'package:easy_tasks/injection.dart';
import 'package:easy_tasks/ui/core/widgets/critical_failure_display_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

//TODO need refactoring by widgets, theme for styles
class CategoryGridPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CategoryCardsBloc>(
            create: (context) => getIt<CategoryCardsBloc>()
              ..add(const CategoryCardsEvent.getCategories())),
        BlocProvider<TotalTasksBloc>(
            create: (context) => getIt<TotalTasksBloc>()
              ..add(const TotalTasksEvent.checkTotalCount())),
      ],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'By Category',
            ),
          ),
          Expanded(
            child: _CategoryCards(),
          )
        ],
      ),
    );
  }
}

class _CategoryCards extends StatelessWidget {
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
              final Category item = state.categories[index - 1];
              return GestureDetector(
                onTap: () {},
                child: _CategoryCell(item: item),
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

  Widget _allTasksCell(BuildContext context) {
    return BlocBuilder<TotalTasksBloc, TotalTasksState>(
      builder: (context, state) {
        final count =
            state.map(initial: (_) => 0, count: (count) => count.totalCount);
        return _CategoryCell(
          item: Category(
              title: 'All',
              icon: Icons.apps,
              color: Colors.lightBlueAccent,
              count: count,
              position: 0),
        );
      },
    );
  }

  Widget _otherTasksCell(BuildContext context) {
    return BlocBuilder<TotalTasksBloc, TotalTasksState>(
      builder: (context, state) {
        final count =
            state.map(initial: (_) => 0, count: (count) => count.otherCount);
        return _CategoryCell(
          item: Category(
              title: 'Other',
              icon: Icons.menu,
              color: Colors.lightGreen,
              count: count,
              position: 11111),
        );
      },
    );
  }
}

class _CategoryCell extends StatelessWidget {
  const _CategoryCell({this.item});

  final Category item;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8.0,
      margin: const EdgeInsets.all(24.0),
      child: Column(children: <Widget>[
        Expanded(
            child: Icon(
          item.icon,
          size: 32.0,
          color: item.color,
        )),
        Text(
          item.title,
          style: TextStyle(
            color: Colors.black,
            fontSize: 22.0,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            '${item.count} Tasks ',
            style: TextStyle(
              color: Colors.black38,
              fontSize: 14.0,
            ),
          ),
        ),
      ]),
    );
  }
}
