import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';
import 'package:todoey_flutter/models/task.dart';

class AddTaskScreen extends StatelessWidget {
  AddTaskScreen();

  @override
  Widget build(BuildContext context) {
    String changedText = "";

    return Container(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 50.0,
            ),
            Text(
              "Add Task",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.lightBlue,
                  fontWeight: FontWeight.bold),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText) {
                changedText = newText;
              },
            ),
            TextButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.lightBlue),
              ),
              child: Text(
                "Add",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                print(changedText);
                Provider.of<TaskData>(context, listen: false)
                    .addTask(Task(name: changedText, isDone: false));
                Navigator.pop(context);
              },
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
      ),
    );
  }
}
