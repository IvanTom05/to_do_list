import 'package:flutter/material.dart';

class NotificationSwitchPage extends StatefulWidget {
  @override
  _NotificationSwitchPageState createState() => _NotificationSwitchPageState();
}

class _NotificationSwitchPageState extends State<NotificationSwitchPage> {
  bool _isNotificationEnabled = false; // Initial state of the notification switch

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notification Settings'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Receive Notifications',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Switch(
              value: _isNotificationEnabled,
              onChanged: (value) {
                setState(() {
                  _isNotificationEnabled = value;
                  // Perform actions based on the switch state
                  if (_isNotificationEnabled) {
                    // Enable notifications
                    // You can call a function to enable notifications here
                    // For demonstration purposes, let's print a message
                    print('Notifications enabled');
                  } else {
                    // Disable notifications
                    // You can call a function to disable notifications here
                    // For demonstration purposes, let's print a message
                    print('Notifications disabled');
                  }
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: NotificationSwitchPage(),
  ));
}
