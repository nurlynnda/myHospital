//@dart=2.9
import 'dart:async';

import 'package:doctor_app/app/service_locator.dart';
import 'package:doctor_app/models/profile.dart';
import 'package:doctor_app/models/user.dart';
import 'package:doctor_app/screens/viewmodel.dart';
import 'package:doctor_app/services/profile/profile_service.dart';
import 'package:doctor_app/services/user/user_repository.dart';

class ProfileViewModel extends Viewmodel {
  Profile _list;

  final ProfileService _service = locator();
  StreamSubscription _streamObserver;
  bool get isObservingStream => _streamObserver != null;

  //final _service = locator<ProfileService>();

  final UserRepository _userRepository = locator();
  User get user => _userRepository.user;

  ProfileViewmodel() {
    _userRepository.addListener(() {
      if (user == null) {
        _list = null;
      } else {
        init();
      }
      notifyListeners();
    });
  }

  //@override
  Profile getProfile(int index) => _list;
  //int get dataCount => _list == null ? 0 : _list.length;

  // @override
  // init() => update(() async {
  //       _list = (await _service.fetchProfile()) as Profile;
  //       super.init();
  //     });
}
