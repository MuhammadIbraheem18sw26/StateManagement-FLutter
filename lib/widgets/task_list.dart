import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todoapp/models/tasks.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/models/tasks_data.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
              isChecked: context.watch<TaskData>().task[index].isDone,
              taskTitle: context.watch<TaskData>().task[index].taskName,
              setCheckBox: (bool? value) {
                Provider.of<TaskData>(context, listen: false).updateTask(
                    Provider.of<TaskData>(context, listen: false).task[index]);
              });
        },
        itemCount: context.watch<TaskData>().taskCount);
  }
}
