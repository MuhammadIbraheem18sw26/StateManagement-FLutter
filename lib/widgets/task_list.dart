import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todoapp/models/tasks.dart';

class TaskList extends StatefulWidget {
  final List<Task> tasks;

  TaskList(this.tasks);

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
              isChecked: widget.tasks[index].isDone,
              taskTitle: widget.tasks[index].taskName,
              setCheckBox: (bool? value) {
                setState(() {
                  widget.tasks[index].toggleTasks();
                });
              });
        },
        itemCount: widget.tasks.length - 0);
  }
}
