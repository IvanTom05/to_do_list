import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:table_calendar/table_calendar.dart';
import 'package:to_do_list/constants/customAppBar.dart';
import 'package:to_do_list/screens/navbar.dart';

void main() {
  runApp(CalendarApp());
}

class CalendarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calendar',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: CalendarScreen(),
    );
  }
}

class CalendarScreen extends StatefulWidget {
  @override
  _CalendarScreenState createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: cusAppBar(context),
      body: Center(
        child: Column(
          children: [
            TableCalendar(locale: "en_US",
              headerStyle: HeaderStyle(formatButtonVisible: false ,titleCentered:true ),
              availableGestures: AvailableGestures.all,
              calendarFormat: _calendarFormat,
              rowHeight: 52,
              daysOfWeekHeight: 20,
              focusedDay: _focusedDay,
              firstDay: DateTime(2010),
              lastDay: DateTime(2050),
              selectedDayPredicate: (day) {
                return isSameDay(_selectedDay, day);
              },
              onDaySelected: (
                selectedDay,
                focusedDay,
              ) {
                setState(() {
                  _selectedDay = selectedDay;
                  _focusedDay = focusedDay;
                });
              },
              onPageChanged: (
                focusedDay,
              ) {
                _focusedDay = focusedDay;
              },
            ),
          ],
        ),
      ),
    );
  }
}
