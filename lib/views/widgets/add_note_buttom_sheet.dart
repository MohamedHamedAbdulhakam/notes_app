import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/cubits/cubit/add_note_cubit.dart';
import 'package:notes_app/views/widgets/add_note_form.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});
  // bool isloading = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNoteFailure) {
              print('failed  ${state.ErrorMessage}');
            }
            if (state is AddNoteSucess) {
              Navigator.pop(context);
            }

            // TODO: implement listener
          },
          builder: (context, state) {
            return ModalProgressHUD(
                inAsyncCall: State is AddNoteLoading ? true : false,
                child: AddNoteForm());
          },
        ),
      ),
    );
  }
}
