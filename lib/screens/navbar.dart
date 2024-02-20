import 'package:flutter/material.dart';
import 'package:to_do_list/screens/Login.dart';
import 'package:to_do_list/screens/calendar.dart';
import 'package:to_do_list/screens/notifications.dart';
import 'package:to_do_list/screens/profile.dart';
import 'package:to_do_list/screens/settings.dart';
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
  bool notificationsEnabled = false;
  bool darkModeEnabled = false;
  bool _isNotificationEnabled = false;
  final List<Widget?> _pages = [
    // Home(),

    WelcomePage(),
    CalendarApp(),
    ProfilePage(),
    SettingsPage(),
    NotificationSwitchPage()
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
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProfilePage()));
                },
                child: Image.asset(
                  "assets/images/logo.jpg",
                  height: 80,
                  width: 80,
                ),
              ),
            )),
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                image: DecorationImage(
                    image: AssetImage("assets/images/boby1.jpg"),
                    fit: BoxFit.cover)),
          ),
          ListTile(
            leading: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WelcomePage()),
                  );
                },
                child: Icon(Icons.home)),
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
            trailing: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CalendarApp()),
                  );
                },
                child: Icon(Icons.calendar_month)),
            title: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CalendarApp()));
              },
              child: Text('Calendar'),
            ),
            subtitle: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CalendarApp()));
                },
                child: Text('Dates')),
          ),
        
          ListTile(
            title: Text('Profile'),
            subtitle: Text('About'),
            trailing: Icon(Icons.arrow_circle_right),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfilePage()));
            },
          ),
          ListTile(
            title: Text('Help'),
            subtitle: Text('Contact us'),
            trailing: Icon(Icons.question_mark),
            onTap: () {Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SettingsPage()));
              
            },
          ),
          ListTile(
            title: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                child: Text('Sign out')),
            subtitle: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                child: Text('Log out')),
            trailing: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                child: Icon(Icons.logout)),
            onTap: () {
              // Handle tap
            },
          ),
          // ListTile(
          //   leading: Icon(Icons.logout),
          //   subtitle: Text('log out'),
          //   title: GestureDetector(
          //     child: Text('SIGN OUT')),

          // ),
        ],
      ),
    );
  }
}
