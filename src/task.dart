class Task {
  int id;
  String title;
  String description;
  bool isCompleted;

  void set Id(int id) {
    this.id = id;
  }

  int get Id {
    return id;
  }

  void set Title(String title) {
    this.title = title;
  }

  String get Title {
    return title;
  }

  void set Description(String description) {
    this.description = description;
  }

  String get Description {
    return description;
  }

  Task(
      {this.id = 1,
      required this.title,
      required this.description,
      this.isCompleted = false});
}
