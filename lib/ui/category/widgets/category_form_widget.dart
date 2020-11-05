import 'package:easy_tasks/application/category/detail/category_detail_cubit.dart';
import 'package:easy_tasks/ui/category/widgets/icon_picker.dart';
import 'package:easy_tasks/ui/category/widgets/title_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class CategoryFormWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryDetailCubit, CategoryDetailState>(
      buildWhen: (p, c) => p.showErrorMessages != c.showErrorMessages,
      builder: (context, state) {
        return Form(
          autovalidateMode: state.showErrorMessages
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 8,
                  ),
                  const TitleField(),
                  const SizedBox(
                    height: 16.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      IconPicker(),
                      ColorPicker(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class ColorPicker extends StatelessWidget {
  const ColorPicker({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryDetailCubit, CategoryDetailState>(
        buildWhen: (p, c) => p.category.color != c.category.color,
        builder: (context, state) {
          return GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext alertContext) {
                  return AlertDialog(
                    title: Text('Select a color'),
                    content: SingleChildScrollView(
                      child: BlockPicker(
                        pickerColor: state.category.color,
                        onColorChanged: (color) {
                          context
                              .bloc<CategoryDetailCubit>()
                              .updateColor(color);
                          Navigator.pop(alertContext);
                        },
                      ),
                    ),
                  );
                },
              );
            },
            child: Container(
              width: 50,
              height: 40,
              color: state.category.color,
            ),
          );
        });
  }
}

class IconPicker extends StatelessWidget {
  const IconPicker({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryDetailCubit, CategoryDetailState>(
        buildWhen: (p, c) => p.category.icon != c.category.icon,
        builder: (context, state) {
          return GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext alertContext) {
                  return AlertDialog(
                    title: const Text('Select an icon'),
                    content: SingleChildScrollView(
                      child: IconPickerWidget(
                        selectedIcon: state.category.icon,
                        onIconSelected: (icon) {
                          context.bloc<CategoryDetailCubit>().updateIcon(icon);
                          Navigator.pop(alertContext);
                        },
                      ),
                    ),
                  );
                },
              );
            },
            child: Icon(
              state.category.icon,
              color: state.category.color,
            ),
          );
        });
  }
}
