import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddTask extends StatelessWidget {
  final Function addTaskCallback;

  AddTask(this.addTaskCallback);

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
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.blueAccent)),
                  onPressed: () {
                    addTaskCallback(newtask);
                  },
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
