import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/models/tasks_data.dart';
import 'package:todoapp/models/tasks.dart';

class AddTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    late String newtask;
    return Flexible(
      child: Container(
        color: Color(0xff757575),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), topLeft: Radius.circular(20)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  "Add Task",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 7.0),
                TextField(
                  autofocus: true,
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                  ),
                  onChanged: (newValue) {
                    newtask = newValue;
                  },
                ),
                SizedBox(height: 18.0),
                TextButton(
                  onPressed: () {
                    Provider.of<TaskData>(context, listen: false)
                        .addTask(newtask);
                    Navigator.pop(context);
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.blueAccent)),
                  child: Text(
                    "Add",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
