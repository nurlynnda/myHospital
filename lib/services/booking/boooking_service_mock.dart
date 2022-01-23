import '../../models/booking.dart';
import 'booking_service.dart';

class bookingServiceMock extends bookingService {
  final mockData = <Bookdata>[
    Bookdata(
        id: 001,
        doctor: 'Dr.Safiee',
        department: 'General Services',
        time: '10.00am'),
    Bookdata(
        id: 002,
        doctor: 'Dr.Phil',
        department: 'Gastroenterology',
        time: '12.00pm'),
    Bookdata(
        id: 002, doctor: 'Dr.Goh', department: 'Cardiology', time: '2.00pm'),
  ];

  @override
  Future<List<Bookdata>> fetchbooking() async {
    return [...mockData];
  }

  @override
  Future<Bookdata> getbooking(id) async {
    final item =
        mockData.firstWhere((element) => element.id == id, orElse: null);

    return Bookdata.copy(item);
  }
}
