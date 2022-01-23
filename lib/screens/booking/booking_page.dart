import 'package:doctor_app/screens/booking/bookingbody.dart';
import 'package:flutter/material.dart';
import '../home/bottombar.dart';

class BookingPage extends StatelessWidget {
  // const BookingPage(this.data);
  // final int data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[200],
        title: Text('Booking'),
      ),
      body: BookingBodyPage(),
      bottomNavigationBar: BottomNavigation(
        select: Menu.booking,
      ),
    );
  }
}
