import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';

@freezed
abstract class TaskCategory implements _$TaskCategory {
  static const CATEGORY_POSITION_ALL = 0;
  static const CATEGORY_POSITION_OTHER = 11111;

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
