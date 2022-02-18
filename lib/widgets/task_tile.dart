import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final void Function(bool?) setCheckBox;
  final void Function() longpress;

  TaskTile(
      {required this.isChecked,
      required this.taskTitle,
      required this.setCheckBox,
      required this.longpress});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longpress,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.blueAccent,
        value: isChecked,
        onChanged: setCheckBox,
      ),
    );
  }
}
