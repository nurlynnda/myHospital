import 'dart:async';

import 'package:doctor_app/app/service_locator.dart';
import 'package:doctor_app/models/user.dart';
import 'package:doctor_app/services/user/user_repository.dart';

import '../../app/service_locator.dart';
import '../user/user_repository.dart';
import '../../models/user.dart';
import '../../models/profile.dart';

abstract class ProfileService {
  final UserRepository _userRepository = locator();
  User get user => _userRepository.user;

  Future<List<Profile>> fetchProfile();
  Future<Profile> getProfile(id);
  // Future<Profile> updateProfile({ic, Profile data});
  // Future<void> removeProfile(id);
  // Future<Profile> addProfile(Profile data);

  Stream get stream => null;

  StreamSubscription observeStream(
      {Function(dynamic) onData, Function onError, Function onDone}) {
    if (stream == null) return null;

    // in case the service also supports stream (like firestore), prepare a listener
    return stream.listen(onData, onError: onError, onDone: onDone);
  }
  // StreamSubscription observeStream(
  //     {Function(dynamic) onData, Function onError, Function onDone}) {
  //   if (stream == null) return null;

  //   return stream.listen
  // }
}
