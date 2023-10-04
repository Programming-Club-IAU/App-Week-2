/*import 'dart:io';

void main(TaskList<String>arg) {
  stdout.write("What is your task name:");
  String title = stdin.readLineSync() ?? "None";
  stdout.write("Task Desccription:");
  String description = stdin.readLineSync() ?? "None";
  stdout.write("Do you want to remove an item?");
  String answer = stdin.readLineSync() ?? "None";
  TaskList Task1 = TaskList(
      id: 1, title: title, description: description, isCompleted: false);

  String a = "y";
  if (answer == a) {
    bool delete = TaskList.remove({description});
  }
  print("Task Added Successfully");
  print(Task1.toString());

  bool inputValid = false;
  int choice = 0;
  while (!inputValid) {
    try {
      print("Enter 1 to display all tasks");
      stdout.write("Enter a number: ");
      choice = int.parse(stdin.readLineSync() ?? "None");
      switch (choice) {
        case 1:
          inputValid = true;
          break;
        default:
          print("invalid input");
          break;
      }
      inputValid = true;
    } catch (e) {
      print("Invalid input");
      continue;
    }
  }

  if (choice == 1) {
    print("All tasks");
    print(Task1.toString());
  }
}

class TaskList {
  final int id;
  String title;
  String description;
  bool isCompleted;

//add tasks
  String get Title => title;
  set Title(String value) {
    if (value.isNotEmpty) {
      title = value;  
    }
  }

  String get Description => description;
  set Description(String value2) {
    if (value2.isNotEmpty) {
      description = value2;
    }
  }

  TaskList(
      {required this.id,
      required this.title,
      required this.description,
      required this.isCompleted});

  @override
  String toString() {
    return "Task ID: $id\n Task Title: $title\n Task Description: $description\n Task Status: ${isCompleted ? "Done" : "Not Done"}";
  }
}
*/

import 'dart:io';
import 'tasks.dart';
import 'taskList.dart';

void main(List<String> args) {
  TaskList taskList = TaskList();
  taskList.addTask('', '');
  taskList.addTask('', '');

  //stdout.write("Task Number:");
  //int id = int.parse(stdin.readLineSync()!);
  stdout.write("Task Title:");
  String? Title = stdin.readLineSync();
  stdout.write("Task Description:");
  String? Description = stdin.readLineSync();
  // stdout.write("Task Status:");
  //bool? isComplete = bool.tryParse(stdin.readLineSync()!);

  bool inputValid = false;
  int choice = 0;
  while (!inputValid) {
    try {
      print("Enter the task's number to display it:");
      stdout.write("Task number: ");
      int? choice = int.parse(stdin.readLineSync() ?? "None");
      switch (choice) {
        case 1:
          inputValid = true;
          break;
        default:
          print("invalid input");
          break;
      }
      inputValid = true;
    } catch (e) {
      print("Invalid input");
      continue;
    }
  }

  if (choice == 1) {
    print("All tasks");
    print(Task.toString());
  }

  @override
  String toString() {
    var id;
    var isCompleted;
    return "Task ID: $id\n Task Title: $Title\n Task Description: $Description\n Task Status: ${isCompleted ? "Done" : "Not Done"}";
  }
}
