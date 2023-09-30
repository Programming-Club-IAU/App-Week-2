import 'dart:io';

void main() {
  stdout.write("What is your task name:");
  String title = stdin.readLineSync() ?? "None";
  stdout.write("Task Desccription:");
  String description = stdin.readLineSync() ?? "None";

  TaskList Person1Task = TaskList(
      id: 1, title: title, description: description, isCompleted: false);

  print("Task Added Successfully");
  print(Person1Task.toString());

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
    print(Person1Task.toString());
  }
}

class TaskList {
  int id;
  String title;
  String description;
  bool isCompleted;

  TaskList(
      {required this.id,
      required this.title,
      required this.description,
      required this.isCompleted});

  @override
  String toString() {
    return "Task ID: $id\n----------------\n Task Title: $title\n Task Description: $description\n Task Status: ${isCompleted ? "true" : "false"}\n--------";
  }
}
