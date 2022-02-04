// @dart=2.9

import 'dart:async';
import 'package:doctor_app/models/profile.dart';
import 'package:uuid/uuid.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:doctor_app/services/firebase.dart';
import 'booking_service.dart';
import '../../models/booking.dart';

class BookingServiceFirestore extends BookingService {
  // static const String _userId = 'hm2leHyBDdYoMxF8hyqceJrs9rF2';
  String get _userId => 'eis2dxnDzEA83qjgySqG';
  final _idGenerator = Uuid();
  final _firestore = Firestore();

  CollectionReference get _collection => _firestore
      .collection('numbers/$_userId/items'); // use path style to reference
  // _firestore.collection('numbers').doc(_userId).collection('numbers'); // alternative reference

  DocumentReference _getNumberDocument(numberId) => _firestore.document(
      'appoinment/$_userId/items/$numberId'); // use path style to reference

  @override
  Stream get stream => _collection.snapshots();

   @override
   Future<List<Bookdata>> fetchbooking() async {
     final snapshot = await _collection.get();
     return snapshot.docs.map((doc) {
       final number = Bookdata.fromJson(doc.data()).copyWith(
           id: doc
               .id); // transform data. Field id might be null, so take the doc id instead
       return number;
     }).toList();
   }

   @override
   Future<Bookdata> getbooking(id) async {
     final n = await _getNumberDocument(id).get();
     return Bookdata.fromJson(n.data());
   }
 }
