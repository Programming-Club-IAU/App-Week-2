import 'dart:io';

class Task {
  int taskID;
  String taskName;
  String description;
  bool isCompleted;
  
  Task(this.taskID, this.taskName, this.description, this.isCompleted);
}

 class Funcions {

List<Task> tasks = [];

int taskID = 1;
//addTask
 void addTask(String taskName, String description) {
tasks.add(Task(taskID,taskName,description, false));
taskID++;
}

//removeTask
void removeTask(int taskID) {
 int index = tasks.indexWhere((task) => task.taskID == taskID);
 if (index != -1){
  print("Task $taskID Removed");
  tasks.removeAt(index);
 }
else{
  print("Task $taskID not found");
}}

//Complete Task
void CompleteTask(int taskID) {
  var task = tasks.firstWhere((task) => task.taskID == taskID);
   if (task != null ) {
    task.isCompleted = true;
    print("Task $taskID is Completed");
   } else {
    print("Task ID $taskID Not found");     
}}

//displayTask
void displayTask() {
for (var i = 0; i < tasks.length; i++) {
  Task task = tasks[i];  
  print(
    "${task.taskID}. [${task.isCompleted ? 'X' : ' '}] ${task.taskName}: ${task.description}");
}}}

void main() {

Funcions funcions = Funcions();

while(true){

 print("Choose a function: ");
 print("1) Add Task ");
 print("2) Remove Task ");
 print("3) Complete Task ");
 print("4) Display Task");
 print("5) Exit");
print("Enter yor Choice: ");



   int ? choice = int.tryParse(stdin.readLineSync() ?? "you did't pick a choice ") ;
  if (choice != "") {

switch (choice) {

//Add task
  case 1:   
  print('Enter task Name: ');
        var taskName = stdin.readLineSync() ?? "" ;
  print('Enter task description: ');
        var description = stdin.readLineSync() ?? "";
        print('Task added.');
        funcions.addTask(taskName, description);
  break;

//Remove Task
  case 2:
  print("Removing Task");
  print("Enter Task ID: ");
  int? taskID = int.tryParse(stdin.readLineSync() ?? "");
  funcions.CompleteTask(taskID!);
  break;

//Complete Task
  case 3:
  print("Great job");
  print("Enter Task ID that you completed: ");
  int? taskID = int.tryParse(stdin.readLineSync() ?? "");
  funcions.CompleteTask(taskID!);
  break;

//Display Task
  case 4:
   funcions.displayTask();
  break;

//Exit
  case 5:
     print("you choose exit");
     print("Thank you");
     return;
     
     default:
     print("invalid Number");
     break;
    
   }//switch
   }//if
  }//while
}//main

