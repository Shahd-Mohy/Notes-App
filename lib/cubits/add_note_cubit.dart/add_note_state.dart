
abstract class AddNoteState {}

class AddNoteInitial extends AddNoteState {}

class AddNoteLoading extends AddNoteState {}

class AddNotesSuccess extends AddNoteState {}

class AddNotesFailer extends AddNoteState{
  final String message;

  AddNotesFailer(this.message);
}