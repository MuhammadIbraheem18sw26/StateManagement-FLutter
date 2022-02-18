import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'dart:collection';

import 'tasks.dart';

class TaskData extends ChangeNotifier {
  List<Task> _task = [
    Task(taskName: 'Buy Milk'),
    Task(taskName: 'Bring Asfand From School'),
    Task(taskName: 'Bring Asfand From School1'),
  ];

  UnmodifiableListView<Task> get task {
    return UnmodifiableListView(_task);
  }

  int get taskCount {
    return _task.length;
  }

  void addTask(String newTaskTitle) {
    final taskadded = Task(taskName: newTaskTitle);
    _task.add(taskadded);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleTasks();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _task.remove(task);
    notifyListeners();
  }
}
