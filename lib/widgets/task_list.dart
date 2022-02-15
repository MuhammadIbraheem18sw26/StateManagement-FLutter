import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todoapp/models/tasks.dart';

class TaskList extends StatefulWidget {
  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> task = [
    Task(taskName: 'Buy Milk'),
    Task(taskName: 'Bring Asfand From School', isDone: true)
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
              isChecked: task[index].isDone,
              taskTitle: task[index].taskName,
              setCheckBox: (bool? value) {
                setState(() {
                  task[index].toggleTasks();
                });
              });
        },
        itemCount: task.length - 0);
  }
}
