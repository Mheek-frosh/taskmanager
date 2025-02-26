import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../core/services/task_database.dart';
import '../models/task_model.dart';
import '../widgets/task_tile.dart';
import 'add_task_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final taskProvider = Provider.of<TaskDatabase>(context);

    return Scaffold(
      appBar: AppBar(title: Text('Task Manager')),
      body: taskProvider.tasks.isEmpty
          ? Center(child: Text('No tasks added.'))
          : ListView.builder(
        itemCount: taskProvider.tasks.length,
        itemBuilder: (context, index) {
          return TaskTile(
            task: taskProvider.tasks[index],
            onDelete: () => taskProvider.deleteTask(index),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AddTaskScreen()),
        ),
      ),
    );
  }
}
