import 'task.dart';
import 'dart:io';

class TaskList {
  List<Task> _tasks = [];
  TaskList(this._tasks);
  Task operator [](int taskID) {
    return _tasks[taskID];
  }

  int get length {
    return _tasks.length;
  }
  //List<Task> get tasks => _tasks;

  void addTask(String title, String description) {
    _tasks.add(Task(id: _tasks.length, title: title, description: description));
  }

  @override
  String toString() {
    String show = "";
    for (var task in _tasks) {
      show += "`````````````````````````````\n";
      show += "Task ID:${task.id}\n";
      show += "Task Title:${task.title}\n";
      show += "Task Description:${task.description}\n";
      show += "Task Status:${task.isCompleted ? "Done" : "Not Done"}\n";
      show += "`````````````````````````````\n";
    }
    return show;
  }

  void remove() {
    try {
      stdout.write("If you want to remove a task enter its number:");
      int taskId = int.parse(stdin.readLineSync()!);
      _tasks.removeWhere((tasks) => tasks.id == taskId);
      print("Successfuly removed");
    } catch (e) {
      print("Invalid ID");
      return;
    }
  }
}
