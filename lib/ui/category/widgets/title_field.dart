import 'package:easy_tasks/application/category/detail/category_detail_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class TitleField extends HookWidget {
  const TitleField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();
    textEditingController.text =
        context.bloc<CategoryDetailCubit>().state.category.title;
    return BlocBuilder<CategoryDetailCubit, CategoryDetailState>(
      buildWhen: (p, c) => p.isTitleValid != c.isTitleValid,
      builder: (context, state) {
        return TextFormField(
          controller: textEditingController,
          decoration: const InputDecoration(
            labelText: 'Category title',
          ),
          keyboardType: TextInputType.text,
          onChanged: (value) =>
              context.bloc<CategoryDetailCubit>().updateTilte(value),
          validator: (_) =>
              context.bloc<CategoryDetailCubit>().state.isTitleValid
                  ? null
                  : 'Title cannot be empty',
        );
      },
    );
  }
}
