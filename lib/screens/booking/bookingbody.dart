import 'package:doctor_app/models/booking.dart';
import 'package:doctor_app/screens/view.dart';
import 'package:flutter/material.dart';
import 'package:doctor_app/screens/booking/booking_viewmodel.dart';

import 'bookingtile.dart';

class BookingBodyPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return SelectorView<bookingViewModel, int>(
        selector: (_, vm) => vm.dataCount,
        builder: (_, vm, __, ___) {
          print('Build ListView');

          return ListView.separated(
            itemCount: vm.dataCount,
            separatorBuilder: (_, __) => Divider(
              color: Colors.black,
            ),
            itemBuilder: (_, index) => BookingTile(index),
          );
        });
  }
}
