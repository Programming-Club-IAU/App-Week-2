


class Task {
    
    int ID;
    String Title;
    String Description;
    bool isCompleted;

    Task({required this.ID, required this.Title, required this.Description, required this.isCompleted});

    factory Task.create() {

      return Task(ID: 0, Title: '', Description: '', isCompleted: false);
       
    }
}


  

