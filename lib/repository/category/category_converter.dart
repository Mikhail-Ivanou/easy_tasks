import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_tasks/domain/category/category.dart';
import 'package:easy_tasks/domain/category/category_icons.dart';
import 'package:flutter/material.dart';

TaskCategory fromFirestore(DocumentSnapshot doc) {
  final Map<String, dynamic> data = doc.data();
  final String title = data['title'] as String ?? '';
  return TaskCategory(
      id: doc.id,
      title: title,
      icon: codeIconMap[data['icon']],
      color: Color(data['color'] as int),
      count: data['count'] as int ?? 0,
      position: data['position'] as int ?? 0);
}

extension CategoryConverter on TaskCategory {
  Map<String, dynamic> toMap() {
    final Map<String, dynamic> result = <String, dynamic>{};
    result['title'] = title;
    result['icon'] = iconCodeMap[icon];
    result['color'] = color.value;
    result['count'] = count;
    result['position'] = position;
    return result;
  }
}
