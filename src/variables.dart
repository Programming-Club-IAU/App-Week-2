void main() {
  int age = 19;
  String name = 'Zahra';
  bool isStudent = true;
  List<String> hobbies = ['coding', 'sport', 'drawing', 'writing'];

  //print variables
  print('Age: $age');
  print('Name: $name');
  print('IsStudent: $isStudent');
  print('Hobbies: $hobbies');
}

void main2() {
  try {
    int result = 10 ~/ 0; //triggering error
    print("Result: $result");
  } catch (e) {
    print('An error ocurred: $e');
  }
}
