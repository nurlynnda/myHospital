import 'package:doctor_app/app/service_locator.dart';
import 'package:doctor_app/models/appointment.dart';
import 'package:doctor_app/screens/viewmodel.dart';
import 'package:doctor_app/services/appointment/appointment_service.dart';
import 'package:doctor_app/services/appointment/appointment_service.dart';
//import 'package:doctor_app/services/appointment/appointment_service_mock.dart';

import '';

class appointmentViewModel extends Viewmodel {
  final _service = locator<appointmentService>();

  late List<Appointment> _list;

  Appointment? getAppointment(int index) => _list == null ? null : _list[index];
  int get dataCount => _list == null ? 0 : _list.length;

  @override
  init() => update(() async {
        _list = await _service.fetchAppointment();
        super.init();
      });
}
