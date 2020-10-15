import 'package:easy_tasks/domain/task/task.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

Future<TaskPriority> pickPriority(BuildContext context) async {
  return showModalBottomSheet<TaskPriority>(
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20.0),
        topRight: Radius.circular(20.0),
      ),
    ),
    context: context,
    builder: (context) => SingleChildScrollView(
      child: Container(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: PriorityPickerWidget(),
      ),
    ),
  );
}

class PriorityPickerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.0), topLeft: Radius.circular(20.0))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: getItems(context),
      ),
    );
  }

  List<Widget> getItems(BuildContext context) {
    final List<Widget> items = <Widget>[];
    items.add(const SizedBox(
      height: 16.0,
    ));
    items.add(const Text(
      'Select priority',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 24.0,
        color: Colors.black,
      ),
    ));
    items.add(const SizedBox(
      height: 16.0,
    ));
    TaskPriority.values.forEach((element) {
      items.add(const Divider(
        color: Colors.black38,
        height: 1.0,
      ));
      items.add(FlatButton(
        onPressed: () {
          Navigator.pop(context, element);
        },
        child: Text(
          describeEnum(element),
          textAlign: TextAlign.center,
          style: const TextStyle(color: Colors.black, fontSize: 18.0),
        ),
      ));
    });
    return items;
  }
}
