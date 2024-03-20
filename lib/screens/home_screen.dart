import 'package:appointment_booking_app/widgets/book_now_button.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_calendar.dart';
import '../widgets/horizontal_scroll_widget.dart';
import '../widgets/image_with_text.dart';
import '../widgets/time_selection_grid.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(children: [
        
          ImageWithText(),
          //SizedBox(height: 20)
          SizedBox(height: 20),

          //Text(Choose date)
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Choose Date',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          
          SizedBox(height: 10),

          CustomCalendar(),

          //Text(Choose Service)
          SizedBox(height: 20),

          //Text(Choose date)
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Choose Service',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
         
          SizedBox(height: 16),

          HorizontalScrollWidget(),

          Padding(
            padding: EdgeInsets.only(left: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Available Time',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),

          SizedBox(height: 14),

          TimeSelectionGrid(),

          SizedBox(height: 14),

          BookNowButton(),

        
         
        ]),
      ),
    );
  }
}






