import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../domain/notes_repository.dart';

class NotesRepositoryImpl implements NotesRepository {
  final FirebaseFirestore firestore;
  final FirebaseAuth auth;

  NotesRepositoryImpl(this.firestore, this.auth);

  CollectionReference get notesRef => firestore
      .collection('users')
      .doc(auth.currentUser!.uid)
      .collection('notes');

  @override
  Future<void> addNote(String title, String body) async {
    // token refresh
    await auth.currentUser?.getIdToken(true);

    await notesRef.add({
      'title': title,
      'body': body,
      'user': auth.currentUser!.email,
      'createdAt': Timestamp.now(),
      'updatedAt': Timestamp.now(),
    });
  }

  @override
  Future<void> deleteNote(String id) async {
    await notesRef.doc(id).delete();
  }

  @override
  Future<void> updateNote(String id, String title, String body) async {
    await notesRef.doc(id).update({
      'title': title,
      'body': body,
      'updatedAt': Timestamp.now(),
    });
  }
}