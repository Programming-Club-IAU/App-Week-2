//import 'tasks.dart';
//import 'main.dart';
import 'dart:io';

void main(List<String> args) {
  Task _tasks = Task(id: 0, Title: "", Description: "", isCompleted: false);
  _tasks.addTask('Title', 'Description');
}

class Task {
  int id;
  String Title;

  String get title {
    return Title;
  }

  set title(String title) {
    Title = title;
  }

  String Description;
  String get description {
    return description;
  }

  set description(String description) {
    Description = description;
  }

  bool isCompleted;
  Task(
      {required this.id,
      required this.Title,
      required this.Description,
      required this.isCompleted});

  List<Task> _tasks = [];
  List<Task> get tasks => _tasks;
  bool addTask(String Title, String Description) {
    if (Title.isEmpty) {
      return false;
    }
    if (Description.isEmpty) ;
    return false;
  }

  void AddTask(Task task) {
    _tasks.add(task);
    void addTitle() {
      //add title
      do {
        stdout.write("Task Title:");
        String? title = stdin.readLineSync();
      } while (task.Title == " ");
      addTitle();
    }

    //add description
    void addDescription() {
      do {
        stdout.write("Task Description:");
        String? Description = stdin.readLineSync();
      } while (task.Description == " ");
      addDescription();
    }

//remove task
    void remove() {
      try {
        stdout.write("If you want to remove a task enter its number:");
        int TaskId = int.parse(stdin.readLineSync()!);
        //_tasks.remove(_tasks[TaskId]);
        _tasks.remove((task) => task.id == TaskId);
        print("Successfuly removed");
      } catch (e) {
        print("Invalid ID");
        remove();
      }
    }

    /*void displayList() {
      for (int i = 0; i < _tasks.length; i++) {
        Task task = _tasks[i];
        _tasks.add(task);
        print(_tasks);
        displayList();
      }
    }*/

    @override
    String toString() {
      return "Task number: $id\n Task Title: $Title\n Task description: $Description\n Task status: $isCompleted";
    }
  }
}
