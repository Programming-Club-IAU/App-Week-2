import 'dart:io';
import 'task.dart';
import 'taskList.dart';

//you can make it global so you can access it from anywhere
List<Task> _tasks = [];
TaskList tasks = TaskList([]);

void main(List<String> arg) {
//Listing Choices
  void showTasks() {
    print("This is your Task List app");
    print("**************************");
    print("What Do You Need?");
    print("1.Add Task");
    print("2.List Task");
    print("3.Update A Task");
    print("4.Delete A Task");
    print("5.Exit");
  }

//Making Choice
  int choice = 0;
  while (choice != 5) {
    showTasks();
    bool validChoice = false;
    while (!validChoice) {
      try {
        stdout.write("Your Choice?");
        choice = int.parse(stdin.readLineSync()!);
        validChoice = true;
      } catch (e) {
        print("Enter A Number:");
      }
    }
//Operating Choice
    switch (choice) {
      case 1:
        addTask();
        break;
      case 2:
        printTasks();
        break;
      case 3:
        choose();
        break;
      case 4:
        tasks.remove();
        break;
      default:
        print("Invalid Choice");
        break;
    }
  }
}

//Choose Between Title && Description Update

void choose() {
  int choice = 0;
  try {
    stdout.write("To Change Title:1 / To Change Description:2 \n Your Choice?");
    choice = int.parse(stdin.readLineSync()!);
    //validChoice = true;
  } catch (e) {
    print("Enter A Number:");
  }
  switch (choice) {
    case 1:
      updateTitle(_tasks);
      break;
    case 2:
      updateDescription(_tasks);
      break;
    default:
      print("Invalid Choice");
      break;
  }
}

//Adding A Task
void addTask() {
  stdout.write("Choose A Title For Your Task:");
  String? title = stdin.readLineSync() ?? "";
  if (title == "") {
    print("You Should Enter A Title:");
    return;
  }
  stdout.write("Choose A Description For Your Task:");
  String? description = stdin.readLineSync() ?? "";
  if (description == "") {
    print("You Should Enter A Description");
    return;
  }
  tasks.addTask(title, description);
}

//Viewing Tasks
void printTasks() {
  print(tasks.toString());
}

//For Title Update
void updateTitle(_tasks) {
  stdout.write("What Task To Update?");
  int taskID = int.parse(stdin.readLineSync()!);
  if (taskID <= tasks.length && taskID > 0) {
    stdout.write("Enter Your New Title:");
    String? Title = stdin.readLineSync();
    tasks[taskID].title = Title!;
    print("Updated Successfuly");
    print("New Title:" '${tasks[taskID].title}');
    return;
  }
}

//For Description Update
void updateDescription(_tasks) {
  stdout.write("What Task To Update?");
  int taskID = int.parse(stdin.readLineSync()!);
  if (taskID <= tasks.length && taskID > 0) {
    stdout.write("Enter Your New  Description:");
    String? Description = stdin.readLineSync();
    tasks[taskID].description = Description!;
    print("Updated Successfuly");
    print("New Description:" '${tasks[taskID].description}');
    return;
  }
}
