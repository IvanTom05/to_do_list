// import 'package:flutter/material.dart';
// import 'package:to_do_list/constants/customAppBar.dart';
// import 'package:to_do_list/screens/Login.dart';
// import 'package:to_do_list/screens/navbar.dart';
// import 'package:to_do_list/screens/profile.dart';

// class SettingsPage extends StatefulWidget {
//   @override
//   _SettingsPageState createState() => _SettingsPageState();
// }

// class _SettingsPageState extends State<SettingsPage> {
//   bool _isNotificationEnabled = true;
//   bool darkModeEnabled = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: NavBar(),
//       // appBar: AppBar(
//       //   title: Text(
//       //     "Help",
//       //     style: TextStyle(
//       //       fontStyle: FontStyle.italic,
//       //       color: Color.fromARGB(255, 0, 0, 0),
//       //       fontWeight: FontWeight.bold,
//       //       fontSize: 40,
//       //     ),
//       //   ),
//       //   centerTitle: true, // Center align the title
//       // ),
//       body: ListView(
//         children: <Widget>[
//           ListTile(
//             title: Text('Profile'),
//             subtitle: Text('About'),
//             trailing: Icon(Icons.arrow_circle_right),
//             onTap: () {
//               Navigator.push(context,
//                   MaterialPageRoute(builder: (context) => ProfilePage()));
//             },
//           ),

//           // ListTile(
//           //   title: Text('Notifications'),
//           //   subtitle: Text('Enable or disable notifications'),
//           //   trailing: Switch(
//           //      value: _isNotificationEnabled,
//           //     onChanged: (value) {
//           //       setState(() {
//           //         _isNotificationEnabled = value;
//           //         // Perform actions based on the switch state
//           //         if (_isNotificationEnabled) {
//           //           // Enable notifications
//           //           // You can call a function to enable notifications here
//           //           // For demonstration purposes, let's print a message
//           //           print('Notifications enabled');
//           //         } else {
//           //           // Disable notifications
//           //           // You can call a function to disable notifications here
//           //           // For demonstration purposes, let's print a message
//           //           print('Notifications disabled');
//           //         }
//           //       });
//           //     },
//           //   ),
//           // ),

//           // ListTile(
//           //   title: Text('Language'),
//           //   subtitle: Text('Select your preferred language'),
//           //   trailing: Icon(Icons.arrow_forward),
//           //   onTap: () {
//           //     // Navigate to language settings page
//           //   },
//           // ),
//           // Add more sections here
//           // For example:
//           ListTile(
//             title: Text('Help'),
//             subtitle: Text('Contact us'),
//             trailing: Icon(Icons.question_mark),
//             onTap: () {
//               // Handle tap
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

import 'package:to_do_list/screens/navbar.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _isNotificationEnabled = true;
  bool darkModeEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: Text(
          "Help",
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Color.fromARGB(255, 0, 0, 0),
            fontWeight: FontWeight.bold,
            fontSize: 40,
          ),
        ),
        centerTitle: true, // Center align the title
      ),
      body: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Help ',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HelpWidgetDemo(),
      ),
    );
  }
}

class HelpWidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help '),
      ),
      body: Center(
        child: Text(
          'Tap the help button below for assistance! ABOUT THE APP-- This app is one of a kind .in the home page you find the calendar icon which would be used to select the specific dates for your plan you also find the delete button which would be used to delete items ',
          style: TextStyle(fontSize: 20.0),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Display help dialog
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Help'),
                content: Text(
                    'IF YOU NEED MORE CLARIFICATION CONTACT US ON (+233)5411-90367 '),
                actions: <Widget>[
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('Close'),
                  ),
                ],
              );
            },
          );
        },
        tooltip: 'Help',
        child: Icon(Icons.help),
      ),
    );
  }
}
