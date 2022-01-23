import '../../models/booking.dart';
import '../../models/appointment.dart';

abstract class appointmentService {
  Future<List<Appointment>> fetchAppointment();
  Future<Appointment> getAppointment(id);
}
