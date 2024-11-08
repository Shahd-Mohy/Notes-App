
abstract class AddNoteState {}

class AddNoteInitial extends AddNoteState {}

class AddNoteLoading extends AddNoteState {}

class AddNotesSuccess extends AddNoteState {
  // final String errMessage;

  // AddNotesSuccess(this.errMessage);
}

class AddNotesFailer extends AddNoteState{
  AddNotesFailer(String string);
}