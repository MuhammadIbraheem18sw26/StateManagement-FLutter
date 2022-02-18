// @dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/Screens/task_screen.dart';
import 'package:provider/provider.dart';
import 'models/tasks_data.dart';

void main() {
  runApp(Todo());
}

class Todo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => TaskData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TaskScreen(),
      ),
    );
  }
}
