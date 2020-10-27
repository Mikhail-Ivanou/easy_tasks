import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_tasks/domain/category/category.dart';
import 'package:easy_tasks/domain/task/task.dart';
import 'package:flutter/material.dart';

const List<TaskCategory> initialCategories = [
  TaskCategory(
      title: 'Work',
      icon: Icons.work,
      color: Colors.lightBlue,
      count: 0,
      position: 1),
  TaskCategory(
      title: 'Home',
      icon: Icons.home,
      color: Colors.orange,
      count: 4,
      position: 2),
  TaskCategory(
      title: 'Music',
      icon: Icons.headset,
      color: Colors.red,
      count: 0,
      position: 3),
  TaskCategory(
      title: 'Travel',
      icon: Icons.flight_takeoff,
      color: Colors.green,
      count: 1,
      position: 4),
  TaskCategory(
      title: 'Study',
      icon: Icons.library_books,
      color: Colors.purple,
      count: 3,
      position: 5),
  TaskCategory(
      title: 'Shop',
      icon: Icons.shopping_cart,
      color: Colors.amber,
      count: 0,
      position: 6),
  TaskCategory(
      title: 'Sport',
      icon: Icons.pool,
      color: Colors.yellow,
      count: 1,
      position: 7),
  TaskCategory(
      title: 'Hobby',
      icon: Icons.toys,
      color: Colors.deepPurple,
      count: 0,
      position: 8),
];

List<Task> initialTasks({
  @required TaskCategory use4,
  @required TaskCategory use1,
  @required TaskCategory use3,
  @required TaskCategory useOnce,
}) {
  return [
    Task(
        title: 'Mark task as favorite',
        category: use4,
        isCompleted: false,
        dateCreated: Timestamp.now(),
        dueDate: DateTime.now().subtract(const Duration(days: 2)),
        priority: TaskPriority.High),
    Task(
        title: 'This task is already favorite',
        category: use4,
        isCompleted: false,
        dateCreated: Timestamp.now(),
        isFavorite: true,
        dueDate: DateTime.now().subtract(const Duration(days: 1)),
        priority: TaskPriority.Low),
    Task(
        title: 'This is normal overdue task',
        category: use4,
        isCompleted: false,
        dateCreated: Timestamp.now(),
        dueDate: DateTime.now().subtract(const Duration(days: 1)),
        priority: TaskPriority.Normal),
    Task(
        title: 'Task with high priority for today',
        category: use3,
        isCompleted: false,
        dateCreated: Timestamp.now(),
        dueDate: DateTime.now(),
        priority: TaskPriority.High),
    Task(
        title: 'Task with no due date',
        category: use4,
        isCompleted: false,
        dueDate: DateTime.now(),
        priority: TaskPriority.Low),
    Task(
        title: 'Future task',
        category: use3,
        isCompleted: false,
        dateCreated: Timestamp.now(),
        dueDate: DateTime.now().add(const Duration(days: 2)),
        priority: TaskPriority.High),
    Task(
        title: 'Low task for today',
        category: use1,
        isCompleted: false,
        dueDate: DateTime.now(),
        dateCreated: Timestamp.now(),
        priority: TaskPriority.Low,
        isFavorite: true),
    Task(
        title: 'High task for future',
        category: use3,
        isCompleted: false,
        dueDate: DateTime.now().add(const Duration(days: 3)),
        dateCreated: Timestamp.now(),
        priority: TaskPriority.High,
        isFavorite: true),
    Task(
        title: 'One more low',
        category: useOnce,
        isCompleted: false,
        dueDate: DateTime.now().add(const Duration(days: 3)),
        dateCreated: Timestamp.now(),
        priority: TaskPriority.Low),
    Task(
        title: 'To other category',
        isCompleted: false,
        dueDate: DateTime.now().add(const Duration(days: 3)),
        dateCreated: Timestamp.now(),
        priority: TaskPriority.None),
  ];
}
