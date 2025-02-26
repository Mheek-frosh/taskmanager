import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/task_model.dart';
import '../core/services/task_database.dart';
import '../core/services/task_notification.dart';
import 'dart:async';

class AddTaskScreen extends StatefulWidget {
  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  void _saveTask() {
    if (_titleController.text.isNotEmpty) {
      Task newTask = Task(
        title: _titleController.text,
        description: _descriptionController.text,
      );

      Provider.of<TaskDatabase>(context, listen: false).addTask(newTask);

      // Show notification after 2 seconds
      Timer(Duration(seconds: 2), () {
        TaskNotification.showNotification(
          "Task Reminder",
          "Don't forget: ${newTask.title}",
        );
      });

      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Task')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _titleController,
              decoration: InputDecoration(labelText: 'Task Title'),
            ),
            TextField(
              controller: _descriptionController,
              decoration: InputDecoration(labelText: 'Task Description'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _saveTask,
              child: Text('Save Task'),
            ),
          ],
        ),
      ),
    );
  }
}
