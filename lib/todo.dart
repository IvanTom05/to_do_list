class ToDo {
  String? id;
  String? todoText;
  String? note;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.note,
    this.isDone = false,
  });

  static List<ToDo> todoList() {
    return [
      ToDo(id: '01', todoText: 'Morning Excercise',note:"" ),
      ToDo(id: '02', todoText: 'Buy Groceries', note:"This is a test"),
      ToDo(id: '03', todoText: 'Check Emails', note:""),
      ToDo(id: '04', todoText: 'Work Out',note:"" ),
      ToDo(id: '05', todoText: 'Dinner ', note:""),
    ];
  }
}