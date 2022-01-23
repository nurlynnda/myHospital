import '../../models/booking.dart';

abstract class BookingService {
  Future<List<Bookdata>> fetchbooking();
  Future<Bookdata> getbooking(id);
}
