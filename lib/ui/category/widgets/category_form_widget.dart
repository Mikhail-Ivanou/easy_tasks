import 'package:easy_tasks/application/category/detail/category_detail_cubit.dart';
import 'package:easy_tasks/ui/category/widgets/title_field.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
                  SizedBox(
                    height: 8,
                  ),
                  TitleField(),
                  SizedBox(
                    height: 16.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          FlushbarHelper.createInformation(
                                  message: 'Select icon TBD')
                              .show(context);
                        },
                        child: Icon(
                          state.category.icon,
                          color: state.category.color,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          FlushbarHelper.createInformation(
                                  message: 'Select color TBD')
                              .show(context);
                        },
                        child: Container(
                          width: 50,
                          height: 40,
                          color: state.category.color,
                        ),
                      ),
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
