import 'package:flutter/material.dart';

extension UiCommon on BuildContext {
  void showSnackBar(String text) {
    Scaffold.of(this).showSnackBar(SnackBar(
      content: Text(text),
    ));
  }
}

extension MyDateUtils on DateTime {
  DateTime copyWith(
      {int year,
      int month,
      int day,
      int hour,
      int minute,
      int second,
      int millisecond,
      int microsecond}) {
    return DateTime(
      year ?? this.year,
      month ?? this.month,
      day ?? this.day,
      hour ?? this.hour,
      minute ?? this.minute,
      second ?? this.second,
      millisecond ?? this.millisecond,
      microsecond ?? this.microsecond,
    );
  }
}
