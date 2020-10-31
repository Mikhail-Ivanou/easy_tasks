import 'package:auto_route/auto_route.dart';
import 'package:easy_tasks/application/category/actions/category_actions_cubit.dart';
import 'package:easy_tasks/application/category/detail/category_detail_cubit.dart';
import 'package:easy_tasks/domain/category/category.dart';
import 'package:easy_tasks/injection.dart';
import 'package:easy_tasks/ui/category/widgets/category_form_widget.dart';
import 'package:easy_tasks/ui/task_detail/widgets/overlay.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryDetailPage extends StatelessWidget {
  final TaskCategory category;

  const CategoryDetailPage({Key key, this.category}) : super(key: key);

  //TODO common detail page
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<CategoryDetailCubit>(
              create: (context) =>
                  getIt<CategoryDetailCubit>()..init(category)),
          BlocProvider<CategoryActionsCubit>(
              create: (context) => getIt<CategoryActionsCubit>()),
        ],
        child: BlocConsumer<CategoryActionsCubit, CategoryActionState>(
          listener: (context, state) {
            state.maybeMap(
              success: (_) {
                ExtendedNavigator.of(context).pop();
              },
              error: (failure) {
                FlushbarHelper.createError(
                        message:
                            'Unexpected error occured, please contact support.')
                    .show(context);
              },
              orElse: () {},
            );
          },
          builder: (context, state) {
            return Stack(children: <Widget>[
              Scaffold(
                appBar: _buildAppBar(),
                body: CategoryFormWidget(),
              ),
              SavingInProgressOverlay(
                isSaving: state.maybeWhen(
                    processing: () => true, orElse: () => false),
              )
            ]);
          },
        ));
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: category == null
          ? const Text('New category')
          : const Text('Edit category'),
      actions: const [
        ConfirmAction(),
      ],
    );
  }
}

class ConfirmAction extends StatelessWidget {
  const ConfirmAction({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.check,
        color: Colors.white,
      ),
      onPressed: () {
        final category = context.bloc<CategoryDetailCubit>().state.category;
        context.bloc<CategoryActionsCubit>().updateCategory(category);
      },
    );
  }
}
