abstract class NotesRepository {
  Future<void> addNote(String title, String body);
  Future<void> deleteNote(String id);
  Future<void> updateNote(String id, String title, String body);
}