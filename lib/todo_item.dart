import 'package:flutter/material.dart';

class ToDoItem extends StatelessWidget {
  final todo;
  final onToDoChanged;
  final onDeleteItem;

  const ToDoItem({
    Key? key,
    required this.todo,
    required this.onToDoChanged,
    required this.onDeleteItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            onTap: () {
              onToDoChanged(todo);
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            tileColor: Color.fromARGB(255, 84, 206, 206),
            leading: Icon(
              todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            title: Column(children: [
              Text(
                todo.todoText!,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  decoration: todo.isDone ? TextDecoration.lineThrough : null,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  
                  decoration: InputDecoration(
                    hintText: 'comment...',
                  ),
                  onChanged: (value) {},
                ),
              ),
            ]),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  color: Color.fromARGB(255, 255, 255, 255),
                  iconSize: 18,
                  icon: Icon(Icons.calendar_month),
                  onPressed: () {
                    // Show date picker dialog
                    showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1900),
                      lastDate: DateTime(2100),
                    );
                  },
                ),
                IconButton(
                  color: Color.fromARGB(255, 207, 30, 30),
                  iconSize: 18,
                  icon: Icon(Icons.delete),
                  onPressed: () {
                    onDeleteItem(todo.id);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
