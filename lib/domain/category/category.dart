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
    String title,
    IconData icon,
    Color color,
    int count,
    int position,
  }) = _TaskCategory;

  factory TaskCategory.create() => const TaskCategory(
        title: '',
        color: Colors.red,
        icon: Icons.create,
        count: 0,
      );
}
