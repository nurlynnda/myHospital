import 'package:doctor_app/models/appointment.dart';
import 'package:flutter/material.dart';

import '../view.dart';
import 'appointment_viewmodel.dart';

class AppointmentTile extends StatelessWidget {
  const AppointmentTile(this.index);

  final int index;

  @override
  Widget build(BuildContext context) {
    return SelectorView<AppointmentViewModel, Appointment>(
        selector: (_, vm) => vm.getAppointment(index),
        builder: (_, vm, appointment, ___) {
          print('Build ListTile ');

          return Container(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Doctor: ${appointment.data.doctor}",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 26.0,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                "Clinic: ${appointment.clinic}",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 26.0,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                "Room: ${appointment.room}",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 26.0,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                "Specialist: ${appointment.data.department}",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 26.0,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                "Time available: ${appointment.data.time}",
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
