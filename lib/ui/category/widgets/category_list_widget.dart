import 'package:auto_route/auto_route.dart';
import 'package:easy_tasks/application/category/category_cards_bloc.dart';
import 'package:easy_tasks/domain/category/category.dart';
import 'package:easy_tasks/ui/core/widgets/critical_failure_display_widget.dart';
import 'package:easy_tasks/ui/routes/routes.gr.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

//TODO move list loading widget as core parent
class CategoryListWidget extends StatelessWidget {
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
            return ListView.builder(
              itemCount: state.categories.length,
              itemBuilder: (BuildContext context, int index) {
                final TaskCategory item = state.categories[index];
                return CategoryItem(item);
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
}

class CategoryItem extends StatelessWidget {
  CategoryItem(this.item);

  final TaskCategory item;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      actionPane: const SlidableDrawerActionPane(),
      actionExtentRatio: 0.20,
      secondaryActions: <Widget>[
        IconSlideAction(
          caption: 'Delete',
          color: Colors.red,
          icon: Icons.delete,
          onTap: () {
            //TODO process deletion - requires repository refactor or firestore function implemented
            FlushbarHelper.createInformation(message: 'Not implemented')
                .show(context);
          },
        )
      ],
      child: ListTile(
        onTap: () {
          ExtendedNavigator.of(context).push(Routes.categoryDetailPage,
              arguments: CategoryDetailPageArguments(category: item));
        },
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
      ),
    );
  }
}
