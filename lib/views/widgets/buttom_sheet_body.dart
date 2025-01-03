import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/add_note_form.dart';

class CustomButtomSheetBody extends StatelessWidget {
  const CustomButtomSheetBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: AddNoteForm(),
    );
  }
}
