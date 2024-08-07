import 'package:flutter/material.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return const EditNoteView();
            }),
          );
        },
        child: Container(
          decoration: BoxDecoration(
              color: Color(0xffc6c07b),
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
                  title: const Text(
                    'Flutter Tips',
                    style: TextStyle(color: Colors.black, fontSize: 26),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Text(
                      'Build your career with thrawt samy',
                      style: TextStyle(
                          color: Colors.black.withOpacity(.5), fontSize: 18),
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {},
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
                  'may21 ,  2022',
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
