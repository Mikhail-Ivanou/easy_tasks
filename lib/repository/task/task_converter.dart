import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_tasks/domain/category/category.dart';
import 'package:easy_tasks/domain/task/task.dart';

Task fromFirestore(DocumentSnapshot doc, Map<String, TaskCategory> categories) {
  final Map<String, dynamic> data = doc.data();
  final Timestamp timestamp = data['dueDate'] as Timestamp;
  final DateTime dateTime = timestamp == null
      ? null
      : DateTime.fromMillisecondsSinceEpoch(timestamp.millisecondsSinceEpoch);
  final List<dynamic> tags = data['tags'] as List;
  return Task(
      id: doc.id,
      title: data['title'] as String ?? '',
      tags: tags?.cast<String>(),
      dueDate: dateTime,
      category: categories[data['category'] as String],
      notes: data['notes'] as String,
      priority: TaskPriority.values[data['priority'] as int],
      isCompleted: data['isCompleted'] as bool ?? false,
      isFavorite: data['isFavorite'] as bool ?? false);
}

Task fromFirestoreDoc(DocumentSnapshot doc) {
  final Map<String, dynamic> data = doc.data();
  final Timestamp timestamp = data['dueDate'] as Timestamp;
  final DateTime dateTime = timestamp == null
      ? null
      : DateTime.fromMillisecondsSinceEpoch(timestamp.millisecondsSinceEpoch);
  final List<dynamic> tags = data['tags'] as List;
  return Task(
      id: doc.id,
      title: data['title'] as String ?? '',
      tags: tags?.cast<String>(),
      dueDate: dateTime,
      category: null,
      notes: data['notes'] as String,
      priority: TaskPriority.values[data['priority'] as int],
      isCompleted: data['isCompleted'] as bool ?? false,
      isFavorite: data['isFavorite'] as bool ?? false);
}

extension TaskConverter on Task {
  Map<String, dynamic> toMap() {
    final Map<String, dynamic> result = <String, dynamic>{};
    result['title'] = title;
    result['isCompleted'] = isCompleted;
    result['category'] = category.id;
    result['tags'] = tags;
    result['dueDate'] = dueDate;
    result['priority'] = priority.index;
    result['notes'] = notes;
    result['dateCreated'] = dateCreated;
    result['isFavorite'] = isFavorite;

    return result;
  }
}
