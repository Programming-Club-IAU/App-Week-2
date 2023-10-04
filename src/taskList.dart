import 'tasks.dart';

class TaskList {
  List<Task> tasks = [];

  bool addTask(String title, String description) {
    tasks.add(Task(
        id: 1, Title: title, Description: description, isCompleted: false));
    tasks.add(
        Task(id: 2, Title: title, Description: description, isCompleted: true));
    return true;
  }

  void add(Task task) {}
}
