import 'package:auto_route/auto_route.dart';
import 'package:easy_tasks/domain/category/category.dart';
import 'package:easy_tasks/ui/routes/routes.gr.dart';
import 'package:flutter/material.dart';

class Fab extends StatelessWidget {
  const Fab({this.initialCategory});

  final TaskCategory initialCategory;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        ExtendedNavigator.of(context).push(Routes.taskCreatePage,
            arguments:
                TaskCreatePageArguments(initialCategory: initialCategory));
      },
      backgroundColor: Colors.lightBlueAccent,
      child: const Icon(Icons.add),
    );
  }
}
