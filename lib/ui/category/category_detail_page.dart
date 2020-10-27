import 'package:easy_tasks/domain/category/category.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';

class CategoryDetailPage extends StatelessWidget {
  final TaskCategory category;

  const CategoryDetailPage({Key key, this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: category == null ? Text('New category') : Text('Edit category'),
        actions: [
          IconButton(
              icon: Icon(Icons.check),
              onPressed: () {
                FlushbarHelper.createInformation(message: 'Not implemented')
                    .show(context);
              }),
        ],
      ),
      body: Center(
        child: Text('${category?.title}'),
      ),
    );
  }
}
