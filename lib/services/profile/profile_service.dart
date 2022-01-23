import '../../models/profile.dart';

abstract class ProfileService {
  Future<Profile> fetchProfile();
  Future<Profile> getProfile();
  // Future<Profile> updateProfile({ic, Profile data});
  // Future<void> removeProfile(id);
  // Future<Profile> addProfile(Profile data);
}
