import 'package:easy_tasks/domain/core/firebase_failure.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:easy_tasks/ui/core/res/res.dart';

class CriticalFailureDisplay extends StatelessWidget {
  final FirebaseFailure failure;

  const CriticalFailureDisplay({Key key, @required this.failure})
      : super(key: key);

  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            '😱',
            style: TextStyle(fontSize: 100),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            failure.maybeMap(
                insufficientPermissions: (_) => 'Insufficient permissions',
                orElse: () => 'Unexpected error.\nPlease contact support'),
            style: context.h2(),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 8,
          ),
          FlatButton(
            onPressed: () {
              FlushbarHelper.createInformation(
                message: 'Sending email',
              ).show(context);
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Icon(Icons.email),
                SizedBox(
                  width: 4,
                ),
                Text('I NEED HELP!'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
