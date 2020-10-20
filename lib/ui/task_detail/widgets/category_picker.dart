import 'package:easy_tasks/application/category/category_cards_bloc.dart';
import 'package:easy_tasks/domain/category/category.dart';
import 'package:easy_tasks/injection.dart';
import 'package:easy_tasks/ui/core/widgets/critical_failure_display_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<TaskCategory> pickCategory(BuildContext context) {
  return showModalBottomSheet(
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20.0),
        topRight: Radius.circular(20.0),
      ),
    ),
    context: context,
    builder: (context) => Container(
      height: 460,
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: CategoryPickerWidget(),
    ),
  );
}

class CategoryPickerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<CategoryCardsBloc>(
      create: (context) => getIt<CategoryCardsBloc>()
        ..add(const CategoryCardsEvent.getCategories()),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
        child: Column(children: [
          const SizedBox(
            height: 16.0,
          ),
          const Text(
            'Select category',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24.0,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          CategoryList(),
        ]),
      ),
    );
  }
}

class CategoryList extends StatelessWidget {
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
            return Container(
              height: 340,
              child: ListView.builder(
                itemCount: state.categories.length,
                itemBuilder: (BuildContext context, int index) {
                  final TaskCategory item = state.categories[index];
                  return CategoryItem(item);
                },
              ),
            );
          },
          loadFailure: (state) => CriticalFailureDisplay(
            failure: state.failure,
          ),
        );
      },
    );
  }
}

class CategoryItem extends StatelessWidget {
  CategoryItem(this.item);

  final TaskCategory item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => Navigator.pop(context, item),
      leading: Icon(
        item.icon,
        size: 24.0,
        color: item.color,
      ),
      title: Text(
        item.title,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 22.0,
        ),
      ),
    );
  }
}
