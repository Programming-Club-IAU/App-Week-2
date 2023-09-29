/* void main() {
  int age = 19;
  String name = 'Zahra';
  bool isStudent = true;
  List<String> hobbies = ['coding', 'sport', 'drawing', 'writing', 'reading', 'cooking'];

  //print variables
  print('Age: $age');
  print('Name: $name');
  print('IsStudent: $isStudent');
  print('Hobbies: $hobbies');
}*/

import 'task.dart';

void main() {
  Task task1 = Task(1, 'Buy groceries', 'Buy milk, eggs, and bread', false);
  Task task2 = Task(2, 'Read a book', 'Read "The Catcher in the Rye"', true);

  //print task properties
  print('Task 1: ${task1.title}, Completed: ${task1.isCompleted}');
  print('task 2: ${task2.title}, Completed: ${task2.isCompleted}');
}

void Main() {
  try {
    int result = 10 ~/ 0; //triggering error
    print("Result: $result");
  } catch (e) {
    print('An error ocurred: $e');
  }
}
