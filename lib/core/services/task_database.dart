import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import '../../models/task_model.dart';

class TaskDatabase extends ChangeNotifier {
  final Box<Task> taskBox = Hive.box<Task>('tasks');

  List<Task> get tasks => taskBox.values.toList();

  void addTask(Task task) {
    taskBox.add(task);
    notifyListeners();
  }

  void deleteTask(int index) {
    taskBox.deleteAt(index);
    notifyListeners();
  }
}
