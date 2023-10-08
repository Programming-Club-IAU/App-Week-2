class Task {
  int id;
  String title;
  String description;
  bool isCompleted;

  void set Title(String title) {
    this.title = title;
  }

  String get Title {
    return title;
  }

  void set _description(String Description) {
    this.description = Description;
  }

  String get _description {
    return description;
  }

  Task(
      {this.id = 0,
      required this.title,
      required this.description,
      this.isCompleted = false});
}
