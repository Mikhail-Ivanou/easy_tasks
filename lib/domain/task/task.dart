import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_tasks/domain/category/category.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'task.freezed.dart';

@freezed
abstract class Task with _$Task {
  const factory Task({
    String id,
    @required String title,
    bool isCompleted,
    TaskCategory category,
    List<String> tags,
    DateTime dueDate,
    Timestamp dateCreated,
    TaskPriority priority,
    String notes,
    bool isFavorite,
  }) = _Task;

  factory Task.empty() => const Task(
        title: '',
        isCompleted: false,
      );
}

//TODO map enum values to localized strings
enum TaskPriority { High, Normal, Low, None }
