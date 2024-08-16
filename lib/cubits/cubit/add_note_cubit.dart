import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  Color color = const Color(0xffe3655b);
  AddNote(NoteModel note) async {
    note.color = color!.value;
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
