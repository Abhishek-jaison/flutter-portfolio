import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  //get the form details
  final CollectionReference notes =
      FirebaseFirestore.instance.collection('notes');

  Future<void> addNote(String firstname, String lastname, String emailaddress,
      String phone, String? choice,String message) {
    return notes.add({
      'first name': firstname,
      'last name': lastname,
      'email address': emailaddress,
      'phone': phone,
      'choice': choice,
      'message': message,
      'time': Timestamp.now()
    });
  }
}
