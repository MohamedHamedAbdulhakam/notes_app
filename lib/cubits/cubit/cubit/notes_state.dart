part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

class NotesInitial extends NotesState {}

// final class NotesLoading extends NotesState {}

class NotesSuccess extends NotesState {
//   final List<NoteModel> notes;

//   NotesSuccess(this.notes);
}
