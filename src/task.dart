


class Task {
    
    late int ID;
    late String Title;
    late String Description;
    late bool isCompleted;

    Task(this.ID, this.Title, this.Description, this.isCompleted);

    Task.create() {
        ID = 0;
        Title = '';
        Description = '';
        isCompleted = false;
    }
}


  

