import 'dart:io';

class Task {
  String descriptask;
  bool isCompleted;

  Task(this.descriptask, this.isCompleted);
}

class Todolist {
  final List<Task> listTask = [];

  void displayinfo() {
    print("Task List: ");
    for (var i = 0; i < listTask.length; i++) {
      final task = listTask[i];
      final iscompleted = task.isCompleted ? '[//]' : '[?]';
      print("$i $iscompleted ${task.descriptask}");
    }
  }

  void addTask(var description) {
    final task = Task(description, false);
    listTask.add(task);
  }

  void completask(var taskindex) {
    if (taskindex >= 0 && taskindex < listTask.length) {
      listTask[taskindex].isCompleted = true;
    }
  }

  void ubdateTASK(var tasknumber, var newtask) {
    if (tasknumber != null && tasknumber >= 0 && tasknumber < listTask.length) {
      listTask[tasknumber].descriptask = newtask;
    }
  }

  void deletetask(var deletindex) {
    if (deletindex != null && deletindex >= 0 && deletindex < listTask.length) {
      listTask.removeAt(deletindex);
    }
  }
}

void main() {
  final ToDolist = Todolist();
  while (true) {
    ToDolist.displayinfo();
    print("Select One Of These Options: ");
    print("1: ADD TASK");
    print("2: DELET TASK");
    print("3: UPDATE TASK");
    print("4: COMPLEAT A TASK");
    print("5: QUIT");

    stdout.write("Enter Your Choice: ");
    final choice = stdin.readLineSync() ?? "Error!";

    if (choice == "1") {
      stdout.write("Enter Task To Add: ");
      final taskadd = stdin.readLineSync();
      ToDolist.addTask(taskadd ?? "0");
    } else if (choice == "2") {
      stdout.write("Select The Task Number To Delete: ");
      final taskdelete =
          int.tryParse(stdin.readLineSync() ?? "Error! {Delete task}");
      ToDolist.deletetask(taskdelete);
    } else if (choice == "3") {
      stdout.write("Enter The Task Number To Update: ");
      final taskupdate =
          int.tryParse(stdin.readLineSync() ?? "Error! {Update task}");
      stdout.write("Enter The New Task: ");
      final newtask = stdin.readLineSync();
      ToDolist.ubdateTASK(taskupdate, newtask);
    } else if (choice == "4") {
      stdout.write("Enter The Number od Task  To Complete: ");
      final completecheck = int.parse(stdin.readLineSync() ?? "0");
      ToDolist.completask(completecheck);
    } else if (choice == "5") {
      print("Goodbay!");
      exit(0);
    } else {
      print("Invalid choice. Please select a valid option.");
    }
  }
}
