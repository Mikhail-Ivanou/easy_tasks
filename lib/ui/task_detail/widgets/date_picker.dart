import 'package:flutter/material.dart';
import 'package:easy_tasks/ui/core/ui.dart';

Future<DateTime> pickDateTime(
    BuildContext context, DateTime initialDateTime) async {
  final now = DateTime.now();
  final initialDate = initialDateTime ?? now;
  final DateTime date = await showDatePicker(
    context: context,
    firstDate: now,
    lastDate: DateTime(now.year + 20),
    initialDate: initialDate.isBefore(now) ? now : initialDate,
  );
  if (date == null) {
    return null;
  }
  final TimeOfDay time = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.fromDateTime(initialDateTime ?? now));
  if (time == null) {
    return null;
  }
  return date.copyWith(
      hour: time.hour,
      minute: time.minute,
      second: 0,
      millisecond: 0,
      microsecond: 0);
}

Future<DateTime> pickDate(
    BuildContext context, DateTime initialDateTime) async {
  final DateTime date = await showDatePicker(
    context: context,
    firstDate: DateTime.now(),
    lastDate: DateTime(DateTime.now().year + 20),
    initialDate: initialDateTime ?? DateTime.now(),
  );
  if (date == null) {
    return null;
  }

  return date.copyWith(
      hour: 0, minute: 0, second: 0, millisecond: 0, microsecond: 0);
}
