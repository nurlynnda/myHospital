import '../../models/booking.dart';
import '../../models/appointment.dart';

abstract class AppointmentService {
  Future<List<Appointment>> fetchAppointment();
  Future<Appointment> getAppointment(id);
}
