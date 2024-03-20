import 'package:flutter/material.dart';

class TimeSelectionGrid extends StatelessWidget {
  final List<String> timings = [
    '9:00 AM',
    '10:00 AM',
    '11:00 AM',
    '12:00 PM',
    '1:00 PM',
    '2:00 PM',
    '3:00 PM',
    '4:00 PM',
    '5:00 PM',
    '6:00 PM',
    '7:00 PM',
    '8:00 PM',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          // crossAxisSpacing: 8.0,
          // mainAxisSpacing: 8.0,
        ),
        itemCount: timings.length,
        padding: EdgeInsets.all(6.0),
        itemBuilder: (context, index) {
          return TimeSlotCard(time: timings[index]);
        },
      ),
    );
  }
}

class TimeSlotCard extends StatefulWidget {
  final String time;

  const TimeSlotCard({required this.time});

  @override
  _TimeSlotCardState createState() => _TimeSlotCardState();
}

class _TimeSlotCardState extends State<TimeSlotCard> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
        // Add your onTap logic here
        print('Selected time: ${widget.time}');
      },
      child: Card(
        elevation: 0, // No elevation
        color: isSelected ? Colors.white : Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
              10), // Set borderRadius to BorderRadius.zero
          side: BorderSide(color: Colors.white), // Add border side
        ),
        child: Padding(
          padding: EdgeInsets.all(2.0),
          child: Center(
            child: Text(
              widget.time,
              style: TextStyle(
                color: isSelected ? Colors.black : Colors.white,
                fontWeight: FontWeight.w100,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
