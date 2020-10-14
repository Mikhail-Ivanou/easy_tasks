import 'package:easy_tasks/application/category/category_cards_bloc.dart';
import 'package:easy_tasks/application/task/total/total_tasks_bloc.dart';
import 'package:easy_tasks/injection.dart';
import 'package:easy_tasks/ui/main/by_category/widgets/category_grid_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
            padding: EdgeInsets.all(16.0),
            child: Text(
              'By Category',
            ),
          ),
          Expanded(
            child: CategoryCards(),
          )
        ],
      ),
    );
  }
}
