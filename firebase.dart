// Helper  functions for firebase

import 'package:cloud_firestore/cloud_firestore.dart';

class Firestore {
  final _firestore = FirebaseFirestore.instance;

  // path is a full path, e.g,
  // '$collectionId/$documentId'
  CollectionReference collection(String path) => _firestore.collection(path);
  DocumentReference document(String path) => _firestore.doc(path);
}
