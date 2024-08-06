import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  AddNote(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      var notebox = Hive.box<NoteModel>(kNoteBox);

      await notebox.add(note);
      emit(AddNoteSucess());
    } catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
}
