import 'package:doctor_app/services/booking/boooking_service_mock.dart';

import '../../models/booking.dart';
import '../../models/appointment.dart';
import 'appointment_service.dart';
import '../../services/booking/booking_service.dart';

class AppointmentServiceMock extends AppointmentService {
  late BookingServiceMock doctor;

  final mockData = <Appointment>[
    Appointment(Bookdata(doctor: 'dsa', department: 'dsafvsd', time: 'dsaa'),
        id: 001, clinic: 'Klinik Haiwan', room: 'ABC'),
  ];

  @override
  Future<List<Appointment>> fetchAppointment() async {
    return [...mockData];
  }

  @override
  Future<Appointment> getAppointment(id) async {
    final item =
        mockData.firstWhere((element) => element.id == id, orElse: null);

    return Appointment.copy(item);
  }
}
