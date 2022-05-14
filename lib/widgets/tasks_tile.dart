import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function(bool?) checkBoxCallback;
  final VoidCallback deleteCallback;

  TasksTile(
      {this.isChecked = false,
      this.taskTitle = "Task",
      required this.checkBoxCallback,
      required this.deleteCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(value: isChecked, onChanged: checkBoxCallback),
      onLongPress: deleteCallback,
    );
  }
}
