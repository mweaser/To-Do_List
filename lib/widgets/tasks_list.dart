import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/tasks_tile.dart';
import '../models/task.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TasksTile(
              taskTitle: taskData.taskList[index].name,
              isChecked: taskData.taskList[index].isDone,
              checkBoxCallback: (checkBoxState) {
                taskData.updateTask(taskData.taskList[index]);
              },
              deleteCallback: () {
                taskData.removeTask(taskData.taskList[index]);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
