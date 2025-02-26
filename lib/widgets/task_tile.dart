import 'package:flutter/material.dart';
import '../models/task_model.dart';

class TaskTile extends StatelessWidget {
  final Task task;
  final VoidCallback onDelete;

  TaskTile({required this.task, required this.onDelete});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(task.title),
        subtitle: Text(task.description),
        trailing: IconButton(
          icon: Icon(Icons.delete, color: Colors.red),
          onPressed: onDelete,
        ),
      ),
    );
  }
}
