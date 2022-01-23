import 'package:doctor_app/app/service_locator.dart';
import 'package:doctor_app/models/booking.dart';
import 'package:doctor_app/screens/viewmodel.dart';
import 'package:doctor_app/services/booking/booking_service.dart';
import 'package:doctor_app/services/booking/booking_service.dart';
//import 'package:doctor_app/services/booking/booking_service_mock.dart';
import 'booking_page.dart';
import 'bookingbody.dart';

class BookingViewModel extends Viewmodel {
  final _service = locator<BookingService>();

  late List<Bookdata> _list;

  Bookdata? getbooking(int index) => _list == null ? null : _list[index];
  int get dataCount => _list == null ? 0 : _list.length;

  @override
  init() => update(() async {
        _list = await _service.fetchbooking();
        super.init();
      });
}
