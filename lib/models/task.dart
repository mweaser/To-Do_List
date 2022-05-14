class Task {
  final String name;
  bool isDone;

  Task({this.name = "Task", this.isDone = false});

  void toggleDone() {
    isDone = !isDone;
  }
}
