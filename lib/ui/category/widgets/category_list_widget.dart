import 'package:auto_route/auto_route.dart';
import 'package:easy_tasks/application/category/actions/category_actions_cubit.dart';
import 'package:easy_tasks/application/category/category_cards_bloc.dart';
import 'package:easy_tasks/domain/category/category.dart';
import 'package:easy_tasks/ui/core/widgets/critical_failure_display_widget.dart';
import 'package:easy_tasks/ui/routes/routes.gr.dart';
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
            print('loadSuccess called');
            return ReorderableListView(
              onReorder: (int oldIndex, int newIndex) {
                final categoryCardsEvent = CategoryCardsEvent.reorderCategories(
                    state.categories, oldIndex, newIndex);
                context.bloc<CategoryCardsBloc>().add(categoryCardsEvent);
              },
              children: [
                for (TaskCategory category in state.categories)
                  CategoryItem(category: category, key: ValueKey(category.id))
              ],
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
  final TaskCategory category;

  const CategoryItem({Key key, this.category}) : super(key: key);

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
            context.bloc<CategoryActionsCubit>().deleteCategory(category);
          },
        )
      ],
      child: ListTile(
        onTap: () {
          ExtendedNavigator.of(context).push(Routes.categoryDetailPage,
              arguments: CategoryDetailPageArguments(category: category));
        },
        leading: Icon(
          category.icon,
          size: 24.0,
          color: category.color,
        ),
        trailing: const Icon(
          Icons.list,
        ),
        title: Text(
          category.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 22.0,
          ),
        ),
      ),
    );
  }
}
