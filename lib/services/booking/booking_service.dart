import '../../models/booking.dart';

abstract class bookingService {
  Future<List<Bookdata>> fetchbooking();
  Future<Bookdata> getbooking(id);
}
