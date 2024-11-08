import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/notes_cubit/notes_states.dart';
import 'package:notes_app/models/note_model.dart';

class NotesCubit extends Cubit<NoteState> {
  NotesCubit() : super(NoteInitial());

  fetchAllNotes() async {
    {
      
      try {
        var notesBox = Hive.box<NoteModel>(kNotesBox);
        List<NoteModel> notes = notesBox.values.toList();
        emit(NotesSuccess(notes));
      } catch (e) {
        emit(NotesFailer(e.toString()));
      }
    }
  }
}
