import 'package:doctor_app/app/service_locator.dart';
import 'package:doctor_app/models/profile.dart';
import 'package:doctor_app/screens/viewmodel.dart';
import 'package:doctor_app/services/profile/profile_service.dart';
import 'package:doctor_app/services/profile/profile_service_mock.dart';
import 'profile_page.dart';
import 'profilebody.dart';
import '';

class ProfileViewModel extends Viewmodel {
  final _service = locator<ProfileService>();

  late Profile _list;

  Profile? getProfile() => _list;
  //int get dataCount => _list == null ? 0 : _list.length;

  @override
  init() => update(() async {
        _list = await _service.fetchProfile();
        super.init();
      });
}
