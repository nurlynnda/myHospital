import 'package:doctor_app/screens/appointment/appointmentbody.dart';
import 'package:flutter/material.dart';
import '../home/bottombar.dart';

class AppointmentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[50],
      appBar: AppBar(
        backgroundColor: Colors.cyan[200],
        title: Text('Appointment'),
      ),
      body: AppointmentBodyPage(),
      bottomNavigationBar: BottomNavigation(
        select: Menu.appointment,
      ),
    );
  }
}
