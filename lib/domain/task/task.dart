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


  factory Task.create({TaskCategory category}) => Task(
        title: '',
        category: category,
        isCompleted: false,
        isFavorite: false,
        dateCreated: Timestamp.now(),
        priority: TaskPriority.None,
      );
}

//TODO map enum values to localized strings
enum TaskPriority { High, Normal, Low, None }
