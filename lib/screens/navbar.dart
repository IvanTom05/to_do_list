import 'package:flutter/material.dart';
import 'package:to_do_list/screens/calendar.dart';
import 'package:to_do_list/screens/profile.dart';
import 'package:to_do_list/screens/settings.dart';
import 'package:to_do_list/screens/share.dart';
import 'package:to_do_list/screens/welcome.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  // final todosList = ToDo.todoList();
  int _currentState = 0;
  // List<ToDo> _foundToDo = [];
  // final _todoController = TextEditingController();

  final List<Widget?> _pages = [
    // Home(),

    WelcomePage(),
    CalendarApp(),
    ProfilePage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('IVAN TOMEFA'),
            accountEmail: Text('ivanadiku20@gmail.com'),
            onDetailsPressed: () {},
            currentAccountPicture: CircleAvatar(
                child: ClipOval(
              child: Image.asset(
                "assets/images/boby2.jpg",
                height: 80,
                width: 80,
              ),
            )),
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                image: DecorationImage(
                    image: AssetImage("assets/images/boby1.jpg"),
                    fit: BoxFit.cover)),
          ),
          ListTile(
            leading: GestureDetector(  onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WelcomePage()),
                );
              },child: Icon(Icons.home)),
            title: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WelcomePage()),
                );
              },
              child: Text('HOME'),
            ),
          ),
          ListTile(
            leading: GestureDetector(  onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CalendarApp()),
                );
              },child: Icon(Icons.calendar_month)),
            title: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CalendarApp()));
              },
              child: Text('CALENDAR'),
            ),
          ),
          // ListTile(
          //   leading: Icon(Icons.person_2_outlined),
          //   title: GestureDetector(
          //       onTap: () {
          //         Navigator.push(context,
          //             MaterialPageRoute(builder: (context) => ProfilePage()));
          //       },
          //       child: Text('PROFILE')),
          // ),
          ListTile(
            leading: Icon(Icons.share),
            title: GestureDetector( onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SharePage()));
                },child: Text('SHARE')),
          ),
          ListTile(
            leading: Icon(Icons.notifications_rounded),
            title: Text('NOTIFICATIONS'),
          ),
          ListTile(
            leading: GestureDetector(  onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WelcomePage()),
                );
              },child: Icon(Icons.settings)),
            title: GestureDetector(
            onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SettingsPage()));
                },
            child: Text('SETTINGS')),
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: GestureDetector(
              child: Text('SIGN OUT')),
          
            
          ),
        ],
      ),
    );
  }
}
