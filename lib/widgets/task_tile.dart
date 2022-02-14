import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("hello Ibrahim bhai "),
      trailing: Checkbox(
        value: true,
        onChanged: (value) {},
      ),
    );
  }
}
