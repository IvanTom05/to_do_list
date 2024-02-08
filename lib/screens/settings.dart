import 'package:flutter/material.dart';
import 'package:to_do_list/constants/customAppBar.dart';
import 'package:to_do_list/screens/navbar.dart';
import 'package:to_do_list/screens/profile.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool notificationsEnabled = true;
  bool darkModeEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: cusAppBar(context),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Profile'),
            subtitle: Text('About'),
            trailing: Icon(Icons.arrow_circle_right),
            onTap: () {
              Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProfilePage()));
            },
            
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
            title: Text('Notifications'),
            subtitle: Text('Enable or disable notifications'),
            trailing: Switch(
              value: notificationsEnabled,
              onChanged: (value) {
                setState(() {
                  notificationsEnabled = value;
                });
                // Add logic to handle switch changes
              },
            ),
          ),
          ListTile(
            title: Text('Dark Mode'),
            subtitle: Text('Enable or disable dark mode'),
            trailing: Switch(
              value: darkModeEnabled,
              onChanged: (value) {
                setState(() {
                  darkModeEnabled = value;
                });
                // Add logic to handle switch changes
              },
            ),
          ),
          ListTile(
            title: Text('Language'),
            subtitle: Text('Select your preferred language'),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              // Navigate to language settings page
            },
          ),
          // Add more sections here
          // For example:
          ListTile(
            title: Text('Help'),
            subtitle: Text('Contact us'),
            trailing: Icon(Icons.question_mark),
            onTap: () {
              // Handle tap
            },
          ),

          // Add more sections as needed
        ],
      ),
    );
  }
}
