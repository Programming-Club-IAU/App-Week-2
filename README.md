# Week 2: Dart

## Overview

This week, you'll learn the basics of Dart, a programming language developed by Google. Dart is used to build mobile, desktop, and web applications using the Flutter framework. You'll learn how to declare and initialize variables, handle errors, define classes, and use constructors. You'll also learn about Dart's null safety feature and build a simple task list app.

## Learning Objectives

By the end of this week, you should be able to:

- Install Dart on your local machine
- Declare and initialize variables
- Handle errors using try-catch blocks
- Define classes and use constructors
- Understand Dart's null safety feature
- Build a simple task list app

## Resources

- [Dart Documentation](https://dart.dev/guides)
- [DartPad](https://dartpad.dev/)
- [What is Dart?](https://www.youtube.com/watch?v=NrO0CJCbYLA)
- [Dart Basics | Long Video](https://www.youtube.com/watch?v=Fqcsow_7go4)
- [Dart Basics | Articles](https://www.geeksforgeeks.org/dart-tutorial/)

## Setup And Tutorial

### 1. Setup

- **Install Dart:**
  - Follow the official Flutter/Dart installation guide to download and install Dart on your local machine: <https://docs.flutter.dev/get-started/install>

### 2. Variables

- **Create a Dart Program:**
  - Create a new Dart file (e.g., `variables.dart`) using a text editor or code editor of your choice.

- **Declare and Initialize Variables:**
  - In `variables.dart`, declare and initialize various types of variables (integers, strings, booleans, lists, etc.). For example:

       ```dart
       void main() {
         int age = 30;
         String name = 'John';
         bool isStudent = true;
         List<String> fruits = ['apple', 'banana', 'cherry'];

         // Print variables
         print('Age: $age');
         print('Name: $name');
         print('Is Student: $isStudent');
         print('Fruits: $fruits');
       }
       ```

- **Run the Program:**
  - Open your terminal or command prompt.
  - Navigate to the folder where `variables.dart` is located.
  - Run the Dart program using the `dart` command:

       ```bash
       dart variables.dart
       ```

### 3. Error Handling

- **Modify the Dart Program:**
  - Update `variables.dart` to include error handling using try-catch blocks. For example:

       ```dart
       void main() {
         try {
           int result = 10 ~/ 0; // Division by zero to trigger an error
           print('Result: $result');
         } catch (e) {
           print('An error occurred: $e');
         }
       }
       ```

  - **Run the Modified Program:**
    - Run the modified Dart program as described in step 2.

### 4. Classes

- **Define the Task Class:**
  - Create a new Dart file (e.g., `task.dart`) to define the `Task` class:

       ```dart
       class Task {
         int id;
         String title;
         String description;
         bool isCompleted;

         Task(this.id, this.title, this.description, this.isCompleted);
       }
       ```

- **Create Task Instances:**
  - In `variables.dart`, import the `task.dart` file and create instances of the `Task` class:

       ```dart
       import 'task.dart';

       void main() {
         Task task1 = Task(1, 'Buy groceries', 'Buy milk, eggs, and bread', false);
         Task task2 = Task(2, 'Read a book', 'Read "The Catcher in the Rye"', true);

         // Print task properties
         print('Task 1: ${task1.title}, Completed: ${task1.isCompleted}');
         print('Task 2: ${task2.title}, Completed: ${task2.isCompleted}');
       }
       ```

### 5. Constructors

- **Add a Constructor to Task Class:**
  - In `task.dart`, add a constructor to the `Task` class to simplify task object creation:

       ```dart
       class Task {
         int id;
         String title;
         String description;
         bool isCompleted;

         Task({
          required this.id,
          required this.title,
          required this.description,
          required this.isCompleted
          });
       }
       ```

  - Or you can assign default values to the constructor parameters:

       ```dart
        class Task {
          int id;
          String title;
          String description;
          bool isCompleted;

          Task({
            this.id = 0,
            this.title = "",
            this.description = "",
            this.isCompleted = false,
          });
        }
        ```

- **Create Task Objects Using Constructors:**
  - In `variables.dart`, use the new constructor to create task objects:

       ```dart
       import 'task.dart';

       void main() {
         Task task1 = Task(
          id: 1,
          title: 'Buy groceries',
          description: 'Buy milk, eggs, and bread',
          isCompleted: false,
         );
         Task task2 = Task(
          id: 2,
          title: 'Read a book',
          description: 'Read "The Catcher in the Rye"',
          isCompleted: true,
         );

         // Create a task using the constructor with default values
         Task task3 = Task()

         // Print task properties
         print('Task 1: ${task1.title}, Completed: ${task1.isCompleted}');
         print('Task 2: ${task2.title}, Completed: ${task2.isCompleted}');
         print('Task 3 (Default): ${task3.title}, Completed: ${task3.isCompleted}');
       }
       ```

### 6. Understanding Null Safety

- **Enable Null Safety:**
  - Dart enables null safety by default. Ensure you're using Dart version 2.12 or higher.
  - Annotate variables and function parameters with `?` to indicate nullable types when needed. Dart's null safety will help catch null-related errors.

### 7. Understanding Dart IO

- **Read and write to console:**
  - Use the `stdin` and `stdout` objects to read and write to the console:

       ```dart
       import 'dart:io';

       void main() {
         stdout.write('Enter your name: ');
         String? name = stdin.readLineSync();
         print('Hello, $name!');
       }
       ```

- **Converting Console Input to other datatypes:**
  - Use the `int.parse()` and `double.parse()` methods to convert console input to integers and doubles, respectively:

       ```dart
       import 'dart:io';

       void main() {
         stdout.write('Enter your age: ');
         int? age = int.parse(stdin.readLineSync()!);
         print('Age: $age');
       }
       ```

- **Error Handling Console Input:**
  - Use the `tryParse()` method to handle errors when converting console input to integers and doubles:

       ```dart
       import 'dart:io';

       void main() {
         stdout.write('Enter your age: ');
         int? age = int.tryParse(stdin.readLineSync()) ?? 0;
         print('Age: $age');
       }
       ```

## Task: Create a Task List App

Your job is to create a simple task list app using Dart. The app should allow users to add, edit, and delete tasks. The app should also allow users to mark tasks as completed. The app should be able to handle errors and display error messages to the user.

### Requirements

- The app should be able to add, edit, and delete tasks.
- The app should be able to mark tasks as completed.
- The app should be able to handle errors and display error messages to the user.

### Optional Requirements

- The menu should be very user-friendly and easy to use.
