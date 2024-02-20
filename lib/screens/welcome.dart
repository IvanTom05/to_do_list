import 'package:flutter/material.dart';
import 'package:to_do_list/colors.dart';
import 'package:to_do_list/constants/customAppBar.dart';
import 'package:to_do_list/screens/navbar.dart';
import 'package:to_do_list/screens/profile.dart';
import 'package:to_do_list/todo.dart';
import 'package:to_do_list/todo_item.dart';


class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> with TickerProviderStateMixin {
  final todosList = ToDo.todoList();
  int _currentState =0;
  List<ToDo> _foundToDo = [];
  final _todoController = TextEditingController();

  bool isSearch = true;

  @override
  void initState() {
    _foundToDo = todosList;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var dateTime;
    return   Scaffold( 
      appBar: AppBar( backgroundColor: Colors.white,
    elevation: 10,
      title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
       
        const Text(
          "Plan",
          style: TextStyle(
            
            fontStyle: FontStyle.italic,
           
            color: Color.fromARGB(255, 0, 0, 0),
            fontWeight: FontWeight.bold,
            fontSize:40,
            
          ),
        
        ),
        GestureDetector(
          onDoubleTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),
                );
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: GestureDetector(onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProfilePage()));
                },
              child: Image.asset(
                "assets/images/logo.jpg",
                height: 50,
                width: 50,
              ),
            ),
          ),
        ),
      ],
    )),
      drawer: NavBar(),
      
      body: 
      NotificationListener<ScrollUpdateNotification>(
        onNotification: (scrollNotification) {
          
          if (scrollNotification.scrollDelta! > 0) {
            setState(() {
              isSearch = false;
            });
          } else {
            setState(() {
              isSearch = true;
            });
          }
          return true;
        },
        child: Stack( 
          children: [
            Container(
              
              padding: const EdgeInsets.symmetric
              (
                horizontal: 0,
                vertical: 0,
              ),
              child: Column(
                children: [
                  isSearch?                
                        searchBox():Text("")!,
                  Expanded(
                    child: ListView(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            top: 50,
                            bottom: 20,
                          ),
                          child: const Text(
                            'SCHEDULE',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        for (ToDo todoo in _foundToDo.reversed)
                          ToDoItem(
                            todo: todoo,
                            onToDoChanged: _handleToDoChange,
                            onDeleteItem: _deleteToDoItem,
                          ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(
                      bottom: 20,
                      right: 20,
                      left: 20,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 0.0),
                          blurRadius: 10.0,
                          spreadRadius: 0.0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10000000),
                    ),
                    child: TextField(
                      controller: _todoController,
                      decoration: InputDecoration(
                          hintText: 'ADD NEW SCHEDULE', border: InputBorder.none ),
                       
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    bottom: 20,
                    right: 20,
                  ),
                  child: ElevatedButton(
                    child: Text(
                      '+',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                    onPressed: () {
                      _addToDoItem(_todoController.text);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: tdBlack,
                      minimumSize: Size(60, 60),
                      elevation: 10,
                    ),
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }


void _handleToDoChange(ToDo todo) {
    setState(() {
      todo.isDone = !todo.isDone;
    });
  }

  void _deleteToDoItem(String id) {
    setState(() {
      todosList.removeWhere((item) => item.id == id);
    });
  }

  void _addToDoItem(String toDo) {
    setState(() {
      todosList.add(ToDo(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        todoText: toDo,
      ));
    });
    _todoController.clear();
  }

  void _runFilter(String enteredKeyword) {
    List<ToDo> results = [];
    if (enteredKeyword.isEmpty) {
      results = todosList;
    } else {
      results = todosList
          .where((item) => item.todoText!
              .toLowerCase()
              .contains(enteredKeyword.toLowerCase()))
          .toList();
    }

    setState(() {
      _foundToDo = results;
    });
  }

  Widget searchBox() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: const BoxDecoration(
        color:  Colors.white,
        // borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        onChanged: (value) => _runFilter(value),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(0),
          prefixIcon: Icon(
            Icons.search,
            color: Colors.black,
            size: 20,
          ),
          prefixIconConstraints: BoxConstraints(
            maxHeight: 20,
            minWidth: 25,
          ),
          border: InputBorder.none,
          hintText: 'Search for plan',
          hintStyle: TextStyle(color:Colors.black),
        ),
      ),
    );
  }

  container() {}
}
