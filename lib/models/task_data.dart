import 'package:flutter/material.dart';
import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> taskList = [
    Task(name: "Buy milk"),
    Task(name: "Buy eggs"),
    Task(name: "Buy bread"),
  ];

  int get taskCount {
    return taskList.length;
  }

  void addTask(Task task) {
    taskList.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void removeTask(Task task) {
    taskList.remove(task);
    notifyListeners();
  }
}
