import 'package:auto_route/auto_route.dart';
import 'package:easy_tasks/application/category/category_cards_bloc.dart';
import 'package:easy_tasks/injection.dart';
import 'package:easy_tasks/ui/category/widgets/category_list_widget.dart';
import 'package:easy_tasks/ui/routes/routes.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ManageCategoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Manage Categories'),
      ),
      body: BlocProvider<CategoryCardsBloc>(
        create: (context) => getIt<CategoryCardsBloc>()
          ..add(const CategoryCardsEvent.getCategories()),
        child: CategoryListWidget(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ExtendedNavigator.of(context).push(Routes.categoryDetailPage);
        },
        backgroundColor: Colors.lightBlueAccent,
        child: const Icon(Icons.add),
      ),
    );
  }
}
