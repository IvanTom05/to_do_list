import 'package:flutter/material.dart';
import 'package:to_do_list/colors.dart';
import 'package:to_do_list/screens/Login.dart';
import 'package:to_do_list/screens/calendar.dart';
import 'package:to_do_list/screens/profile.dart';
import 'package:to_do_list/screens/settings.dart';

import 'package:to_do_list/screens/welcome.dart';
import 'package:to_do_list/todo.dart';
import 'package:to_do_list/todo_item.dart';
import 'package:to_do_list/screens/navbar.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // final todosList = ToDo.todoList();
  int _currentState =0;
  // List<ToDo> _foundToDo = [];
  // final _todoController = TextEditingController();

  // final List<Widget?> _pages = [
  //   // Home(),
  //   LoginPage(),
  //   WelcomePage(),
  //   CalendarApp(),
  //   ProfilePage(),
  //     SettingsPage(),
  //    SharePage(),
  // ];

  get appBar => null;

  // @override
  // void initState() {
  //   _foundToDo = todosList;
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar( ),
      backgroundColor: tdBGColor,

      body: LoginPage()
    );
}
}