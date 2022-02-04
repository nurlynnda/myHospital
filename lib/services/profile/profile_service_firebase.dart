// @dart=2.9

import 'dart:async';
import 'package:uuid/uuid.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

import '../firebase.dart';
import 'profile_service.dart';
import '../../models/profile.dart';

class ProfileServiceFirestore extends ProfileService {
  // static const String _userId = 'hm2leHyBDdYoMxF8hyqceJrs9rF2';
  String get _userId => user.uid;
  final _idGenerator = Uuid();
  final _firestore = Firestore();

  CollectionReference get _collection =>
      _firestore.collection('profiles/$_userId/Items');

  // _firestore.collection('numbers').doc(_userId).collection('numbers'); // alternative reference

  DocumentReference _getProfileDocument(_userId) => _firestore.document(
      'profiles/$_userId/Items/$_userId'); // use path style to reference

  @override
  Stream get stream => _collection.snapshots();

  @override
  Future<List<Profile>> fetchProfile() async {
    final snapshot = await _collection.get();
    return snapshot.docs.map((doc) {
      final profile = Profile.fromJson(doc.data()).copyWith(
          id: doc
              .id); // transform data. Field id might be null, so take the doc id instead
      return profile;
    }).toList();
  }

  @override
  Future<Profile> getProfile(id) async {
    final n = await _getProfileDocument(id).get();
    return Profile.fromJson(n.data());
  }

  @override
  Future<Profile> updateNumber({id, Profile data}) async {
    final update = data.copyWith(id: id);
    await _getProfileDocument(id).update(update.toJson());
    return update;
  }

  @override
  Future<void> deleteNumber(id) async {
    await _getProfileDocument(id).delete();
  }

  @override
  Future<Profile> addNumber(Profile data) async {
    final _id = _idGenerator.v1(); // Generate time-based id
    final _data = data.copyWith(id: _id); // add generated id the data
    await _collection.doc('$_id').set(_data.toJson());
    return _data;
  }
}
