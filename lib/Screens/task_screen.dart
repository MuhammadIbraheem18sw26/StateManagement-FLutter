import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoapp/widgets/task_list.dart';
import 'add_task_screen.dart';
import 'package:todoapp/models/tasks.dart';

class TaskScreen extends StatefulWidget {
  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  List<Task> task = [
    Task(taskName: 'Buy Milk'),
    Task(
      taskName: 'Bring Asfand From School',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueAccent,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) => SingleChildScrollView(
                        child: Container(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: AddTask((value) {
                        setState(() {
                          task.add(Task(taskName: value));
                        });
                        Navigator.pop(context);
                      }),
                    )));
          },
          backgroundColor: Colors.blueAccent,
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(top: 60.0, left: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.list,
                      size: 50,
                      color: Colors.blueAccent,
                    ),
                    radius: 40,
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    "Todo Tasks",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 50.0,
                    ),
                  ),
                  Text(
                    "${task.length} tasks left",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                  SizedBox(height: 10.0),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
                child: TaskList(task),
              ),
            )
          ],
        ),
      ),
    );
  }
}
