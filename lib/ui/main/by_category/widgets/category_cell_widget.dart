import 'package:easy_tasks/domain/category/category.dart';
import 'package:flutter/material.dart';

class CategoryCell extends StatelessWidget {
  const CategoryCell({this.item});

  final Category item;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8.0,
      margin: const EdgeInsets.all(24.0),
      child: Column(children: <Widget>[
        Expanded(
            child: Icon(
          item.icon,
          size: 32.0,
          color: item.color,
        )),
        Text(
          item.title,
          style: TextStyle(
            color: Colors.black,
            fontSize: 22.0,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            '${item.count} Tasks ',
            style: TextStyle(
              color: Colors.black38,
              fontSize: 14.0,
            ),
          ),
        ),
      ]),
    );
  }
}
