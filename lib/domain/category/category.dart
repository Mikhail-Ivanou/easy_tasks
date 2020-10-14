import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';

@freezed
abstract class Category implements _$Category {
  const Category._();

  const factory Category({
    String id,
    @required String title,
    @required IconData icon,
    @required Color color,
    @required int count,
    @required int position,
  }) = _Category;
}
