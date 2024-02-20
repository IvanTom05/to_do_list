
import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // Import the intl package for date formatting

class ToDoItem extends StatefulWidget {
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
  _ToDoItemState createState() => _ToDoItemState();
}

class _ToDoItemState extends State<ToDoItem> {
  late DateTime _selectedDate; // State variable to store the selected date
  TextEditingController _commentController = TextEditingController(); // Controller for comment text field

  @override
  void initState() {
    super.initState();
    _selectedDate = DateTime.now(); // Initialize with the current date
  }

  @override
  Widget build(BuildContext context) {
    // Create a DateFormat instance to format the selected date
    final DateFormat formatter = DateFormat('yyyy-MM-dd');

    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            onTap: () {
              widget.onToDoChanged(widget.todo);
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            tileColor: Color.fromARGB(255, 84, 206, 206),
            leading: Icon(
              widget.todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            title: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.todo.todoText!,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        decoration: widget.todo.isDone ? TextDecoration.lineThrough : null,
                      ),
                    ),
                    PopupMenuButton<String>(
                      icon: Icon(Icons.more_vert),
                      itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                        // const PopupMenuItem<String>(
                        //   value: 'share',
                        //   child: ListTile(
                        //   //   leading: Icon(Icons.share, color: Colors.blue), // Blue share icon
                        //   //   title: Text('Share'),
                        //    ),
                        // ),
                        const PopupMenuItem<String>(
                          value: 'delete',
                          child: ListTile(
                            leading: Icon(Icons.delete, color: Colors.red), // Red delete icon
                            title: Text('Delete'),
                          ),
                        ),
                        const PopupMenuItem<String>(
                          value: 'comment',
                          child: ListTile(
                            leading: Icon(Icons.comment),
                            title: Text('Add Comment'),
                          ),
                        ),
                      ],
                      onSelected: (String value) {
                        if (value == 'share') {
                          // Handle Share action
                        } else if (value == 'delete') {
                          // Handle Delete action
                          widget.onDeleteItem(widget.todo.id);
                        } else if (value == 'comment') {
                          _showCommentDialog(); // Show comment dialog
                        }
                      },
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      color: Color.fromARGB(255, 255, 255, 255),
                      iconSize: 18,
                      icon: Icon(Icons.calendar_today),
                      onPressed: () async {
                        // Show date picker dialog
                        final selectedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1900),
                          lastDate: DateTime(2100),
                        );

                        if (selectedDate != null) {
                          setState(() {
                            _selectedDate = selectedDate;
                          });
                        }
                      },
                    ),
                    Text(' ${formatter.format(_selectedDate)}'), // Display formatted date
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Method to show comment dialog
  void _showCommentDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Add Comment"),
          content: TextField(
            controller: _commentController,
            decoration: InputDecoration(hintText: "Enter your comment"),
          ),
          actions: [
            TextButton(
              child: Text("Cancel"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text("Save"),
              onPressed: () {
                // You can save the comment here or perform any action needed
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
