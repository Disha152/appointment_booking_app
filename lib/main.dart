import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(AppointmentBookingApp());
}

class AppointmentBookingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: HomeScreen(),
    );
  }
}
