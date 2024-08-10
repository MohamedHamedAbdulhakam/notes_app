import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/cubit/cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return EditNoteView(
                note: note,
              );
            }),
          );
        },
        child: Container(
          decoration: BoxDecoration(
              color: Color(note.color),
              borderRadius: BorderRadius.circular(16)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 24,
                  left: 24,
                ),
                child: ListTile(
                  title: Text(
                    note.Title,
                    style: const TextStyle(color: Colors.black, fontSize: 26),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Text(
                      note.SubTitle,
                      style: TextStyle(
                          color: Colors.black.withOpacity(.5), fontSize: 18),
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      note.delete();
                      BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                    },
                    icon: const Icon(
                      Icons.delete,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 24, bottom: 16),
                child: Text(
                  note.Date,
                  style: TextStyle(
                      color: Colors.black.withOpacity(.4), fontSize: 16),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
