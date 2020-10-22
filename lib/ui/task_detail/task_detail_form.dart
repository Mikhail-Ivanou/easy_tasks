import 'package:easy_tasks/application/task/task_detail/task_detail_bloc.dart';
import 'package:easy_tasks/ui/task_detail/widgets/category_field.dart';
import 'package:easy_tasks/ui/task_detail/widgets/due_date_field.dart';
import 'package:easy_tasks/ui/task_detail/widgets/note_field.dart';
import 'package:easy_tasks/ui/task_detail/widgets/priority_field.dart';
import 'package:easy_tasks/ui/task_detail/widgets/tags_field.dart';
import 'package:easy_tasks/ui/task_detail/widgets/title_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/fav_field.dart';

class TaskDetailForm extends StatelessWidget {
  const TaskDetailForm({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskDetailBloc, TaskDetailState>(
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
                  children: const <Widget>[
                    SizedBox(
                      height: 8,
                    ),
                    FavField(),
                    SizedBox(
                      height: 16.0,
                    ),
                    TitleField(),
                    SizedBox(
                      height: 10.0,
                    ),
                    DueDateField(),
                    SizedBox(
                      height: 10.0,
                    ),
                    NoteField(),
                    SizedBox(
                      height: 10.0,
                    ),
                    TagsField(),
                    SizedBox(
                      height: 10.0,
                    ),
                    CategoryField(),
                    SizedBox(
                      height: 10.0,
                    ),
                    PriorityField(),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
