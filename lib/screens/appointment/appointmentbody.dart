import 'package:doctor_app/models/appointment.dart';
import 'package:doctor_app/screens/view.dart';
import 'package:flutter/material.dart';
import 'package:doctor_app/screens/appointment/appointment_viewmodel.dart';

import 'appointmenttile.dart';

class AppointmentBodyPage extends StatelessWidget {
  /*  const AppointmentBodyPage({Key ? key}) : super(key: key); */

  @override
  Widget build(BuildContext context) {
    return SelectorView<AppointmentViewModel, int>(
        selector: (_, vm) => vm.dataCount,
        builder: (_, vm, __, ___) {
          print('Build ListView');
          return ListView.separated(
            itemCount: vm.dataCount,
            separatorBuilder: (_, __) => Divider(
              color: Colors.black,
            ),
            itemBuilder: (_, index) => AppointmentTile(index),
          );
        });
  }
}
