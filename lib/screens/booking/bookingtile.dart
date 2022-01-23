import 'package:doctor_app/models/booking.dart';
import 'package:flutter/material.dart';

import '../view.dart';
import 'booking_viewmodel.dart';

class BookingTile extends StatelessWidget {
  const BookingTile(this.index);

  final int index;

  @override
  Widget build(BuildContext context) {
    return SelectorView<BookingViewModel, Bookdata>(
        selector: (_, vm) => vm.getbooking(index),
        builder: (_, vm, booking, ___) {
          onTap:
          () {};
          print('Build ListTile ');
          return Container(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Doctor: ${booking.doctor}",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 26.0,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                "ID: ${booking.id}",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 26.0,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                "Specialist: ${booking.department}",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 26.0,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                "Time available: ${booking.time}",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 26.0,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ));
        });
  }
}
