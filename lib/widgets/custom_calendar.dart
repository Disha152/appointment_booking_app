import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; 
import 'package:table_calendar/table_calendar.dart';

class CustomCalendar extends StatefulWidget {
  const CustomCalendar({super.key});

  @override
  State<CustomCalendar> createState() => _CustomCalendarState();
}

class _CustomCalendarState extends State<CustomCalendar> {

  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _selectedDay = DateTime.now();
  DateTime _focusedDay = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
             color: Color.fromARGB(255, 32, 29, 29),
    borderRadius: BorderRadius.circular(50)), // Adjust the radius as needed
  
         
          padding: EdgeInsets.all(5.0),
          width: 300,

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back_ios_new),
                color: Colors.white,
                onPressed: () {
                  setState(() {
                    _focusedDay = DateTime(
                      _focusedDay.year,
                      _focusedDay.month - 1,
                    );
                  });
                },
              ),
              Text(
                '${DateFormat.yMMM().format(_focusedDay)}',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              IconButton(
                icon: Icon(Icons.arrow_forward_ios),
                color: Colors.white,
                onPressed: () {
                  setState(() {
                    _focusedDay = DateTime(
                      _focusedDay.year,
                      _focusedDay.month + 1,
                    );
                  });
                },
              ),
            ],
          ),
        ),
        TableCalendar(
          calendarFormat: _calendarFormat,
          focusedDay: _focusedDay,
          firstDay: DateTime.utc(2022, 1, 1),
          lastDay: DateTime.utc(2030, 12, 31),
          startingDayOfWeek: StartingDayOfWeek.sunday, // Start with Sunday
          availableCalendarFormats: {
            CalendarFormat.month: '',
          },
          headerStyle: HeaderStyle(
            titleTextStyle: TextStyle(color: Colors.transparent,fontSize: 0.5),
            formatButtonVisible: false,
          ),
          calendarStyle: CalendarStyle(
            defaultTextStyle: TextStyle(color: Colors.white),
            weekendTextStyle: TextStyle(color: Colors.white),
            holidayTextStyle: TextStyle(color: Colors.white),
            outsideTextStyle: TextStyle(color: Color.fromARGB(193, 66, 64, 64)),
            selectedDecoration: BoxDecoration(
              color: Colors.white, // Change selected day circle color to green
              shape: BoxShape.circle,
            ),
            selectedTextStyle: TextStyle(color: Colors.black),
          ),
          daysOfWeekStyle: DaysOfWeekStyle(
            weekdayStyle: TextStyle(color: Colors.white),
            weekendStyle: TextStyle(color: Colors.white),
          ),
          selectedDayPredicate: (day) {
            return isSameDay(_selectedDay, day);
          },
          onDaySelected: (selectedDay, focusedDay) {
            setState(() {
              _selectedDay = selectedDay;
              _focusedDay = focusedDay;
            });
            print('Selected Day: $_selectedDay');
          },
        ),
      ],
    );
  }
}
