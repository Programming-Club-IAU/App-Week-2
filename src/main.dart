import 'dart:io';

void main(List<String> args) {
  List<TaskListApp> tasks = [];
  int taskId = 0;

  while (true) {
    print('What would you like to do?');
    print('1. List all tasks');
    print('2. Add a task');
    print('3. Update a task');
    print('4. Remove a task');
    print('5. Exit');

    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        // List all tasks
        for (TaskListApp task in tasks) {
          print(task);
        }

        break;
      case '2':
        // Add a task
        print('Enter task name:');
        String name = stdin.readLineSync()!;
        print('Enter task description:');
        String description = stdin.readLineSync()!;
        tasks.add(
            TaskListApp(id: ++taskId, name: name, description: description));
        break;
      case '3':
        // Update a task
        try {
          print('Enter task ID:');
          int id = int.parse(stdin.readLineSync()!);
          TaskListApp? taskToUpdate = tasks.firstWhere((task) => task.id == id);
          print('Enter new task name (leave blank to keep current name):');
          String? name = stdin.readLineSync();
          print(
              'Enter new task description (leave blank to keep current description):');
          String? description = stdin.readLineSync();
          print(
              'Would you like to mark this task as completed? (1 for yes, 0 for no)');
          String? completed = stdin.readLineSync();
          if (completed == '1') {
            taskToUpdate.markAsCompleted();
          }
          if (completed == '0') {
            taskToUpdate.markAsIncomplete();
          }
          if (name != null && name.isNotEmpty) {
            taskToUpdate.name = name;
          }

          if (description != null && description.isNotEmpty) {
            taskToUpdate.description = description;
          }
        } catch (e) {
          print('Task not found, please enter a valid task ID.');
        }
        break;
      case '4':
        // Remove a task
        print('Enter task ID:');
        int id = int.parse(stdin.readLineSync()!);
        tasks.removeWhere((task) => task.id == id);
        break;
      case '5':
        // Exit
        return;
      default:
        print('Invalid choice');
        break;
    }
  }
}

class TaskListApp {
  int id;
  String name;
  String description;
  bool isCompleted;

  TaskListApp(
      {required this.id,
      required this.name,
      required this.description,
      this.isCompleted = false});

  void markAsCompleted() {
    isCompleted = true;
  }

  void markAsIncomplete() {
    isCompleted = false;
  }

  @override
  String toString() {
    return 'Task ID: $id\nTask: $name\nDescription: $description\nCompleted: $isCompleted\n';
  }
}
