import 'package:flutter/material.dart';

class Fab extends StatelessWidget {
  // const Fab({this.initialCategory});

  // final TaskCategory initialCategory;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      child: const Icon(Icons.add),
      backgroundColor: Colors.lightBlueAccent,
    );
  }
}
