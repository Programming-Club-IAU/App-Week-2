class Task {
  final int id;
  String Title;
  String get title {
    return Title;
  }

  set title(String title) {
    Title = title;
  }

  String Description;
  String get description {
    return description;
  }

  set description(String description) {
    Description = description;
  }

  bool isCompleted;
  Task(
      {required this.id,
      required this.Title,
      required this.Description,
      required this.isCompleted});

  //constructors
}
