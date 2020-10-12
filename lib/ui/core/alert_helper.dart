import 'package:flutter/material.dart';

Future<bool> showConfirmDialog(BuildContext context, Widget alertTitle,
    List<Widget> children, List<Widget> actions) async {
  return showDialog<bool>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: alertTitle,
        content: SingleChildScrollView(
          child: ListBody(
            children: children,
          ),
        ),
        actions: actions,
      );
    },
  );
}

Future<bool> showNotifyDialog(
    BuildContext context, String title, String message,
    {String action = 'Close'}) async {
  return showDialog<bool>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(title),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text(message),
            ],
          ),
        ),
        actions: <Widget>[
          FlatButton(
            child: Text(action),
            onPressed: () {
              Navigator.pop(context, true);
            },
          ),
        ],
      );
    },
  );
}
