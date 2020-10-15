import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';

@freezed
abstract class TaskCategory implements _$TaskCategory {
  const TaskCategory._();

  const factory TaskCategory({
    String id,
    @required String title,
    @required IconData icon,
    @required Color color,
    @required int count,
    @required int position,
  }) = _TaskCategory;
}
