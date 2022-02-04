import 'package:doctor_app/screens/appointment/appointment.dart';
import 'package:doctor_app/screens/booking/booking_page.dart';
import 'package:doctor_app/screens/home/homescreen.dart';
import 'package:flutter/material.dart';
import '../profile/profile_page.dart';
import 'package:doctor_app/models/profile.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key key, this.select}) : super(key: key);

  final Menu select;

  @override
  Widget build(BuildContext context) {
    final Color inActive = Colors.grey;

    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(color: Colors.cyan[200], boxShadow: [
        BoxShadow(offset: Offset(0, -10), blurRadius: 5, color: Colors.grey),
      ]),
      child: SafeArea(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            color:
                Menu.home == select ? Color.fromARGB(255, 4, 5, 6) : inActive,
            icon: Icon(
              Icons.home,
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return HomePage();
                },
              ));
            },
          ),
          IconButton(
            color: Menu.booking == select
                ? Color.fromARGB(255, 4, 5, 6)
                : inActive,
            icon: Icon(
              Icons.event,
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return BookingPage();
                },
              ));
            },
          ),
          IconButton(
            color: Menu.appointment == select
                ? Color.fromARGB(255, 4, 5, 6)
                : inActive,
            icon: Icon(
              Icons.checklist,
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return AppointmentPage();
                },
              ));
            },
          ),
          IconButton(
            color: Menu.profile == select
                ? Color.fromARGB(255, 4, 5, 6)
                : inActive,
            icon: Icon(
              Icons.person,
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return ProfilePage();
                },
              ));
            },
          ),
        ],
      )),
    );
  }
}

enum Menu {
  home,
  profile,
  appointment,
  booking,
}
