import 'dart:io';

class Task {
  String title;

  Task(this.title);
}

class TaskListApp {
  List<Task> tasks = [];

  //add task
  void addTask(String title) {
    tasks.add(Task(title));
    print('Task is added');
  }

  //view tasks
  void viewTasks() {
    print('\nTasks: ');
    for (int i = 0; i < tasks.length; i++) {
      print('${tasks[i].title}');
    }
  }

  //update
  void updateTask(int index, String newTitle) {
    if (index >= 0 && index < tasks.length) {
      tasks[index].title = newTitle;
      print('Task is updated');
    } else {
      print('Invalid index');
    }
  }

  //delete 
  void deleteTask(int index) {
    if (index >= 0 && index < tasks.length) {
      tasks.removeAt(index);
      print('Task is deleted');
    } else {
      print('Invalid task index.');
    }
  }

}

void main(List<String> args) {
  TaskListApp taskList = TaskListApp();
  while (true) {
    print('\nTask List App Menu:');
    print('1. Add Task');
    print('2. View Tasks');
    print('3. Update Task');
    print('4. Delete Task');
    print('5. Exit');
    stdout.write('Enter your choice (1-6): ');

    String choice = stdin.readLineSync() ?? '';
    print('');

    switch (choice) {
      //adding
      case '1':
        stdout.write('Add a task: ');
        String title = stdin.readLineSync() ?? '';
        taskList.addTask(title);
        break;

      //view
      case '2':
        taskList.viewTasks();
        break;

      //updating
      case '3':
        taskList.viewTasks();
        stdout.write('what is the number of the task to update? ');
        int updateNum=int.tryParse(stdin.readLineSync() ?? '') ?? -1;
        stdout.write('what is the new title? ');
        String newTitle = stdin.readLineSync() ?? '';
        taskList.updateTask(updateNum - 1, newTitle);
        break;

      //delete
      case '4':
        taskList.viewTasks();
        stdout.write('what is the number of the task to delete? ');
        int indexToDelete = int.tryParse(stdin.readLineSync() ?? '') ?? -1;
        taskList.deleteTask(indexToDelete - 1);
        break;

      //exit
      case '5':
        print('Exit');
        exit(0);

      default:
        print('Invalid choice. Please try again');
    }
  }
}
