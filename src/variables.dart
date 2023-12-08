//import 'task.dart';
import 'dart:io';

void main() {
  //declare and initialize variables

  int number = 50;
  String name = "Talyia";
  bool isSmart = true;
  List<String> colors = ["Red", "Blue", "Pink", "Purple"];
  List<Map<int, String>> id_name = [
    {1: "Talyia"},
    {2: "Ryam"}
  ];

  print('Number: $number');
  print('Name: $name');
  print('Smart?: $isSmart');
  print('Color: $colors');
  print('Id with name: $id_name');

//Error Handling

  try {
    int result = 10 ~/ 0;
    print('Result: $result');
  } catch (e) {
    print("An error occurred: $e");
  }

//take input from user
  stdout.write('Enter your name: ');
  String? name2 = stdin.readLineSync();
  print('Hello $name2!');
//take input from user as int
  stdout.write('Enter your age: ');
  int? age = int.tryParse(stdin.readLineSync()!) ?? 0;
  print('Age: $age');
}
