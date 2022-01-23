// Turn of null-safety by writing the following line
// @dart=2.9

import 'package:doctor_app/screens/appointment/appointment_viewmodel.dart';
import 'package:doctor_app/screens/booking/booking_viewmodel.dart';
import 'package:doctor_app/screens/profile/profile_viewmodel.dart';
import 'package:doctor_app/services/appointment/appointment_service.dart';
import 'package:doctor_app/services/appointment/appointment_service_mock.dart';
import 'package:get_it/get_it.dart';

//import '../screens/profile/profile_viewmodel.dart';
import '../services/booking/booking_service.dart';
import '../services/booking/boooking_service_mock.dart';

//import '../services/rest.dart';
import '../services/profile/profile_service_mock.dart';
import '../services/profile/profile_service.dart';
//import '../services/book/book_service_rest.dart';

GetIt locator = GetIt.instance;

void initializeServiceLocator() {
  //Services
  // locator.registerLazySingleton<RestService>(
  //     () => RestService(baseUrl: 'localhost'));

  //TODO To switch between service, comment out the line below accordingly
  locator.registerLazySingleton<ProfileService>(() => ProfileServiceMock());
  locator.registerLazySingleton<BookingService>(() => BookingServiceMock());
  locator.registerLazySingleton<AppointmentService>(
      () => AppointmentServiceMock());
  // Viewmodels
  locator.registerLazySingleton<ProfileViewModel>(() => ProfileViewModel());
  locator.registerLazySingleton<BookingViewModel>(() => BookingViewModel());
  locator.registerLazySingleton<AppointmentViewModel>(
      () => AppointmentViewModel());
}
