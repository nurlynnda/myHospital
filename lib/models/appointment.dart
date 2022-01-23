//@dart=2.9
import 'booking.dart';

class Appointment {
  dynamic id;
  String clinic;
  String room;
  Bookdata data;

  Appointment(this.data, {this.clinic = '', this.id = '', this.room = ''});

  Appointment.copy(from)
      : this(Bookdata.copy(from.data),
            id: from.id, clinic: from.clinic, room: from.room);
}
