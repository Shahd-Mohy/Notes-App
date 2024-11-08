import 'package:notes_app/models/note_model.dart';

abstract class NoteState {}

class NoteInitial extends NoteState {}

class NoteLoading extends NoteState {}

class NotesSuccess extends NoteState {
  final List<NoteModel> notes;

  NotesSuccess(this.notes);
}

class NotesFailer extends NoteState {
  NotesFailer(String string);
}
