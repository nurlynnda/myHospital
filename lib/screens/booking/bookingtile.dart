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
          print('Build ListTile ');
          return Center(
            child: Container(
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    color: Colors.cyan[800],
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(1),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      )
                    ]),
                width: double.infinity,
                height: 100,
                child: Column(
                  children: [
                    Text(
                      "Doctor: ${booking.doctor} \nID: ${booking.id} \nSpecialist: ${booking.department} \nTime available: ${booking.time}",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                )),
          );
        });
  }
}
